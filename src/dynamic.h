#ifndef _GPD_XS_DYNAMIC_INCLUDED
#define _GPD_XS_DYNAMIC_INCLUDED

#include "perl_unpollute.h"

#include <google/protobuf/compiler/importer.h>

#include "upb/bridge.h"

#include "pb/decoder.h"

#include "descriptorloader.h"
#include "sourcetree.h"
#include "ref.h"

#include "unordered_map.h"

#include "EXTERN.h"
#include "perl.h"

namespace gpd {

class Mapper;
class MethodMapper;
class ServiceDef;

struct MappingOptions {
    enum BoolStyle {
        Perl = 1,
        Numeric = 2,
        JSON = 3,
    };

    enum AccessorStyle {
        GetAndSet = 1,
        PlainAndSet = 2,
        SingleAccessor = 3,
        Plain = 4,
    };

    enum ClientService {
        Disable = 0,
        Noop = 1,
        GrpcXS = 2,
    };

    enum Decoder {
        Upb = 0,
        Bbpb = 1,
    };

    bool use_bigints;
    bool check_required_fields;
    bool explicit_defaults;
    bool encode_defaults;
    bool encode_defaults_proto3;
    bool check_enum_values;
    bool generic_extension_methods;
    bool implicit_maps;
    bool decode_blessed;
    bool fail_ref_coercion;
    bool no_redefine_perl_names;
    BoolStyle boolean_style;
    AccessorStyle accessor_style;
    ClientService client_services;
    Decoder default_decoder;
    SV *stack_trace;

    MappingOptions(pTHX_ SV *options_ref);
};

class Dynamic : public Refcounted {
    class CollectErrors : public google::protobuf::compiler::MultiFileErrorCollector {
        virtual void AddError(const std::string &filename, int line, int column, const std::string &message);
    };

public:
    Dynamic(const std::string &root_directory);
    ~Dynamic();

    void load_file(pTHX_ const std::string &file);
    void load_string(pTHX_ const std::string &file, SV *string);
    void load_serialized_string(pTHX_ SV *sv);

    void map_message(pTHX_ const std::string &message, const std::string &perl_package, const MappingOptions &options);
    void map_package(pTHX_ const std::string &pb_package, const std::string &perl_package_prefix, const MappingOptions &options);
    void map_package_prefix(pTHX_ const std::string &pb_prefix, const std::string &perl_package_prefix, const MappingOptions &options);
    void map_message_prefix(pTHX_ const std::string &message, const std::string &perl_package_prefix, const MappingOptions &options);
    void map_enum(pTHX_ const std::string &enum_name, const std::string &perl_package, const MappingOptions &options);
    void map_service(pTHX_ const std::string &service_name, const std::string &perl_package, const MappingOptions &options);
    void map_wkts(pTHX_ const MappingOptions &options);
    void resolve_references();

    const Mapper *find_mapper(const upb::MessageDef *message_def) const;

    static bool is_proto3() {
        return GOOGLE_PROTOBUF_VERSION >= 3000000;
    }

    static bool has_proto3_optional() {
        return GOOGLE_PROTOBUF_VERSION >= 3012000;
    }

private:
    void add_file_recursively(pTHX_ const google::protobuf::FileDescriptor *file);
    void map_package_or_prefix(pTHX_ const std::string &pb_package, bool is_prefix, const std::string &perl_package_prefix, const MappingOptions &options);
    void map_message_recursive(pTHX_ const google::protobuf::Descriptor *descriptor, const std::string &perl_package, const MappingOptions &options);
    void map_message_prefix_recursive(pTHX_ const google::protobuf::Descriptor *descriptor, const std::string &perl_package_prefix, const MappingOptions &options, STD_TR1::unordered_set<std::string> &recursed_names);
    void map_message(pTHX_ const google::protobuf::Descriptor *descriptor, const std::string &perl_package, const MappingOptions &options);
    void bind_message(pTHX_ const std::string &perl_package, Mapper *mapper, const google::protobuf::Descriptor *descriptor, HV *stash, const MappingOptions &options);
    void map_enum(pTHX_ const google::protobuf::EnumDescriptor *descriptor, const std::string &perl_package, const MappingOptions &options);
    void bind_enum(pTHX_ const std::string &perl_package, const google::protobuf::EnumDescriptor *descriptor, const MappingOptions &options);
    void map_service(pTHX_ const google::protobuf::ServiceDescriptor *descriptor, const std::string &perl_package, const MappingOptions &options);
    void bind_service(pTHX_ const std::string &perl_package, const google::protobuf::ServiceDescriptor *descriptor, const MappingOptions &options);
    void map_service_noop(pTHX_ const google::protobuf::ServiceDescriptor *descriptor, const std::string &perl_package, const MappingOptions &options, ServiceDef *service_def);
    void map_service_grpc_xs(pTHX_ const google::protobuf::ServiceDescriptor *descriptor, const std::string &perl_package, const MappingOptions &options, ServiceDef *service_def);
    void check_package(pTHX_ const std::string &perl_package, const std::string &pb_name);
    void mark_package(pTHX_ const std::string &perl_package, SV *stack_trace);
    std::string pbname_to_package(pTHX_ const std::string &pb_name, const std::string &perl_package_prefix);

    OverlaySourceTree overlay_source_tree;
    DescriptorLoader descriptor_loader;
    google::protobuf::compiler::DiskSourceTree disk_source_tree;
    MemorySourceTree memory_source_tree;
    upb::googlepb::DefBuilder def_builder;
    CollectErrors die_on_error;
    STD_TR1::unordered_map<std::string, const Mapper *> descriptor_map;
    STD_TR1::unordered_set<std::string> mapped_enums;
    STD_TR1::unordered_set<std::string> mapped_services;
    STD_TR1::unordered_set<const google::protobuf::FileDescriptor *> files;
    std::vector<Mapper *> pending;
    std::vector<MethodMapper *> pending_methods;
    gpd::pb::DescriptorSet descriptor_set;
};

};

#endif
