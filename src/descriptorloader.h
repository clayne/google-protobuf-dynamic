#ifndef _GPD_XS_DESCRIPTORLOADER_INCLUDED
#define _GPD_XS_DESCRIPTORLOADER_INCLUDED

#include "perl_unpollute.h"

#include "sourcetree.h"

#include <google/protobuf/compiler/importer.h>

namespace gpd {

// a reimplementation of Importer, with a different DescriptorPool
class DescriptorLoader {
    class CollectMultiFileErrors : public google::protobuf::compiler::MultiFileErrorCollector {
    public:
        virtual void AddError(const std::string &filename, int line, int column, const std::string &message);
        virtual void AddWarning(const std::string &filename, int line, int column, const std::string &message);

        void maybe_croak();

    private:
        std::string errors;
    };

public:
    DescriptorLoader();
    ~DescriptorLoader();

    const google::protobuf::FileDescriptor *load_proto(const std::string &filename);
    const std::vector<const google::protobuf::FileDescriptor *> load_serialized(const char *buffer, size_t length);

    inline const google::protobuf::DescriptorPool *pool() const {
        return &merged_pool;
    }

    void map_disk_path(const std::string &virtual_path, const std::string &disk_path) {
        disk_source_tree.MapPath(virtual_path, disk_path);
    }

    void add_memory_file(const std::string &file_name, const char *data, size_t length) {
        memory_source_tree.AddFile(file_name, data, length);
    }

    void maybe_croak() {
        multifile_error_collector.maybe_croak();
    }

private:
    CollectMultiFileErrors multifile_error_collector;
    OverlaySourceTree overlay_source_tree;
    MemorySourceTree memory_source_tree;
    google::protobuf::compiler::DiskSourceTree disk_source_tree;
    google::protobuf::compiler::SourceTreeDescriptorDatabase source_database;
    google::protobuf::SimpleDescriptorDatabase binary_database;
    google::protobuf::DescriptorPoolDatabase generated_database;
    google::protobuf::MergedDescriptorDatabase merged_source_binary_database;
    google::protobuf::DescriptorPool merged_pool;
};

}
#endif
