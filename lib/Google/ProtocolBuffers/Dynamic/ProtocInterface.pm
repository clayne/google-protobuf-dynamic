package Google::ProtocolBuffers::Dynamic::ProtocInterface;

use strict;
use warnings;
use MIME::Base64 qw();
use Google::ProtocolBuffers::Dynamic;

my $gpd = Google::ProtocolBuffers::Dynamic->new;

$gpd->load_serialized_string(MIME::Base64::decode_base64(<<'EOD'));
CsM7CiBnb29nbGUvcHJvdG9idWYvZGVzY3JpcHRvci5wcm90bxIPZ29vZ2xlLnByb3RvYnVmIk0K
EUZpbGVEZXNjcmlwdG9yU2V0EjgKBGZpbGUYASADKAsyJC5nb29nbGUucHJvdG9idWYuRmlsZURl
c2NyaXB0b3JQcm90b1IEZmlsZSLkBAoTRmlsZURlc2NyaXB0b3JQcm90bxISCgRuYW1lGAEgASgJ
UgRuYW1lEhgKB3BhY2thZ2UYAiABKAlSB3BhY2thZ2USHgoKZGVwZW5kZW5jeRgDIAMoCVIKZGVw
ZW5kZW5jeRIrChFwdWJsaWNfZGVwZW5kZW5jeRgKIAMoBVIQcHVibGljRGVwZW5kZW5jeRInCg93
ZWFrX2RlcGVuZGVuY3kYCyADKAVSDndlYWtEZXBlbmRlbmN5EkMKDG1lc3NhZ2VfdHlwZRgEIAMo
CzIgLmdvb2dsZS5wcm90b2J1Zi5EZXNjcmlwdG9yUHJvdG9SC21lc3NhZ2VUeXBlEkEKCWVudW1f
dHlwZRgFIAMoCzIkLmdvb2dsZS5wcm90b2J1Zi5FbnVtRGVzY3JpcHRvclByb3RvUghlbnVtVHlw
ZRJBCgdzZXJ2aWNlGAYgAygLMicuZ29vZ2xlLnByb3RvYnVmLlNlcnZpY2VEZXNjcmlwdG9yUHJv
dG9SB3NlcnZpY2USQwoJZXh0ZW5zaW9uGAcgAygLMiUuZ29vZ2xlLnByb3RvYnVmLkZpZWxkRGVz
Y3JpcHRvclByb3RvUglleHRlbnNpb24SNgoHb3B0aW9ucxgIIAEoCzIcLmdvb2dsZS5wcm90b2J1
Zi5GaWxlT3B0aW9uc1IHb3B0aW9ucxJJChBzb3VyY2VfY29kZV9pbmZvGAkgASgLMh8uZ29vZ2xl
LnByb3RvYnVmLlNvdXJjZUNvZGVJbmZvUg5zb3VyY2VDb2RlSW5mbxIWCgZzeW50YXgYDCABKAlS
BnN5bnRheCK5BgoPRGVzY3JpcHRvclByb3RvEhIKBG5hbWUYASABKAlSBG5hbWUSOwoFZmllbGQY
AiADKAsyJS5nb29nbGUucHJvdG9idWYuRmllbGREZXNjcmlwdG9yUHJvdG9SBWZpZWxkEkMKCWV4
dGVuc2lvbhgGIAMoCzIlLmdvb2dsZS5wcm90b2J1Zi5GaWVsZERlc2NyaXB0b3JQcm90b1IJZXh0
ZW5zaW9uEkEKC25lc3RlZF90eXBlGAMgAygLMiAuZ29vZ2xlLnByb3RvYnVmLkRlc2NyaXB0b3JQ
cm90b1IKbmVzdGVkVHlwZRJBCgllbnVtX3R5cGUYBCADKAsyJC5nb29nbGUucHJvdG9idWYuRW51
bURlc2NyaXB0b3JQcm90b1IIZW51bVR5cGUSWAoPZXh0ZW5zaW9uX3JhbmdlGAUgAygLMi8uZ29v
Z2xlLnByb3RvYnVmLkRlc2NyaXB0b3JQcm90by5FeHRlbnNpb25SYW5nZVIOZXh0ZW5zaW9uUmFu
Z2USRAoKb25lb2ZfZGVjbBgIIAMoCzIlLmdvb2dsZS5wcm90b2J1Zi5PbmVvZkRlc2NyaXB0b3JQ
cm90b1IJb25lb2ZEZWNsEjkKB29wdGlvbnMYByABKAsyHy5nb29nbGUucHJvdG9idWYuTWVzc2Fn
ZU9wdGlvbnNSB29wdGlvbnMSVQoOcmVzZXJ2ZWRfcmFuZ2UYCSADKAsyLi5nb29nbGUucHJvdG9i
dWYuRGVzY3JpcHRvclByb3RvLlJlc2VydmVkUmFuZ2VSDXJlc2VydmVkUmFuZ2USIwoNcmVzZXJ2
ZWRfbmFtZRgKIAMoCVIMcmVzZXJ2ZWROYW1lGnoKDkV4dGVuc2lvblJhbmdlEhQKBXN0YXJ0GAEg
ASgFUgVzdGFydBIQCgNlbmQYAiABKAVSA2VuZBJACgdvcHRpb25zGAMgASgLMiYuZ29vZ2xlLnBy
b3RvYnVmLkV4dGVuc2lvblJhbmdlT3B0aW9uc1IHb3B0aW9ucxo3Cg1SZXNlcnZlZFJhbmdlEhQK
BXN0YXJ0GAEgASgFUgVzdGFydBIQCgNlbmQYAiABKAVSA2VuZCJ8ChVFeHRlbnNpb25SYW5nZU9w
dGlvbnMSWAoUdW5pbnRlcnByZXRlZF9vcHRpb24Y5wcgAygLMiQuZ29vZ2xlLnByb3RvYnVmLlVu
aW50ZXJwcmV0ZWRPcHRpb25SE3VuaW50ZXJwcmV0ZWRPcHRpb24qCQjoBxCAgICAAiLBBgoURmll
bGREZXNjcmlwdG9yUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZudW1iZXIYAyABKAVSBm51
bWJlchJBCgVsYWJlbBgEIAEoDjIrLmdvb2dsZS5wcm90b2J1Zi5GaWVsZERlc2NyaXB0b3JQcm90
by5MYWJlbFIFbGFiZWwSPgoEdHlwZRgFIAEoDjIqLmdvb2dsZS5wcm90b2J1Zi5GaWVsZERlc2Ny
aXB0b3JQcm90by5UeXBlUgR0eXBlEhsKCXR5cGVfbmFtZRgGIAEoCVIIdHlwZU5hbWUSGgoIZXh0
ZW5kZWUYAiABKAlSCGV4dGVuZGVlEiMKDWRlZmF1bHRfdmFsdWUYByABKAlSDGRlZmF1bHRWYWx1
ZRIfCgtvbmVvZl9pbmRleBgJIAEoBVIKb25lb2ZJbmRleBIbCglqc29uX25hbWUYCiABKAlSCGpz
b25OYW1lEjcKB29wdGlvbnMYCCABKAsyHS5nb29nbGUucHJvdG9idWYuRmllbGRPcHRpb25zUgdv
cHRpb25zEicKD3Byb3RvM19vcHRpb25hbBgRIAEoCFIOcHJvdG8zT3B0aW9uYWwitgIKBFR5cGUS
DwoLVFlQRV9ET1VCTEUQARIOCgpUWVBFX0ZMT0FUEAISDgoKVFlQRV9JTlQ2NBADEg8KC1RZUEVf
VUlOVDY0EAQSDgoKVFlQRV9JTlQzMhAFEhAKDFRZUEVfRklYRUQ2NBAGEhAKDFRZUEVfRklYRUQz
MhAHEg0KCVRZUEVfQk9PTBAIEg8KC1RZUEVfU1RSSU5HEAkSDgoKVFlQRV9HUk9VUBAKEhAKDFRZ
UEVfTUVTU0FHRRALEg4KClRZUEVfQllURVMQDBIPCgtUWVBFX1VJTlQzMhANEg0KCVRZUEVfRU5V
TRAOEhEKDVRZUEVfU0ZJWEVEMzIQDxIRCg1UWVBFX1NGSVhFRDY0EBASDwoLVFlQRV9TSU5UMzIQ
ERIPCgtUWVBFX1NJTlQ2NBASIkMKBUxhYmVsEhIKDkxBQkVMX09QVElPTkFMEAESEgoOTEFCRUxf
UkVRVUlSRUQQAhISCg5MQUJFTF9SRVBFQVRFRBADImMKFE9uZW9mRGVzY3JpcHRvclByb3RvEhIK
BG5hbWUYASABKAlSBG5hbWUSNwoHb3B0aW9ucxgCIAEoCzIdLmdvb2dsZS5wcm90b2J1Zi5PbmVv
Zk9wdGlvbnNSB29wdGlvbnMi4wIKE0VudW1EZXNjcmlwdG9yUHJvdG8SEgoEbmFtZRgBIAEoCVIE
bmFtZRI/CgV2YWx1ZRgCIAMoCzIpLmdvb2dsZS5wcm90b2J1Zi5FbnVtVmFsdWVEZXNjcmlwdG9y
UHJvdG9SBXZhbHVlEjYKB29wdGlvbnMYAyABKAsyHC5nb29nbGUucHJvdG9idWYuRW51bU9wdGlv
bnNSB29wdGlvbnMSXQoOcmVzZXJ2ZWRfcmFuZ2UYBCADKAsyNi5nb29nbGUucHJvdG9idWYuRW51
bURlc2NyaXB0b3JQcm90by5FbnVtUmVzZXJ2ZWRSYW5nZVINcmVzZXJ2ZWRSYW5nZRIjCg1yZXNl
cnZlZF9uYW1lGAUgAygJUgxyZXNlcnZlZE5hbWUaOwoRRW51bVJlc2VydmVkUmFuZ2USFAoFc3Rh
cnQYASABKAVSBXN0YXJ0EhAKA2VuZBgCIAEoBVIDZW5kIoMBChhFbnVtVmFsdWVEZXNjcmlwdG9y
UHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZudW1iZXIYAiABKAVSBm51bWJlchI7CgdvcHRp
b25zGAMgASgLMiEuZ29vZ2xlLnByb3RvYnVmLkVudW1WYWx1ZU9wdGlvbnNSB29wdGlvbnMipwEK
FlNlcnZpY2VEZXNjcmlwdG9yUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRI+CgZtZXRob2QYAiAD
KAsyJi5nb29nbGUucHJvdG9idWYuTWV0aG9kRGVzY3JpcHRvclByb3RvUgZtZXRob2QSOQoHb3B0
aW9ucxgDIAEoCzIfLmdvb2dsZS5wcm90b2J1Zi5TZXJ2aWNlT3B0aW9uc1IHb3B0aW9ucyKJAgoV
TWV0aG9kRGVzY3JpcHRvclByb3RvEhIKBG5hbWUYASABKAlSBG5hbWUSHQoKaW5wdXRfdHlwZRgC
IAEoCVIJaW5wdXRUeXBlEh8KC291dHB1dF90eXBlGAMgASgJUgpvdXRwdXRUeXBlEjgKB29wdGlv
bnMYBCABKAsyHi5nb29nbGUucHJvdG9idWYuTWV0aG9kT3B0aW9uc1IHb3B0aW9ucxIwChBjbGll
bnRfc3RyZWFtaW5nGAUgASgIOgVmYWxzZVIPY2xpZW50U3RyZWFtaW5nEjAKEHNlcnZlcl9zdHJl
YW1pbmcYBiABKAg6BWZhbHNlUg9zZXJ2ZXJTdHJlYW1pbmcikQkKC0ZpbGVPcHRpb25zEiEKDGph
dmFfcGFja2FnZRgBIAEoCVILamF2YVBhY2thZ2USMAoUamF2YV9vdXRlcl9jbGFzc25hbWUYCCAB
KAlSEmphdmFPdXRlckNsYXNzbmFtZRI1ChNqYXZhX211bHRpcGxlX2ZpbGVzGAogASgIOgVmYWxz
ZVIRamF2YU11bHRpcGxlRmlsZXMSRAodamF2YV9nZW5lcmF0ZV9lcXVhbHNfYW5kX2hhc2gYFCAB
KAhCAhgBUhlqYXZhR2VuZXJhdGVFcXVhbHNBbmRIYXNoEjoKFmphdmFfc3RyaW5nX2NoZWNrX3V0
ZjgYGyABKAg6BWZhbHNlUhNqYXZhU3RyaW5nQ2hlY2tVdGY4ElMKDG9wdGltaXplX2ZvchgJIAEo
DjIpLmdvb2dsZS5wcm90b2J1Zi5GaWxlT3B0aW9ucy5PcHRpbWl6ZU1vZGU6BVNQRUVEUgtvcHRp
bWl6ZUZvchIdCgpnb19wYWNrYWdlGAsgASgJUglnb1BhY2thZ2USNQoTY2NfZ2VuZXJpY19zZXJ2
aWNlcxgQIAEoCDoFZmFsc2VSEWNjR2VuZXJpY1NlcnZpY2VzEjkKFWphdmFfZ2VuZXJpY19zZXJ2
aWNlcxgRIAEoCDoFZmFsc2VSE2phdmFHZW5lcmljU2VydmljZXMSNQoTcHlfZ2VuZXJpY19zZXJ2
aWNlcxgSIAEoCDoFZmFsc2VSEXB5R2VuZXJpY1NlcnZpY2VzEjcKFHBocF9nZW5lcmljX3NlcnZp
Y2VzGCogASgIOgVmYWxzZVIScGhwR2VuZXJpY1NlcnZpY2VzEiUKCmRlcHJlY2F0ZWQYFyABKAg6
BWZhbHNlUgpkZXByZWNhdGVkEi4KEGNjX2VuYWJsZV9hcmVuYXMYHyABKAg6BHRydWVSDmNjRW5h
YmxlQXJlbmFzEioKEW9iamNfY2xhc3NfcHJlZml4GCQgASgJUg9vYmpjQ2xhc3NQcmVmaXgSKQoQ
Y3NoYXJwX25hbWVzcGFjZRglIAEoCVIPY3NoYXJwTmFtZXNwYWNlEiEKDHN3aWZ0X3ByZWZpeBgn
IAEoCVILc3dpZnRQcmVmaXgSKAoQcGhwX2NsYXNzX3ByZWZpeBgoIAEoCVIOcGhwQ2xhc3NQcmVm
aXgSIwoNcGhwX25hbWVzcGFjZRgpIAEoCVIMcGhwTmFtZXNwYWNlEjQKFnBocF9tZXRhZGF0YV9u
YW1lc3BhY2UYLCABKAlSFHBocE1ldGFkYXRhTmFtZXNwYWNlEiEKDHJ1YnlfcGFja2FnZRgtIAEo
CVILcnVieVBhY2thZ2USWAoUdW5pbnRlcnByZXRlZF9vcHRpb24Y5wcgAygLMiQuZ29vZ2xlLnBy
b3RvYnVmLlVuaW50ZXJwcmV0ZWRPcHRpb25SE3VuaW50ZXJwcmV0ZWRPcHRpb24iOgoMT3B0aW1p
emVNb2RlEgkKBVNQRUVEEAESDQoJQ09ERV9TSVpFEAISEAoMTElURV9SVU5USU1FEAMqCQjoBxCA
gICAAkoECCYQJyLjAgoOTWVzc2FnZU9wdGlvbnMSPAoXbWVzc2FnZV9zZXRfd2lyZV9mb3JtYXQY
ASABKAg6BWZhbHNlUhRtZXNzYWdlU2V0V2lyZUZvcm1hdBJMCh9ub19zdGFuZGFyZF9kZXNjcmlw
dG9yX2FjY2Vzc29yGAIgASgIOgVmYWxzZVIcbm9TdGFuZGFyZERlc2NyaXB0b3JBY2Nlc3NvchIl
CgpkZXByZWNhdGVkGAMgASgIOgVmYWxzZVIKZGVwcmVjYXRlZBIbCgltYXBfZW50cnkYByABKAhS
CG1hcEVudHJ5ElgKFHVuaW50ZXJwcmV0ZWRfb3B0aW9uGOcHIAMoCzIkLmdvb2dsZS5wcm90b2J1
Zi5VbmludGVycHJldGVkT3B0aW9uUhN1bmludGVycHJldGVkT3B0aW9uKgkI6AcQgICAgAJKBAgE
EAVKBAgFEAZKBAgGEAdKBAgIEAlKBAgJEAoi4gMKDEZpZWxkT3B0aW9ucxJBCgVjdHlwZRgBIAEo
DjIjLmdvb2dsZS5wcm90b2J1Zi5GaWVsZE9wdGlvbnMuQ1R5cGU6BlNUUklOR1IFY3R5cGUSFgoG
cGFja2VkGAIgASgIUgZwYWNrZWQSRwoGanN0eXBlGAYgASgOMiQuZ29vZ2xlLnByb3RvYnVmLkZp
ZWxkT3B0aW9ucy5KU1R5cGU6CUpTX05PUk1BTFIGanN0eXBlEhkKBGxhenkYBSABKAg6BWZhbHNl
UgRsYXp5EiUKCmRlcHJlY2F0ZWQYAyABKAg6BWZhbHNlUgpkZXByZWNhdGVkEhkKBHdlYWsYCiAB
KAg6BWZhbHNlUgR3ZWFrElgKFHVuaW50ZXJwcmV0ZWRfb3B0aW9uGOcHIAMoCzIkLmdvb2dsZS5w
cm90b2J1Zi5VbmludGVycHJldGVkT3B0aW9uUhN1bmludGVycHJldGVkT3B0aW9uIi8KBUNUeXBl
EgoKBlNUUklORxAAEggKBENPUkQQARIQCgxTVFJJTkdfUElFQ0UQAiI1CgZKU1R5cGUSDQoJSlNf
Tk9STUFMEAASDQoJSlNfU1RSSU5HEAESDQoJSlNfTlVNQkVSEAIqCQjoBxCAgICAAkoECAQQBSJz
CgxPbmVvZk9wdGlvbnMSWAoUdW5pbnRlcnByZXRlZF9vcHRpb24Y5wcgAygLMiQuZ29vZ2xlLnBy
b3RvYnVmLlVuaW50ZXJwcmV0ZWRPcHRpb25SE3VuaW50ZXJwcmV0ZWRPcHRpb24qCQjoBxCAgICA
AiLAAQoLRW51bU9wdGlvbnMSHwoLYWxsb3dfYWxpYXMYAiABKAhSCmFsbG93QWxpYXMSJQoKZGVw
cmVjYXRlZBgDIAEoCDoFZmFsc2VSCmRlcHJlY2F0ZWQSWAoUdW5pbnRlcnByZXRlZF9vcHRpb24Y
5wcgAygLMiQuZ29vZ2xlLnByb3RvYnVmLlVuaW50ZXJwcmV0ZWRPcHRpb25SE3VuaW50ZXJwcmV0
ZWRPcHRpb24qCQjoBxCAgICAAkoECAUQBiKeAQoQRW51bVZhbHVlT3B0aW9ucxIlCgpkZXByZWNh
dGVkGAEgASgIOgVmYWxzZVIKZGVwcmVjYXRlZBJYChR1bmludGVycHJldGVkX29wdGlvbhjnByAD
KAsyJC5nb29nbGUucHJvdG9idWYuVW5pbnRlcnByZXRlZE9wdGlvblITdW5pbnRlcnByZXRlZE9w
dGlvbioJCOgHEICAgIACIpwBCg5TZXJ2aWNlT3B0aW9ucxIlCgpkZXByZWNhdGVkGCEgASgIOgVm
YWxzZVIKZGVwcmVjYXRlZBJYChR1bmludGVycHJldGVkX29wdGlvbhjnByADKAsyJC5nb29nbGUu
cHJvdG9idWYuVW5pbnRlcnByZXRlZE9wdGlvblITdW5pbnRlcnByZXRlZE9wdGlvbioJCOgHEICA
gIACIuACCg1NZXRob2RPcHRpb25zEiUKCmRlcHJlY2F0ZWQYISABKAg6BWZhbHNlUgpkZXByZWNh
dGVkEnEKEWlkZW1wb3RlbmN5X2xldmVsGCIgASgOMi8uZ29vZ2xlLnByb3RvYnVmLk1ldGhvZE9w
dGlvbnMuSWRlbXBvdGVuY3lMZXZlbDoTSURFTVBPVEVOQ1lfVU5LTk9XTlIQaWRlbXBvdGVuY3lM
ZXZlbBJYChR1bmludGVycHJldGVkX29wdGlvbhjnByADKAsyJC5nb29nbGUucHJvdG9idWYuVW5p
bnRlcnByZXRlZE9wdGlvblITdW5pbnRlcnByZXRlZE9wdGlvbiJQChBJZGVtcG90ZW5jeUxldmVs
EhcKE0lERU1QT1RFTkNZX1VOS05PV04QABITCg9OT19TSURFX0VGRkVDVFMQARIOCgpJREVNUE9U
RU5UEAIqCQjoBxCAgICAAiKaAwoTVW5pbnRlcnByZXRlZE9wdGlvbhJBCgRuYW1lGAIgAygLMi0u
Z29vZ2xlLnByb3RvYnVmLlVuaW50ZXJwcmV0ZWRPcHRpb24uTmFtZVBhcnRSBG5hbWUSKQoQaWRl
bnRpZmllcl92YWx1ZRgDIAEoCVIPaWRlbnRpZmllclZhbHVlEiwKEnBvc2l0aXZlX2ludF92YWx1
ZRgEIAEoBFIQcG9zaXRpdmVJbnRWYWx1ZRIsChJuZWdhdGl2ZV9pbnRfdmFsdWUYBSABKANSEG5l
Z2F0aXZlSW50VmFsdWUSIQoMZG91YmxlX3ZhbHVlGAYgASgBUgtkb3VibGVWYWx1ZRIhCgxzdHJp
bmdfdmFsdWUYByABKAxSC3N0cmluZ1ZhbHVlEicKD2FnZ3JlZ2F0ZV92YWx1ZRgIIAEoCVIOYWdn
cmVnYXRlVmFsdWUaSgoITmFtZVBhcnQSGwoJbmFtZV9wYXJ0GAEgAigJUghuYW1lUGFydBIhCgxp
c19leHRlbnNpb24YAiACKAhSC2lzRXh0ZW5zaW9uIqcCCg5Tb3VyY2VDb2RlSW5mbxJECghsb2Nh
dGlvbhgBIAMoCzIoLmdvb2dsZS5wcm90b2J1Zi5Tb3VyY2VDb2RlSW5mby5Mb2NhdGlvblIIbG9j
YXRpb24azgEKCExvY2F0aW9uEhYKBHBhdGgYASADKAVCAhABUgRwYXRoEhYKBHNwYW4YAiADKAVC
AhABUgRzcGFuEikKEGxlYWRpbmdfY29tbWVudHMYAyABKAlSD2xlYWRpbmdDb21tZW50cxIrChF0
cmFpbGluZ19jb21tZW50cxgEIAEoCVIQdHJhaWxpbmdDb21tZW50cxI6ChlsZWFkaW5nX2RldGFj
aGVkX2NvbW1lbnRzGAYgAygJUhdsZWFkaW5nRGV0YWNoZWRDb21tZW50cyLRAQoRR2VuZXJhdGVk
Q29kZUluZm8STQoKYW5ub3RhdGlvbhgBIAMoCzItLmdvb2dsZS5wcm90b2J1Zi5HZW5lcmF0ZWRD
b2RlSW5mby5Bbm5vdGF0aW9uUgphbm5vdGF0aW9uGm0KCkFubm90YXRpb24SFgoEcGF0aBgBIAMo
BUICEAFSBHBhdGgSHwoLc291cmNlX2ZpbGUYAiABKAlSCnNvdXJjZUZpbGUSFAoFYmVnaW4YAyAB
KAVSBWJlZ2luEhAKA2VuZBgEIAEoBVIDZW5kQn4KE2NvbS5nb29nbGUucHJvdG9idWZCEERlc2Ny
aXB0b3JQcm90b3NIAVotZ29vZ2xlLmdvbGFuZy5vcmcvcHJvdG9idWYvdHlwZXMvZGVzY3JpcHRv
cnBi+AEBogIDR1BCqgIaR29vZ2xlLlByb3RvYnVmLlJlZmxlY3Rpb24=

EOD
$gpd->load_serialized_string(MIME::Base64::decode_base64(<<'EOD'));
CqwHCiVnb29nbGUvcHJvdG9idWYvY29tcGlsZXIvcGx1Z2luLnByb3RvEhhnb29nbGUucHJvdG9i
dWYuY29tcGlsZXIaIGdvb2dsZS9wcm90b2J1Zi9kZXNjcmlwdG9yLnByb3RvImMKB1ZlcnNpb24S
FAoFbWFqb3IYASABKAVSBW1ham9yEhQKBW1pbm9yGAIgASgFUgVtaW5vchIUCgVwYXRjaBgDIAEo
BVIFcGF0Y2gSFgoGc3VmZml4GAQgASgJUgZzdWZmaXgi8QEKFENvZGVHZW5lcmF0b3JSZXF1ZXN0
EigKEGZpbGVfdG9fZ2VuZXJhdGUYASADKAlSDmZpbGVUb0dlbmVyYXRlEhwKCXBhcmFtZXRlchgC
IAEoCVIJcGFyYW1ldGVyEkMKCnByb3RvX2ZpbGUYDyADKAsyJC5nb29nbGUucHJvdG9idWYuRmls
ZURlc2NyaXB0b3JQcm90b1IJcHJvdG9GaWxlEkwKEGNvbXBpbGVyX3ZlcnNpb24YAyABKAsyIS5n
b29nbGUucHJvdG9idWYuY29tcGlsZXIuVmVyc2lvblIPY29tcGlsZXJWZXJzaW9uIpQDChVDb2Rl
R2VuZXJhdG9yUmVzcG9uc2USFAoFZXJyb3IYASABKAlSBWVycm9yEi0KEnN1cHBvcnRlZF9mZWF0
dXJlcxgCIAEoBFIRc3VwcG9ydGVkRmVhdHVyZXMSSAoEZmlsZRgPIAMoCzI0Lmdvb2dsZS5wcm90
b2J1Zi5jb21waWxlci5Db2RlR2VuZXJhdG9yUmVzcG9uc2UuRmlsZVIEZmlsZRqxAQoERmlsZRIS
CgRuYW1lGAEgASgJUgRuYW1lEicKD2luc2VydGlvbl9wb2ludBgCIAEoCVIOaW5zZXJ0aW9uUG9p
bnQSGAoHY29udGVudBgPIAEoCVIHY29udGVudBJSChNnZW5lcmF0ZWRfY29kZV9pbmZvGBAgASgL
MiIuZ29vZ2xlLnByb3RvYnVmLkdlbmVyYXRlZENvZGVJbmZvUhFnZW5lcmF0ZWRDb2RlSW5mbyI4
CgdGZWF0dXJlEhAKDEZFQVRVUkVfTk9ORRAAEhsKF0ZFQVRVUkVfUFJPVE8zX09QVElPTkFMEAFC
VwocY29tLmdvb2dsZS5wcm90b2J1Zi5jb21waWxlckIMUGx1Z2luUHJvdG9zWilnb29nbGUuZ29s
YW5nLm9yZy9wcm90b2J1Zi90eXBlcy9wbHVnaW5wYg==

EOD


$gpd->map(
   +{
      'options' => {
                     'encode_defaults' => 1
                   },
      'package' => 'google.protobuf',
      'prefix' => 'Google::ProtocolBuffers::Dynamic::ProtocInterface'
    },
   +{
      'options' => {
                     'encode_defaults' => 1
                   },
      'package' => 'google.protobuf.compiler',
      'prefix' => 'Google::ProtocolBuffers::Dynamic::ProtocInterface'
    },
);

undef $gpd;

1;
