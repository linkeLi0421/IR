; ModuleID = '/llk/IR/drivers/video/hdmi.c_pt.bc'
source_filename = "../drivers/video/hdmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_avi_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_avi_infoframe_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_avi_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_avi_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_avi_infoframe_check\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_avi_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_avi_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_avi_infoframe_pack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_avi_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_avi_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_avi_infoframe_pack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_avi_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_spd_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_spd_infoframe_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_spd_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_spd_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_spd_infoframe_check\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_spd_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_spd_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_spd_infoframe_pack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_spd_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_spd_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_spd_infoframe_pack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_spd_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_audio_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_audio_infoframe_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_audio_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_audio_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_audio_infoframe_check\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_audio_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_audio_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_audio_infoframe_pack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_audio_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_audio_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_audio_infoframe_pack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_audio_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_vendor_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_vendor_infoframe_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_vendor_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_vendor_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_vendor_infoframe_check\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_vendor_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_vendor_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_vendor_infoframe_pack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_vendor_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_vendor_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_vendor_infoframe_pack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_vendor_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_drm_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_drm_infoframe_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_drm_infoframe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_drm_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_drm_infoframe_check\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_drm_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_drm_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_drm_infoframe_pack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_drm_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_drm_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_drm_infoframe_pack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_drm_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_infoframe_check\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_infoframe_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_infoframe_pack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_infoframe_pack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_infoframe_pack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_infoframe_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_infoframe_log:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_infoframe_log\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_infoframe_log:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_drm_infoframe_unpack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_drm_infoframe_unpack_only\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_drm_infoframe_unpack_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdmi_infoframe_unpack:\09\09\09\09\09"
module asm "\09.asciz \09\22hdmi_infoframe_unpack\22\09\09\09\09\09"
module asm "__kstrtabns_hdmi_infoframe_unpack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_spd_infoframe = type { i32, i8, i8, [8 x i8], [16 x i8], i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_drm_infoframe = type { i32, i8, i8, i32, i32, [3 x %struct.anon], %struct.anon.0, i16, i16, i16, i16 }
%struct.anon = type { i16, i16 }
%struct.anon.0 = type { i16, i16 }
%struct.anon.1 = type { i32, i8, i8, i32 }
%struct.hdmi_any_infoframe = type { i32, i8, i8 }

@__kstrtab_hdmi_avi_infoframe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_avi_infoframe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_avi_infoframe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_avi_infoframe_init to i32), ptr @__kstrtab_hdmi_avi_infoframe_init, ptr @__kstrtabns_hdmi_avi_infoframe_init }, section "___ksymtab+hdmi_avi_infoframe_init", align 4
@__kstrtab_hdmi_avi_infoframe_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_avi_infoframe_check = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_avi_infoframe_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_avi_infoframe_check to i32), ptr @__kstrtab_hdmi_avi_infoframe_check, ptr @__kstrtabns_hdmi_avi_infoframe_check }, section "___ksymtab+hdmi_avi_infoframe_check", align 4
@__kstrtab_hdmi_avi_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_avi_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_avi_infoframe_pack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_avi_infoframe_pack_only to i32), ptr @__kstrtab_hdmi_avi_infoframe_pack_only, ptr @__kstrtabns_hdmi_avi_infoframe_pack_only }, section "___ksymtab+hdmi_avi_infoframe_pack_only", align 4
@__kstrtab_hdmi_avi_infoframe_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_avi_infoframe_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_avi_infoframe_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_avi_infoframe_pack to i32), ptr @__kstrtab_hdmi_avi_infoframe_pack, ptr @__kstrtabns_hdmi_avi_infoframe_pack }, section "___ksymtab+hdmi_avi_infoframe_pack", align 4
@__kstrtab_hdmi_spd_infoframe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_spd_infoframe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_spd_infoframe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_spd_infoframe_init to i32), ptr @__kstrtab_hdmi_spd_infoframe_init, ptr @__kstrtabns_hdmi_spd_infoframe_init }, section "___ksymtab+hdmi_spd_infoframe_init", align 4
@__kstrtab_hdmi_spd_infoframe_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_spd_infoframe_check = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_spd_infoframe_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_spd_infoframe_check to i32), ptr @__kstrtab_hdmi_spd_infoframe_check, ptr @__kstrtabns_hdmi_spd_infoframe_check }, section "___ksymtab+hdmi_spd_infoframe_check", align 4
@__kstrtab_hdmi_spd_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_spd_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_spd_infoframe_pack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_spd_infoframe_pack_only to i32), ptr @__kstrtab_hdmi_spd_infoframe_pack_only, ptr @__kstrtabns_hdmi_spd_infoframe_pack_only }, section "___ksymtab+hdmi_spd_infoframe_pack_only", align 4
@__kstrtab_hdmi_spd_infoframe_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_spd_infoframe_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_spd_infoframe_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_spd_infoframe_pack to i32), ptr @__kstrtab_hdmi_spd_infoframe_pack, ptr @__kstrtabns_hdmi_spd_infoframe_pack }, section "___ksymtab+hdmi_spd_infoframe_pack", align 4
@__kstrtab_hdmi_audio_infoframe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_audio_infoframe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_audio_infoframe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_audio_infoframe_init to i32), ptr @__kstrtab_hdmi_audio_infoframe_init, ptr @__kstrtabns_hdmi_audio_infoframe_init }, section "___ksymtab+hdmi_audio_infoframe_init", align 4
@__kstrtab_hdmi_audio_infoframe_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_audio_infoframe_check = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_audio_infoframe_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_audio_infoframe_check to i32), ptr @__kstrtab_hdmi_audio_infoframe_check, ptr @__kstrtabns_hdmi_audio_infoframe_check }, section "___ksymtab+hdmi_audio_infoframe_check", align 4
@__kstrtab_hdmi_audio_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_audio_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_audio_infoframe_pack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_audio_infoframe_pack_only to i32), ptr @__kstrtab_hdmi_audio_infoframe_pack_only, ptr @__kstrtabns_hdmi_audio_infoframe_pack_only }, section "___ksymtab+hdmi_audio_infoframe_pack_only", align 4
@__kstrtab_hdmi_audio_infoframe_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_audio_infoframe_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_audio_infoframe_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_audio_infoframe_pack to i32), ptr @__kstrtab_hdmi_audio_infoframe_pack, ptr @__kstrtabns_hdmi_audio_infoframe_pack }, section "___ksymtab+hdmi_audio_infoframe_pack", align 4
@__kstrtab_hdmi_vendor_infoframe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_vendor_infoframe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_vendor_infoframe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_vendor_infoframe_init to i32), ptr @__kstrtab_hdmi_vendor_infoframe_init, ptr @__kstrtabns_hdmi_vendor_infoframe_init }, section "___ksymtab+hdmi_vendor_infoframe_init", align 4
@__kstrtab_hdmi_vendor_infoframe_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_vendor_infoframe_check = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_vendor_infoframe_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_vendor_infoframe_check to i32), ptr @__kstrtab_hdmi_vendor_infoframe_check, ptr @__kstrtabns_hdmi_vendor_infoframe_check }, section "___ksymtab+hdmi_vendor_infoframe_check", align 4
@__kstrtab_hdmi_vendor_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_vendor_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_vendor_infoframe_pack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_vendor_infoframe_pack_only to i32), ptr @__kstrtab_hdmi_vendor_infoframe_pack_only, ptr @__kstrtabns_hdmi_vendor_infoframe_pack_only }, section "___ksymtab+hdmi_vendor_infoframe_pack_only", align 4
@__kstrtab_hdmi_vendor_infoframe_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_vendor_infoframe_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_vendor_infoframe_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_vendor_infoframe_pack to i32), ptr @__kstrtab_hdmi_vendor_infoframe_pack, ptr @__kstrtabns_hdmi_vendor_infoframe_pack }, section "___ksymtab+hdmi_vendor_infoframe_pack", align 4
@__kstrtab_hdmi_drm_infoframe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_drm_infoframe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_drm_infoframe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_drm_infoframe_init to i32), ptr @__kstrtab_hdmi_drm_infoframe_init, ptr @__kstrtabns_hdmi_drm_infoframe_init }, section "___ksymtab+hdmi_drm_infoframe_init", align 4
@__kstrtab_hdmi_drm_infoframe_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_drm_infoframe_check = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_drm_infoframe_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_drm_infoframe_check to i32), ptr @__kstrtab_hdmi_drm_infoframe_check, ptr @__kstrtabns_hdmi_drm_infoframe_check }, section "___ksymtab+hdmi_drm_infoframe_check", align 4
@__kstrtab_hdmi_drm_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_drm_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_drm_infoframe_pack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_drm_infoframe_pack_only to i32), ptr @__kstrtab_hdmi_drm_infoframe_pack_only, ptr @__kstrtabns_hdmi_drm_infoframe_pack_only }, section "___ksymtab+hdmi_drm_infoframe_pack_only", align 4
@__kstrtab_hdmi_drm_infoframe_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_drm_infoframe_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_drm_infoframe_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_drm_infoframe_pack to i32), ptr @__kstrtab_hdmi_drm_infoframe_pack, ptr @__kstrtabns_hdmi_drm_infoframe_pack }, section "___ksymtab+hdmi_drm_infoframe_pack", align 4
@.str = private unnamed_addr constant [21 x i8] c"drivers/video/hdmi.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad infoframe type %d\0A\00", align 1
@__kstrtab_hdmi_infoframe_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_infoframe_check = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_infoframe_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_infoframe_check to i32), ptr @__kstrtab_hdmi_infoframe_check, ptr @__kstrtabns_hdmi_infoframe_check }, section "___ksymtab+hdmi_infoframe_check", align 4
@__kstrtab_hdmi_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_infoframe_pack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_infoframe_pack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_infoframe_pack_only to i32), ptr @__kstrtab_hdmi_infoframe_pack_only, ptr @__kstrtabns_hdmi_infoframe_pack_only }, section "___ksymtab+hdmi_infoframe_pack_only", align 4
@__kstrtab_hdmi_infoframe_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_infoframe_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_infoframe_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_infoframe_pack to i32), ptr @__kstrtab_hdmi_infoframe_pack, ptr @__kstrtabns_hdmi_infoframe_pack }, section "___ksymtab+hdmi_infoframe_pack", align 4
@__kstrtab_hdmi_infoframe_log = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_infoframe_log = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_infoframe_log = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_infoframe_log to i32), ptr @__kstrtab_hdmi_infoframe_log, ptr @__kstrtabns_hdmi_infoframe_log }, section "___ksymtab+hdmi_infoframe_log", align 4
@__kstrtab_hdmi_drm_infoframe_unpack_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_drm_infoframe_unpack_only = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_drm_infoframe_unpack_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_drm_infoframe_unpack_only to i32), ptr @__kstrtab_hdmi_drm_infoframe_unpack_only, ptr @__kstrtabns_hdmi_drm_infoframe_unpack_only }, section "___ksymtab+hdmi_drm_infoframe_unpack_only", align 4
@__kstrtab_hdmi_infoframe_unpack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdmi_infoframe_unpack = external dso_local constant [0 x i8], align 1
@__ksymtab_hdmi_infoframe_unpack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdmi_infoframe_unpack to i32), ptr @__kstrtab_hdmi_infoframe_unpack, ptr @__kstrtabns_hdmi_infoframe_unpack }, section "___ksymtab+hdmi_infoframe_unpack", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"    colorspace: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"    scan mode: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"    colorimetry: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    picture aspect: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"    active aspect: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"    itc: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"IT Content\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"No Data\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"    extended colorimetry: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"    quantization range: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    nups: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"    video code: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"    ycc quantization range: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"    hdmi content type: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"    pixel repeat: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"    bar top %u, bottom %u, left %u, right %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"HDMI infoframe: %s, version %u, length %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Auxiliary Video Information (AVI)\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Source Product Description (SPD)\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Dynamic Range and Mastering\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"YCbCr 4:2:2\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"YCbCr 4:4:4\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"YCbCr 4:2:0\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Reserved (4)\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Reserved (5)\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Reserved (6)\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"IDO Defined\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Overscan\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Underscan\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"ITU601\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"ITU709\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Extended\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"4:3\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"16:9\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"64:27\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"256:135\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"16:9 Top\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"14:9 Top\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"16:9 Center\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"Same as Picture\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"14:9\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"4:3 SP 14:9\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"16:9 SP 14:9\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"16:9 SP 4:3\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"xvYCC 601\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"xvYCC 709\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"sYCC 601\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"opYCC 601\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"opRGB\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"BT.2020 Constant Luminance\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"BT.2020\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Limited\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"Unknown Non-uniform Scaling\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"Horizontally Scaled\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Vertically Scaled\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"Horizontally and Vertically Scaled\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"Photo\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Cinema\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"    vendor: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"    product: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"    source device information: %s (0x%x)\0A\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Digital STB\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"DVD Player\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"D-VHS\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"HDD Videorecorder\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"DVC\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"DSC\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Video CD\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"PC General\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"Blu-Ray Disc (BD)\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"Super Audio CD\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"HD DVD\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"PMP\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"    channels: %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"    channels: Refer to stream header\0A\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"    coding type: %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"    sample size: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"    sample frequency: %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"    coding type ext: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"    channel allocation: 0x%x\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"    level shift value: %u dB\0A\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"    downmix inhibit: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"Refer to Stream Header\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"AC-3\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"MPEG1\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"MP3\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"MPEG2\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"AAC\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"DTS\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"ATRAC\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"One Bit Audio\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Dolby Digital +\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"DTS-HD\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"MAT (MLP)\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"WMA PRO\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"Refer to CXT\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"16 bit\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"20 bit\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"24 bit\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"32 kHz\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"44.1 kHz (CD)\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"48 kHz\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"88.2 kHz\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"96 kHz\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"176.4 kHz\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"192 kHz\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"Refer to CT\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"HE AAC\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"HE AAC v2\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"MPEG SURROUND\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"MPEG-4 HE AAC\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"MPEG-4 HE AAC v2\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"MPEG-4 AAC LC\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"DRA\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"MPEG-4 HE AAC + MPEG Surround\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"MPEG-4 AAC LC + MPEG Surround\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"    not a HDMI vendor infoframe\0A\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"    empty frame\0A\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"    HDMI VIC: %u\0A\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"    3D structure: %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [27 x i8] c"    3D extension data: %d\0A\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"Frame Packing\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"Field Alternative\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"Line Alternative\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"Side-by-side (Full)\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"L + Depth\00", align 1
@.str.142 = private unnamed_addr constant [38 x i8] c"L + Depth + Graphics + Graphics-depth\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Top-and-Bottom\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"Side-by-side (Half)\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"metadata type: %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"eotf: %d\0A\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"x[%d]: %d\0A\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"y[%d]: %d\0A\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"white point x: %d\0A\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"white point y: %d\0A\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"max_display_mastering_luminance: %d\0A\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"min_display_mastering_luminance: %d\0A\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"max_cll: %d\0A\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"max_fall: %d\0A\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_hdmi_audio_infoframe_check, ptr @__ksymtab_hdmi_audio_infoframe_init, ptr @__ksymtab_hdmi_audio_infoframe_pack, ptr @__ksymtab_hdmi_audio_infoframe_pack_only, ptr @__ksymtab_hdmi_avi_infoframe_check, ptr @__ksymtab_hdmi_avi_infoframe_init, ptr @__ksymtab_hdmi_avi_infoframe_pack, ptr @__ksymtab_hdmi_avi_infoframe_pack_only, ptr @__ksymtab_hdmi_drm_infoframe_check, ptr @__ksymtab_hdmi_drm_infoframe_init, ptr @__ksymtab_hdmi_drm_infoframe_pack, ptr @__ksymtab_hdmi_drm_infoframe_pack_only, ptr @__ksymtab_hdmi_drm_infoframe_unpack_only, ptr @__ksymtab_hdmi_infoframe_check, ptr @__ksymtab_hdmi_infoframe_log, ptr @__ksymtab_hdmi_infoframe_pack, ptr @__ksymtab_hdmi_infoframe_pack_only, ptr @__ksymtab_hdmi_infoframe_unpack, ptr @__ksymtab_hdmi_spd_infoframe_check, ptr @__ksymtab_hdmi_spd_infoframe_init, ptr @__ksymtab_hdmi_spd_infoframe_pack, ptr @__ksymtab_hdmi_spd_infoframe_pack_only, ptr @__ksymtab_hdmi_vendor_infoframe_check, ptr @__ksymtab_hdmi_vendor_infoframe_init, ptr @__ksymtab_hdmi_vendor_infoframe_pack, ptr @__ksymtab_hdmi_vendor_infoframe_pack_only], section "llvm.metadata"
@switch.table.hdmi_infoframe_log = private unnamed_addr constant [8 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 4
@switch.table.hdmi_infoframe_log.156 = private unnamed_addr constant [4 x ptr] [ptr @.str.9, ptr @.str.34, ptr @.str.35, ptr @.str.25], align 4
@switch.table.hdmi_infoframe_log.157 = private unnamed_addr constant [4 x ptr] [ptr @.str.9, ptr @.str.36, ptr @.str.37, ptr @.str.38], align 4
@switch.table.hdmi_infoframe_log.158 = private unnamed_addr constant [6 x ptr] [ptr @.str.9, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.25], align 4
@switch.table.hdmi_infoframe_log.159 = private unnamed_addr constant [14 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.46, ptr @.str.39, ptr @.str.40, ptr @.str.47, ptr @.str.25, ptr @.str.48, ptr @.str.49, ptr @.str.50], align 4
@switch.table.hdmi_infoframe_log.160 = private unnamed_addr constant [8 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.25], align 4
@switch.table.hdmi_infoframe_log.161 = private unnamed_addr constant [4 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.25], align 4
@switch.table.hdmi_infoframe_log.162 = private unnamed_addr constant [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], align 4
@switch.table.hdmi_infoframe_log.163 = private unnamed_addr constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], align 4
@switch.table.hdmi_infoframe_log.164 = private unnamed_addr constant [14 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.68, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], align 4
@switch.table.hdmi_infoframe_log.165 = private unnamed_addr constant [16 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 4
@switch.table.hdmi_infoframe_log.166 = private unnamed_addr constant [4 x ptr] [ptr @.str.96, ptr @.str.112, ptr @.str.113, ptr @.str.114], align 4
@switch.table.hdmi_infoframe_log.167 = private unnamed_addr constant [8 x ptr] [ptr @.str.96, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], align 4
@switch.table.hdmi_infoframe_log.168 = private unnamed_addr constant [11 x ptr] [ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.25, ptr @.str.131], align 4
@switch.table.hdmi_infoframe_log.169 = private unnamed_addr constant [9 x ptr] [ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.25, ptr @.str.144], align 4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hdmi_avi_infoframe_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %2, i8 0, i32 64, i1 false)
  store i32 130, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 1
  store i8 2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  store i8 13, ptr %4, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_avi_infoframe_check(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 130
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 13
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 2
  %16 = select i1 %15, i32 -22, i32 0
  br label %17

17:                                               ; preds = %12, %8, %4, %1
  %18 = phi i32 [ -22, %8 ], [ -22, %4 ], [ -22, %1 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_avi_infoframe_pack_only(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 130
  br i1 %5, label %6, label %198

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %198

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 13
  br i1 %13, label %14, label %198

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 2
  br i1 %17, label %198, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %2, 17
  br i1 %19, label %198, label %20

20:                                               ; preds = %18
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %21 = load i32, ptr %0, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %1, align 1
  %23 = load i8, ptr %7, align 4
  %24 = getelementptr i8, ptr %1, i32 1
  store i8 %23, ptr %24, align 1
  %25 = load i8, ptr %11, align 1
  %26 = getelementptr i8, ptr %1, i32 2
  store i8 %25, ptr %26, align 1
  %27 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %27, align 1
  %28 = getelementptr i8, ptr %1, i32 4
  %29 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 5
  %32 = and i32 %31, 96
  %33 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 3
  %36 = or i32 %32, %35
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %28, align 1
  %38 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %20
  %43 = or i8 %37, 16
  store i8 %43, ptr %28, align 1
  br label %44

44:                                               ; preds = %42, %20
  %45 = phi i8 [ %43, %42 ], [ %37, %20 ]
  %46 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 16
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 17
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %44
  %54 = or i8 %45, 8
  store i8 %54, ptr %28, align 1
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i8 [ %54, %53 ], [ %45, %49 ]
  %57 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 18
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 19
  %62 = load i16, ptr %61, align 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60, %55
  %65 = or i8 %56, 4
  store i8 %65, ptr %28, align 1
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = shl i32 %68, 6
  %70 = load i32, ptr %15, align 4
  %71 = shl i32 %70, 4
  %72 = and i32 %71, 48
  %73 = or i32 %72, %69
  %74 = load i32, ptr %38, align 4
  %75 = and i32 %74, 15
  %76 = or i32 %73, %75
  %77 = trunc i32 %76 to i8
  %78 = getelementptr i8, ptr %1, i32 5
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = shl i32 %80, 4
  %82 = and i32 %81, 112
  %83 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %84, 2
  %86 = and i32 %85, 12
  %87 = or i32 %86, %82
  %88 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 3
  %91 = or i32 %87, %90
  %92 = trunc i32 %91 to i8
  %93 = getelementptr i8, ptr %1, i32 6
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 8
  %95 = load i8, ptr %94, align 4, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %66
  %98 = or i8 %92, -128
  store i8 %98, ptr %93, align 1
  br label %99

99:                                               ; preds = %97, %66
  %100 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 12
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 127
  %103 = getelementptr i8, ptr %1, i32 7
  store i8 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 13
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 6
  %107 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 14
  %108 = load i32, ptr %107, align 4
  %109 = shl i32 %108, 4
  %110 = and i32 %109, 48
  %111 = or i32 %110, %106
  %112 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 15
  %113 = load i8, ptr %112, align 4
  %114 = and i8 %113, 15
  %115 = trunc i32 %111 to i8
  %116 = or i8 %114, %115
  %117 = getelementptr i8, ptr %1, i32 8
  store i8 %116, ptr %117, align 1
  %118 = load i16, ptr %46, align 2
  %119 = trunc i16 %118 to i8
  %120 = getelementptr i8, ptr %1, i32 9
  store i8 %119, ptr %120, align 1
  %121 = load i16, ptr %46, align 2
  %122 = lshr i16 %121, 8
  %123 = trunc i16 %122 to i8
  %124 = getelementptr i8, ptr %1, i32 10
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 17
  %126 = load i16, ptr %125, align 4
  %127 = trunc i16 %126 to i8
  %128 = getelementptr i8, ptr %1, i32 11
  store i8 %127, ptr %128, align 1
  %129 = load i16, ptr %125, align 4
  %130 = lshr i16 %129, 8
  %131 = trunc i16 %130 to i8
  %132 = getelementptr i8, ptr %1, i32 12
  store i8 %131, ptr %132, align 1
  %133 = load i16, ptr %57, align 2
  %134 = trunc i16 %133 to i8
  %135 = getelementptr i8, ptr %1, i32 13
  store i8 %134, ptr %135, align 1
  %136 = load i16, ptr %57, align 2
  %137 = lshr i16 %136, 8
  %138 = trunc i16 %137 to i8
  %139 = getelementptr i8, ptr %1, i32 14
  store i8 %138, ptr %139, align 1
  %140 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 19
  %141 = load i16, ptr %140, align 4
  %142 = trunc i16 %141 to i8
  %143 = getelementptr i8, ptr %1, i32 15
  store i8 %142, ptr %143, align 1
  %144 = load i16, ptr %140, align 4
  %145 = lshr i16 %144, 8
  %146 = trunc i16 %145 to i8
  %147 = getelementptr i8, ptr %1, i32 16
  store i8 %146, ptr %147, align 1
  %148 = getelementptr i8, ptr %1, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = getelementptr i8, ptr %1, i32 2
  %151 = load i8, ptr %150, align 1
  %152 = getelementptr i8, ptr %1, i32 3
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr i8, ptr %1, i32 4
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr i8, ptr %1, i32 5
  %157 = load i8, ptr %156, align 1
  %158 = getelementptr i8, ptr %1, i32 6
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr i8, ptr %1, i32 7
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr i8, ptr %1, i32 8
  %163 = load i8, ptr %162, align 1
  %164 = getelementptr i8, ptr %1, i32 9
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr i8, ptr %1, i32 10
  %167 = load i8, ptr %166, align 1
  %168 = getelementptr i8, ptr %1, i32 11
  %169 = load i8, ptr %168, align 1
  %170 = getelementptr i8, ptr %1, i32 12
  %171 = load i8, ptr %170, align 1
  %172 = getelementptr i8, ptr %1, i32 13
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr i8, ptr %1, i32 14
  %175 = load i8, ptr %174, align 1
  %176 = getelementptr i8, ptr %1, i32 15
  %177 = load i8, ptr %176, align 1
  %178 = getelementptr i8, ptr %1, i32 16
  %179 = load i8, ptr %178, align 1
  %180 = trunc i32 %21 to i8
  %181 = add i8 %149, %180
  %182 = add i8 %181, %151
  %183 = add i8 %182, %153
  %184 = add i8 %183, %155
  %185 = add i8 %184, %157
  %186 = add i8 %185, %159
  %187 = add i8 %186, %161
  %188 = add i8 %187, %163
  %189 = add i8 %188, %165
  %190 = add i8 %189, %167
  %191 = add i8 %190, %169
  %192 = add i8 %191, %171
  %193 = add i8 %192, %173
  %194 = add i8 %193, %175
  %195 = add i8 %194, %177
  %196 = add i8 %195, %179
  %197 = sub i8 0, %196
  store i8 %197, ptr %27, align 1
  br label %198

198:                                              ; preds = %99, %18, %14, %10, %6, %3
  %199 = phi i32 [ 17, %99 ], [ -28, %18 ], [ -22, %10 ], [ -22, %6 ], [ -22, %3 ], [ -22, %14 ]
  ret i32 %199
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 130
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 13
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @hdmi_avi_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %18, %14, %10, %6, %3
  %21 = phi i32 [ %19, %18 ], [ -22, %10 ], [ -22, %6 ], [ -22, %3 ], [ -22, %14 ]
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_spd_infoframe_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %4, i8 0, i32 32, i1 false)
  store i32 131, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 1
  store i8 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  store i8 25, ptr %6, align 1
  %7 = tail call i32 @strlen(ptr noundef %1)
  %8 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 3
  %9 = tail call i32 @llvm.umin.i32(i32 %7, i32 8)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %8, ptr align 1 %1, i32 %9, i1 false)
  %10 = tail call i32 @strlen(ptr noundef %2)
  %11 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 4
  %12 = tail call i32 @llvm.umin.i32(i32 %10, i32 16)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %11, ptr align 1 %2, i32 %12, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_spd_infoframe_check(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 131
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 25
  %12 = select i1 %11, i32 0, i32 -22
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i32 [ -22, %4 ], [ -22, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_spd_infoframe_pack_only(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 131
  br i1 %5, label %6, label %119

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %119

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 25
  br i1 %13, label %14, label %119

14:                                               ; preds = %10
  %15 = icmp ult i32 %2, 29
  br i1 %15, label %119, label %16

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %17 = load i32, ptr %0, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %1, align 1
  %19 = load i8, ptr %7, align 4
  %20 = getelementptr i8, ptr %1, i32 1
  store i8 %19, ptr %20, align 1
  %21 = load i8, ptr %11, align 1
  %22 = getelementptr i8, ptr %1, i32 2
  store i8 %21, ptr %22, align 1
  %23 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %23, align 1
  %24 = getelementptr i8, ptr %1, i32 4
  %25 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 3
  %26 = load i64, ptr %25, align 2
  store i64 %26, ptr %24, align 1
  %27 = getelementptr i8, ptr %1, i32 12
  %28 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %27, ptr noundef align 2 dereferenceable(16) %28, i32 16, i1 false)
  %29 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr i8, ptr %1, i32 28
  store i8 %31, ptr %32, align 1
  %33 = getelementptr i8, ptr %1, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %1, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr i8, ptr %1, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr i8, ptr %1, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr i8, ptr %1, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr i8, ptr %1, i32 6
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr i8, ptr %1, i32 7
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr i8, ptr %1, i32 8
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr i8, ptr %1, i32 9
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr i8, ptr %1, i32 10
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr i8, ptr %1, i32 11
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %1, i32 12
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr i8, ptr %1, i32 13
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr i8, ptr %1, i32 14
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %1, i32 15
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %1, i32 16
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr i8, ptr %1, i32 17
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %1, i32 18
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %1, i32 19
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr i8, ptr %1, i32 20
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %1, i32 21
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %1, i32 22
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr i8, ptr %1, i32 23
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %1, i32 24
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr i8, ptr %1, i32 25
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %1, i32 26
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %1, i32 27
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %1, i32 28
  %88 = load i8, ptr %87, align 1
  %89 = trunc i32 %17 to i8
  %90 = add i8 %34, %89
  %91 = add i8 %90, %36
  %92 = add i8 %91, %38
  %93 = add i8 %92, %40
  %94 = add i8 %93, %42
  %95 = add i8 %94, %44
  %96 = add i8 %95, %46
  %97 = add i8 %96, %48
  %98 = add i8 %97, %50
  %99 = add i8 %98, %52
  %100 = add i8 %99, %54
  %101 = add i8 %100, %56
  %102 = add i8 %101, %58
  %103 = add i8 %102, %60
  %104 = add i8 %103, %62
  %105 = add i8 %104, %64
  %106 = add i8 %105, %66
  %107 = add i8 %106, %68
  %108 = add i8 %107, %70
  %109 = add i8 %108, %72
  %110 = add i8 %109, %74
  %111 = add i8 %110, %76
  %112 = add i8 %111, %78
  %113 = add i8 %112, %80
  %114 = add i8 %113, %82
  %115 = add i8 %114, %84
  %116 = add i8 %115, %86
  %117 = add i8 %116, %88
  %118 = sub i8 0, %117
  store i8 %118, ptr %23, align 1
  br label %119

119:                                              ; preds = %16, %14, %10, %6, %3
  %120 = phi i32 [ 29, %16 ], [ -28, %14 ], [ -22, %6 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %120
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_spd_infoframe_pack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 131
  br i1 %5, label %6, label %111

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %111

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 25
  br i1 %13, label %14, label %111

14:                                               ; preds = %10
  %15 = icmp ult i32 %2, 29
  br i1 %15, label %111, label %16

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false) #16
  %17 = load i32, ptr %0, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %1, align 1
  %19 = load i8, ptr %7, align 4
  %20 = getelementptr i8, ptr %1, i32 1
  store i8 %19, ptr %20, align 1
  %21 = load i8, ptr %11, align 1
  %22 = getelementptr i8, ptr %1, i32 2
  store i8 %21, ptr %22, align 1
  %23 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %23, align 1
  %24 = getelementptr i8, ptr %1, i32 4
  %25 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 3
  %26 = load i64, ptr %25, align 2
  store i64 %26, ptr %24, align 1
  %27 = getelementptr i8, ptr %1, i32 12
  %28 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %27, ptr noundef align 2 dereferenceable(16) %28, i32 16, i1 false) #16
  %29 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr i8, ptr %1, i32 28
  store i8 %31, ptr %32, align 1
  %33 = zext i8 %19 to i32
  %34 = add i32 %17, %33
  %35 = zext i8 %21 to i32
  %36 = add i32 %34, %35
  %37 = trunc i64 %26 to i32
  %38 = add i32 %36, %37
  %39 = trunc i64 %26 to i32
  %40 = lshr i32 %39, 8
  %41 = add i32 %38, %40
  %42 = trunc i64 %26 to i32
  %43 = lshr i32 %42, 16
  %44 = add i32 %41, %43
  %45 = trunc i64 %26 to i32
  %46 = lshr i32 %45, 24
  %47 = add i32 %44, %46
  %48 = lshr i64 %26, 32
  %49 = trunc i64 %48 to i32
  %50 = add i32 %47, %49
  %51 = lshr i64 %26, 40
  %52 = trunc i64 %51 to i32
  %53 = add i32 %50, %52
  %54 = lshr i64 %26, 48
  %55 = trunc i64 %54 to i32
  %56 = add i32 %53, %55
  %57 = lshr i64 %26, 56
  %58 = trunc i64 %57 to i32
  %59 = add i32 %56, %58
  %60 = load i8, ptr %27, align 1
  %61 = getelementptr i8, ptr %1, i32 13
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %1, i32 14
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr i8, ptr %1, i32 15
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %1, i32 16
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %1, i32 17
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr i8, ptr %1, i32 18
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %1, i32 19
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %1, i32 20
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr i8, ptr %1, i32 21
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %1, i32 22
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr i8, ptr %1, i32 23
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %1, i32 24
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %1, i32 25
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %1, i32 26
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr i8, ptr %1, i32 27
  %90 = load i8, ptr %89, align 1
  %91 = load i8, ptr %32, align 1
  %92 = trunc i32 %59 to i8
  %93 = add i8 %60, %92
  %94 = add i8 %93, %62
  %95 = add i8 %94, %64
  %96 = add i8 %95, %66
  %97 = add i8 %96, %68
  %98 = add i8 %97, %70
  %99 = add i8 %98, %72
  %100 = add i8 %99, %74
  %101 = add i8 %100, %76
  %102 = add i8 %101, %78
  %103 = add i8 %102, %80
  %104 = add i8 %103, %82
  %105 = add i8 %104, %84
  %106 = add i8 %105, %86
  %107 = add i8 %106, %88
  %108 = add i8 %107, %90
  %109 = add i8 %108, %91
  %110 = sub i8 0, %109
  store i8 %110, ptr %23, align 1
  br label %111

111:                                              ; preds = %16, %14, %10, %6, %3
  %112 = phi i32 [ 29, %16 ], [ -28, %14 ], [ -22, %6 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %112
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @hdmi_audio_infoframe_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %2, i8 0, i32 24, i1 false)
  store i32 132, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 1
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  store i8 10, ptr %4, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_audio_infoframe_check(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 132
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 10
  %12 = select i1 %11, i32 0, i32 -22
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i32 [ -22, %4 ], [ -22, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_audio_infoframe_pack_only(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 132
  br i1 %5, label %6, label %106

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %106

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %106

14:                                               ; preds = %10
  %15 = icmp ult i32 %2, 14
  br i1 %15, label %106, label %16

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %17 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = icmp ugt i8 %18, 1
  %20 = add i8 %18, 7
  %21 = and i8 %20, 7
  %22 = select i1 %19, i8 %21, i8 0
  %23 = load i32, ptr %0, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %1, align 1
  %25 = load i8, ptr %7, align 4
  %26 = getelementptr i8, ptr %1, i32 1
  store i8 %25, ptr %26, align 1
  %27 = load i8, ptr %11, align 1
  %28 = getelementptr i8, ptr %1, i32 2
  store i8 %27, ptr %28, align 1
  %29 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %29, align 1
  %30 = getelementptr i8, ptr %1, i32 4
  %31 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = shl i8 %33, 4
  %35 = or i8 %34, %22
  store i8 %35, ptr %30, align 1
  %36 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 2
  %39 = and i32 %38, 28
  %40 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 3
  %43 = or i32 %39, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr i8, ptr %1, i32 5
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 31
  %50 = getelementptr i8, ptr %1, i32 6
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 8
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr i8, ptr %1, i32 7
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = shl i8 %55, 3
  %57 = and i8 %56, 120
  %58 = getelementptr i8, ptr %1, i32 8
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 10
  %60 = load i8, ptr %59, align 2, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %16
  %63 = or i8 %56, -128
  store i8 %63, ptr %58, align 1
  br label %64

64:                                               ; preds = %62, %16
  %65 = getelementptr i8, ptr %1, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %1, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %1, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr i8, ptr %1, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %1, i32 5
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %1, i32 6
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr i8, ptr %1, i32 7
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %1, i32 8
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr i8, ptr %1, i32 9
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %1, i32 10
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %1, i32 11
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %1, i32 12
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr i8, ptr %1, i32 13
  %90 = load i8, ptr %89, align 1
  %91 = trunc i32 %23 to i8
  %92 = add i8 %66, %91
  %93 = add i8 %92, %68
  %94 = add i8 %93, %70
  %95 = add i8 %94, %72
  %96 = add i8 %95, %74
  %97 = add i8 %96, %76
  %98 = add i8 %97, %78
  %99 = add i8 %98, %80
  %100 = add i8 %99, %82
  %101 = add i8 %100, %84
  %102 = add i8 %101, %86
  %103 = add i8 %102, %88
  %104 = add i8 %103, %90
  %105 = sub i8 0, %104
  store i8 %105, ptr %29, align 1
  br label %106

106:                                              ; preds = %64, %14, %10, %6, %3
  %107 = phi i32 [ 14, %64 ], [ -28, %14 ], [ -22, %6 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %107
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_audio_infoframe_pack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 132
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @hdmi_audio_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %16

16:                                               ; preds = %14, %10, %6, %3
  %17 = phi i32 [ %15, %14 ], [ -22, %6 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @hdmi_vendor_infoframe_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %2, i8 0, i32 20, i1 false)
  store i32 129, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 1
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 3
  store i32 3075, ptr %4, align 4
  %5 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  store i8 4, ptr %6, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_vendor_infoframe_check(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 7
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  %9 = icmp eq i32 %3, -1
  %10 = select i1 %8, i1 %9, i1 false
  %11 = select i1 %10, i8 4, i8 5
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i8 [ 6, %1 ], [ %11, %5 ]
  %14 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 3075
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  %29 = icmp eq i32 %3, -1
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %34, label %39

31:                                               ; preds = %25
  %32 = select i1 %29, i32 4, i32 5
  %33 = select i1 %4, i32 6, i32 %32
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i32 [ %33, %31 ], [ 5, %30 ]
  %36 = zext i8 %13 to i32
  %37 = icmp eq i32 %35, %36
  %38 = select i1 %37, i32 0, i32 -22
  br label %39

39:                                               ; preds = %34, %30, %21, %17, %12
  %40 = phi i32 [ -22, %21 ], [ -22, %17 ], [ -22, %12 ], [ -22, %30 ], [ %38, %34 ]
  ret i32 %40
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_vendor_infoframe_pack_only(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 129
  br i1 %5, label %6, label %86

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %86

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3075
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  br i1 %17, label %22, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %19, -1
  br i1 %21, label %27, label %86

22:                                               ; preds = %14
  %23 = icmp sgt i32 %19, 7
  %24 = icmp eq i32 %19, -1
  %25 = select i1 %24, i32 4, i32 5
  %26 = select i1 %23, i32 6, i32 %25
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ 5, %20 ]
  %29 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %27
  %34 = add nuw nsw i32 %28, 4
  %35 = icmp ugt i32 %34, %2
  br i1 %35, label %86, label %36

36:                                               ; preds = %33
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %37 = load i32, ptr %0, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %1, align 1
  %39 = load i8, ptr %7, align 4
  %40 = getelementptr i8, ptr %1, i32 1
  store i8 %39, ptr %40, align 1
  %41 = load i8, ptr %29, align 1
  %42 = getelementptr i8, ptr %1, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %43, align 1
  %44 = getelementptr i8, ptr %1, i32 4
  store i8 3, ptr %44, align 1
  %45 = getelementptr i8, ptr %1, i32 5
  store i8 12, ptr %45, align 1
  %46 = getelementptr i8, ptr %1, i32 6
  store i8 0, ptr %46, align 1
  %47 = load i32, ptr %18, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %63, label %49

49:                                               ; preds = %36
  %50 = getelementptr i8, ptr %1, i32 7
  store i8 64, ptr %50, align 1
  %51 = load i32, ptr %18, align 4
  %52 = trunc i32 %51 to i8
  %53 = shl i8 %52, 4
  %54 = getelementptr i8, ptr %1, i32 8
  store i8 %53, ptr %54, align 1
  %55 = load i32, ptr %18, align 4
  %56 = icmp sgt i32 %55, 7
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i8
  %61 = shl i8 %60, 4
  %62 = getelementptr i8, ptr %1, i32 9
  store i8 %61, ptr %62, align 1
  br label %71

63:                                               ; preds = %36
  %64 = load i8, ptr %15, align 4
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr i8, ptr %1, i32 7
  br i1 %65, label %70, label %67

67:                                               ; preds = %63
  store i8 32, ptr %66, align 1
  %68 = load i8, ptr %15, align 4
  %69 = getelementptr i8, ptr %1, i32 8
  store i8 %68, ptr %69, align 1
  br label %71

70:                                               ; preds = %63
  store i8 0, ptr %66, align 1
  br label %71

71:                                               ; preds = %70, %67, %57, %49
  %72 = and i32 %37, 255
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ 1, %71 ], [ %81, %73 ]
  %75 = phi i32 [ %72, %71 ], [ %80, %73 ]
  %76 = and i32 %75, 255
  %77 = getelementptr i8, ptr %1, i32 %74
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add nuw nsw i32 %76, %79
  %81 = add nuw nsw i32 %74, 1
  %82 = icmp eq i32 %81, %34
  br i1 %82, label %83, label %73

83:                                               ; preds = %73
  %84 = trunc i32 %80 to i8
  %85 = sub i8 0, %84
  store i8 %85, ptr %43, align 1
  br label %86

86:                                               ; preds = %83, %33, %27, %20, %10, %6, %3
  %87 = phi i32 [ %34, %83 ], [ -28, %33 ], [ -22, %10 ], [ -22, %6 ], [ -22, %3 ], [ -22, %20 ], [ -22, %27 ]
  ret i32 %87
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_vendor_infoframe_pack(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 7
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i32 %5, -1
  %12 = select i1 %10, i1 %11, i1 false
  %13 = select i1 %12, i8 4, i8 5
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i8 [ 6, %3 ], [ %13, %7 ]
  %16 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  store i8 %15, ptr %16, align 1
  %17 = load i32, ptr %0, align 4
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3075
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  %31 = icmp eq i32 %5, -1
  br i1 %30, label %33, label %32

32:                                               ; preds = %27
  br i1 %31, label %36, label %42

33:                                               ; preds = %27
  %34 = select i1 %31, i32 4, i32 5
  %35 = select i1 %6, i32 6, i32 %34
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ %35, %33 ], [ 5, %32 ]
  %38 = zext i8 %15 to i32
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call i32 @hdmi_vendor_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %42

42:                                               ; preds = %40, %36, %32, %23, %19, %14
  %43 = phi i32 [ %41, %40 ], [ -22, %23 ], [ -22, %19 ], [ -22, %14 ], [ -22, %32 ], [ -22, %36 ]
  ret i32 %43
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @hdmi_drm_infoframe_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %2, i8 0, i32 36, i1 false)
  store i32 135, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 1
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 2
  store i8 26, ptr %4, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_drm_infoframe_check(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 135
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 26
  %12 = select i1 %11, i32 0, i32 -22
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i32 [ -22, %4 ], [ -22, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_drm_infoframe_pack_only(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %6, 4
  %8 = icmp ugt i32 %7, %2
  br i1 %8, label %135, label %9

9:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %10 = load i32, ptr %0, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %1, align 1
  %12 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 1
  store i8 %13, ptr %14, align 1
  %15 = load i8, ptr %4, align 1
  %16 = getelementptr i8, ptr %1, i32 2
  store i8 %15, ptr %16, align 1
  %17 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %17, align 1
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr i8, ptr %1, i32 5
  store i8 %21, ptr %18, align 1
  %23 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr i8, ptr %1, i32 6
  store i8 %25, ptr %22, align 1
  %27 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 0
  %28 = load i16, ptr %27, align 4
  %29 = trunc i16 %28 to i8
  %30 = getelementptr i8, ptr %1, i32 7
  store i8 %29, ptr %26, align 1
  %31 = load i16, ptr %27, align 4
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  %34 = getelementptr i8, ptr %1, i32 8
  store i8 %33, ptr %30, align 1
  %35 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 0, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = trunc i16 %36 to i8
  %38 = getelementptr i8, ptr %1, i32 9
  store i8 %37, ptr %34, align 1
  %39 = load i16, ptr %35, align 2
  %40 = lshr i16 %39, 8
  %41 = trunc i16 %40 to i8
  %42 = getelementptr i8, ptr %1, i32 10
  store i8 %41, ptr %38, align 1
  %43 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 1
  %44 = load i16, ptr %43, align 4
  %45 = trunc i16 %44 to i8
  %46 = getelementptr i8, ptr %1, i32 11
  store i8 %45, ptr %42, align 1
  %47 = load i16, ptr %43, align 4
  %48 = lshr i16 %47, 8
  %49 = trunc i16 %48 to i8
  %50 = getelementptr i8, ptr %1, i32 12
  store i8 %49, ptr %46, align 1
  %51 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 1, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = trunc i16 %52 to i8
  %54 = getelementptr i8, ptr %1, i32 13
  store i8 %53, ptr %50, align 1
  %55 = load i16, ptr %51, align 2
  %56 = lshr i16 %55, 8
  %57 = trunc i16 %56 to i8
  %58 = getelementptr i8, ptr %1, i32 14
  store i8 %57, ptr %54, align 1
  %59 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 2
  %60 = load i16, ptr %59, align 4
  %61 = trunc i16 %60 to i8
  %62 = getelementptr i8, ptr %1, i32 15
  store i8 %61, ptr %58, align 1
  %63 = load i16, ptr %59, align 4
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  %66 = getelementptr i8, ptr %1, i32 16
  store i8 %65, ptr %62, align 1
  %67 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 2, i32 1
  %68 = load i16, ptr %67, align 2
  %69 = trunc i16 %68 to i8
  %70 = getelementptr i8, ptr %1, i32 17
  store i8 %69, ptr %66, align 1
  %71 = load i16, ptr %67, align 2
  %72 = lshr i16 %71, 8
  %73 = trunc i16 %72 to i8
  %74 = getelementptr i8, ptr %1, i32 18
  store i8 %73, ptr %70, align 1
  %75 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 6
  %76 = load i16, ptr %75, align 4
  %77 = trunc i16 %76 to i8
  %78 = getelementptr i8, ptr %1, i32 19
  store i8 %77, ptr %74, align 1
  %79 = load i16, ptr %75, align 4
  %80 = lshr i16 %79, 8
  %81 = trunc i16 %80 to i8
  %82 = getelementptr i8, ptr %1, i32 20
  store i8 %81, ptr %78, align 1
  %83 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 6, i32 1
  %84 = load i16, ptr %83, align 2
  %85 = trunc i16 %84 to i8
  %86 = getelementptr i8, ptr %1, i32 21
  store i8 %85, ptr %82, align 1
  %87 = load i16, ptr %83, align 2
  %88 = lshr i16 %87, 8
  %89 = trunc i16 %88 to i8
  %90 = getelementptr i8, ptr %1, i32 22
  store i8 %89, ptr %86, align 1
  %91 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 7
  %92 = load i16, ptr %91, align 4
  %93 = trunc i16 %92 to i8
  %94 = getelementptr i8, ptr %1, i32 23
  store i8 %93, ptr %90, align 1
  %95 = load i16, ptr %91, align 4
  %96 = lshr i16 %95, 8
  %97 = trunc i16 %96 to i8
  %98 = getelementptr i8, ptr %1, i32 24
  store i8 %97, ptr %94, align 1
  %99 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 8
  %100 = load i16, ptr %99, align 2
  %101 = trunc i16 %100 to i8
  %102 = getelementptr i8, ptr %1, i32 25
  store i8 %101, ptr %98, align 1
  %103 = load i16, ptr %99, align 2
  %104 = lshr i16 %103, 8
  %105 = trunc i16 %104 to i8
  %106 = getelementptr i8, ptr %1, i32 26
  store i8 %105, ptr %102, align 1
  %107 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 9
  %108 = load i16, ptr %107, align 4
  %109 = trunc i16 %108 to i8
  %110 = getelementptr i8, ptr %1, i32 27
  store i8 %109, ptr %106, align 1
  %111 = load i16, ptr %107, align 4
  %112 = lshr i16 %111, 8
  %113 = trunc i16 %112 to i8
  %114 = getelementptr i8, ptr %1, i32 28
  store i8 %113, ptr %110, align 1
  %115 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 10
  %116 = load i16, ptr %115, align 2
  %117 = trunc i16 %116 to i8
  %118 = getelementptr i8, ptr %1, i32 29
  store i8 %117, ptr %114, align 1
  %119 = load i16, ptr %115, align 2
  %120 = lshr i16 %119, 8
  %121 = trunc i16 %120 to i8
  store i8 %121, ptr %118, align 1
  br label %122

122:                                              ; preds = %122, %9
  %123 = phi i32 [ %129, %122 ], [ 0, %9 ]
  %124 = phi i32 [ %130, %122 ], [ 0, %9 ]
  %125 = getelementptr i8, ptr %1, i32 %123
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add nuw nsw i32 %124, %127
  %129 = add nuw nsw i32 %123, 1
  %130 = and i32 %128, 255
  %131 = icmp eq i32 %129, %7
  br i1 %131, label %132, label %122

132:                                              ; preds = %122
  %133 = trunc i32 %128 to i8
  %134 = sub i8 0, %133
  store i8 %134, ptr %17, align 1
  br label %135

135:                                              ; preds = %132, %3
  %136 = phi i32 [ %7, %132 ], [ -28, %3 ]
  ret i32 %136
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_drm_infoframe_pack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 135
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 26
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @hdmi_drm_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %16

16:                                               ; preds = %14, %10, %6, %3
  %17 = phi i32 [ %15, %14 ], [ -22, %6 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_infoframe_check(ptr nocapture noundef %0) #10 {
  %2 = load i32, ptr %0, align 4
  switch i32 %2, label %65 [
    i32 130, label %3
    i32 131, label %16
    i32 132, label %25
    i32 129, label %34
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %66

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 13
  br i1 %10, label %11, label %66

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 2
  %15 = select i1 %14, i32 -22, i32 0
  br label %66

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 25
  %24 = select i1 %23, i32 0, i32 -22
  br label %66

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 10
  %33 = select i1 %32, i32 0, i32 -22
  br label %66

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 3075
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 7
  %46 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 0
  %49 = icmp eq i32 %44, -1
  %50 = select i1 %48, i1 %49, i1 false
  %51 = select i1 %50, i8 4, i8 5
  %52 = select i1 %45, i8 6, i8 %51
  %53 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  store i8 %52, ptr %53, align 1
  %54 = icmp eq i8 %47, 0
  %55 = icmp eq i32 %44, -1
  br i1 %54, label %57, label %56

56:                                               ; preds = %42
  br i1 %55, label %60, label %66

57:                                               ; preds = %42
  %58 = select i1 %55, i32 4, i32 5
  %59 = select i1 %45, i32 6, i32 %58
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ %59, %57 ], [ 5, %56 ]
  %62 = zext i8 %52 to i32
  %63 = icmp eq i32 %61, %62
  %64 = select i1 %63, i32 0, i32 -22
  br label %66

65:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 875, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %2) #16
  br label %66

66:                                               ; preds = %65, %60, %56, %38, %34, %29, %25, %20, %16, %11, %7, %3
  %67 = phi i32 [ -22, %65 ], [ -22, %7 ], [ -22, %3 ], [ %15, %11 ], [ -22, %16 ], [ %24, %20 ], [ -22, %25 ], [ %33, %29 ], [ -22, %38 ], [ -22, %56 ], [ %64, %60 ], [ -22, %34 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_infoframe_pack_only(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #10 {
  %4 = load i32, ptr %0, align 4
  switch i32 %4, label %126 [
    i32 130, label %5
    i32 135, label %7
    i32 131, label %9
    i32 132, label %114
    i32 129, label %116
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @hdmi_avi_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %127

7:                                                ; preds = %3
  %8 = tail call i32 @hdmi_drm_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %127

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %127

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 25
  br i1 %16, label %17, label %127

17:                                               ; preds = %13
  %18 = icmp ult i32 %2, 29
  br i1 %18, label %127, label %19

19:                                               ; preds = %17
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false) #16
  %20 = load i32, ptr %0, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %1, align 1
  %22 = load i8, ptr %10, align 4
  %23 = getelementptr i8, ptr %1, i32 1
  store i8 %22, ptr %23, align 1
  %24 = load i8, ptr %14, align 1
  %25 = getelementptr i8, ptr %1, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr i8, ptr %1, i32 3
  store i8 0, ptr %26, align 1
  %27 = getelementptr i8, ptr %1, i32 4
  %28 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 3
  %29 = load i64, ptr %28, align 2
  store i64 %29, ptr %27, align 1
  %30 = getelementptr i8, ptr %1, i32 12
  %31 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %30, ptr noundef align 2 dereferenceable(16) %31, i32 16, i1 false) #16
  %32 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr i8, ptr %1, i32 28
  store i8 %34, ptr %35, align 1
  %36 = zext i8 %22 to i32
  %37 = add i32 %20, %36
  %38 = zext i8 %24 to i32
  %39 = add i32 %37, %38
  %40 = trunc i64 %29 to i32
  %41 = add i32 %39, %40
  %42 = trunc i64 %29 to i32
  %43 = lshr i32 %42, 8
  %44 = add i32 %41, %43
  %45 = trunc i64 %29 to i32
  %46 = lshr i32 %45, 16
  %47 = add i32 %44, %46
  %48 = trunc i64 %29 to i32
  %49 = lshr i32 %48, 24
  %50 = add i32 %47, %49
  %51 = lshr i64 %29, 32
  %52 = trunc i64 %51 to i32
  %53 = add i32 %50, %52
  %54 = lshr i64 %29, 40
  %55 = trunc i64 %54 to i32
  %56 = add i32 %53, %55
  %57 = lshr i64 %29, 48
  %58 = trunc i64 %57 to i32
  %59 = add i32 %56, %58
  %60 = lshr i64 %29, 56
  %61 = trunc i64 %60 to i32
  %62 = add i32 %59, %61
  %63 = load i8, ptr %30, align 1
  %64 = getelementptr i8, ptr %1, i32 13
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr i8, ptr %1, i32 14
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %1, i32 15
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %1, i32 16
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr i8, ptr %1, i32 17
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr i8, ptr %1, i32 18
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr i8, ptr %1, i32 19
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr i8, ptr %1, i32 20
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr i8, ptr %1, i32 21
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr i8, ptr %1, i32 22
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr i8, ptr %1, i32 23
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr i8, ptr %1, i32 24
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr i8, ptr %1, i32 25
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %1, i32 26
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr i8, ptr %1, i32 27
  %93 = load i8, ptr %92, align 1
  %94 = load i8, ptr %35, align 1
  %95 = trunc i32 %62 to i8
  %96 = add i8 %63, %95
  %97 = add i8 %96, %65
  %98 = add i8 %97, %67
  %99 = add i8 %98, %69
  %100 = add i8 %99, %71
  %101 = add i8 %100, %73
  %102 = add i8 %101, %75
  %103 = add i8 %102, %77
  %104 = add i8 %103, %79
  %105 = add i8 %104, %81
  %106 = add i8 %105, %83
  %107 = add i8 %106, %85
  %108 = add i8 %107, %87
  %109 = add i8 %108, %89
  %110 = add i8 %109, %91
  %111 = add i8 %110, %93
  %112 = add i8 %111, %94
  %113 = sub i8 0, %112
  store i8 %113, ptr %26, align 1
  br label %127

114:                                              ; preds = %3
  %115 = tail call i32 @hdmi_audio_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %127

116:                                              ; preds = %3
  %117 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %118 = load i8, ptr %117, align 4
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 3075
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = tail call i32 @hdmi_vendor_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %127

126:                                              ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 922, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %4) #16
  br label %127

127:                                              ; preds = %126, %124, %120, %116, %114, %19, %17, %13, %9, %7, %5
  %128 = phi i32 [ -22, %126 ], [ %115, %114 ], [ %8, %7 ], [ %6, %5 ], [ 29, %19 ], [ -28, %17 ], [ -22, %9 ], [ -22, %13 ], [ %125, %124 ], [ -22, %120 ], [ -22, %116 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_infoframe_pack(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #10 {
  %4 = load i32, ptr %0, align 4
  switch i32 %4, label %71 [
    i32 130, label %5
    i32 135, label %19
    i32 131, label %29
    i32 132, label %31
    i32 129, label %41
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %72

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 13
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 2
  br i1 %16, label %72, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @hdmi_avi_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %72

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 26
  br i1 %26, label %27, label %72

27:                                               ; preds = %23
  %28 = tail call i32 @hdmi_drm_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %72

29:                                               ; preds = %3
  %30 = tail call i32 @hdmi_spd_infoframe_pack(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %72

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 10
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = tail call i32 @hdmi_audio_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %72

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 3075
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 7
  %53 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 0
  %56 = icmp eq i32 %51, -1
  %57 = select i1 %55, i1 %56, i1 false
  %58 = select i1 %57, i8 4, i8 5
  %59 = select i1 %52, i8 6, i8 %58
  %60 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  br i1 %55, label %62, label %61

61:                                               ; preds = %49
  br i1 %56, label %65, label %72

62:                                               ; preds = %49
  %63 = select i1 %56, i32 4, i32 5
  %64 = select i1 %52, i32 6, i32 %63
  br label %65

65:                                               ; preds = %62, %61
  %66 = phi i32 [ %64, %62 ], [ 5, %61 ]
  %67 = zext i8 %59 to i32
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = tail call i32 @hdmi_vendor_infoframe_pack_only(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %72

71:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 971, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %4) #16
  br label %72

72:                                               ; preds = %71, %69, %65, %61, %45, %41, %39, %35, %31, %29, %27, %23, %19, %17, %13, %9, %5
  %73 = phi i32 [ -22, %71 ], [ %30, %29 ], [ %18, %17 ], [ -22, %9 ], [ -22, %5 ], [ -22, %13 ], [ %28, %27 ], [ -22, %19 ], [ -22, %23 ], [ %40, %39 ], [ -22, %31 ], [ -22, %35 ], [ %70, %69 ], [ -22, %45 ], [ -22, %61 ], [ -22, %65 ], [ -22, %41 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hdmi_infoframe_log(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #10 {
  %4 = alloca [17 x i8], align 1
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %287 [
    i32 130, label %6
    i32 131, label %116
    i32 132, label %138
    i32 129, label %197
    i32 135, label %238
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %12) #17
  %13 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = getelementptr inbounds [8 x ptr], ptr @switch.table.hdmi_infoframe_log, i32 0, i32 %14
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi ptr [ %18, %16 ], [ @.str.19, %6 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #17
  %21 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds [4 x ptr], ptr @switch.table.hdmi_infoframe_log.156, i32 0, i32 %22
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ %26, %24 ], [ @.str.19, %19 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %28) #17
  %29 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds [4 x ptr], ptr @switch.table.hdmi_infoframe_log.157, i32 0, i32 %30
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi ptr [ %34, %32 ], [ @.str.19, %27 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %36) #17
  %37 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 6
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds [6 x ptr], ptr @switch.table.hdmi_infoframe_log.158, i32 0, i32 %38
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi ptr [ %42, %40 ], [ @.str.19, %35 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %44) #17
  %45 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 15
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = add i32 %46, -2
  %50 = icmp ult i32 %49, 14
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds [14 x ptr], ptr @switch.table.hdmi_infoframe_log.159, i32 0, i32 %49
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %48, %43
  %55 = phi ptr [ @.str.19, %43 ], [ %53, %51 ], [ @.str.25, %48 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %55) #17
  %56 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 8
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %59) #17
  %60 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 9
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %61, 8
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = getelementptr inbounds [8 x ptr], ptr @switch.table.hdmi_infoframe_log.160, i32 0, i32 %61
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = phi ptr [ %65, %63 ], [ @.str.19, %54 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %67) #17
  %68 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 10
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr inbounds [4 x ptr], ptr @switch.table.hdmi_infoframe_log.161, i32 0, i32 %69
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi ptr [ %73, %71 ], [ @.str.19, %66 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %75) #17
  %76 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr inbounds [4 x ptr], ptr @switch.table.hdmi_infoframe_log.162, i32 0, i32 %77
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi ptr [ %81, %79 ], [ @.str.19, %74 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %83) #17
  %84 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 12
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %86) #17
  %87 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 13
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 1
  %90 = select i1 %89, ptr @.str.60, ptr @.str.19
  %91 = icmp eq i32 %88, 0
  %92 = select i1 %91, ptr @.str.59, ptr %90
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %92) #17
  %93 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 14
  %94 = load i32, ptr %93, align 4
  %95 = icmp ult i32 %94, 4
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = getelementptr inbounds [4 x ptr], ptr @switch.table.hdmi_infoframe_log.163, i32 0, i32 %94
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %82
  %100 = phi ptr [ %98, %96 ], [ @.str.19, %82 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %100) #17
  %101 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 15
  %102 = load i8, ptr %101, align 4
  %103 = zext i8 %102 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %103) #17
  %104 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 16
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 17
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 18
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %2, i32 0, i32 19
  %114 = load i16, ptr %113, align 4
  %115 = zext i16 %114 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %106, i32 noundef %109, i32 noundef %112, i32 noundef %115) #17
  br label %287

116:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #16
  %117 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 1
  %118 = load i8, ptr %117, align 4
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef %119, i32 noundef %122) #17
  %123 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %123, i8 0, i32 9, i1 false) #16
  %124 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %2, i32 0, i32 3
  %125 = call ptr @strncpy(ptr noundef nonnull %4, ptr noundef %124, i32 noundef 8) #16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef nonnull %4) #17
  %126 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %2, i32 0, i32 4
  %127 = call ptr @strncpy(ptr noundef nonnull %4, ptr noundef %126, i32 noundef 16) #16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef nonnull %4) #17
  %128 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %2, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = icmp ugt i32 %129, 255
  br i1 %130, label %136, label %131

131:                                              ; preds = %116
  %132 = icmp ult i32 %129, 14
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = getelementptr inbounds [14 x ptr], ptr @switch.table.hdmi_infoframe_log.164, i32 0, i32 %129
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %131, %116
  %137 = phi ptr [ @.str.19, %116 ], [ %135, %133 ], [ @.str.25, %131 ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef nonnull %137, i32 noundef %129) #17
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #16
  br label %287

138:                                              ; preds = %3
  %139 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i32
  %142 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 2
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23, i32 noundef %141, i32 noundef %144) #17
  %145 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 3
  %146 = load i8, ptr %145, align 2
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %138
  %149 = zext i8 %146 to i32
  %150 = add nsw i32 %149, -1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.85, i32 noundef %150) #17
  br label %152

151:                                              ; preds = %138
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.86) #17
  br label %152

152:                                              ; preds = %151, %148
  %153 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %154, 16
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = getelementptr inbounds [16 x ptr], ptr @switch.table.hdmi_infoframe_log.165, i32 0, i32 %154
  %158 = load ptr, ptr %157, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = phi ptr [ %158, %156 ], [ @.str.19, %152 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull %160) #17
  %161 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = icmp ult i32 %162, 4
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = getelementptr inbounds [4 x ptr], ptr @switch.table.hdmi_infoframe_log.166, i32 0, i32 %162
  %166 = load ptr, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %159
  %168 = phi ptr [ %166, %164 ], [ @.str.19, %159 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.88, ptr noundef nonnull %168) #17
  %169 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = icmp ult i32 %170, 8
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = getelementptr inbounds [8 x ptr], ptr @switch.table.hdmi_infoframe_log.167, i32 0, i32 %170
  %174 = load ptr, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %174, %172 ], [ @.str.19, %167 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef nonnull %176) #17
  %177 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 7
  %178 = load i32, ptr %177, align 4
  %179 = icmp ugt i32 %178, 31
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = icmp ult i32 %178, 11
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = getelementptr inbounds [11 x ptr], ptr @switch.table.hdmi_infoframe_log.168, i32 0, i32 %178
  %184 = load ptr, ptr %183, align 4
  br label %185

185:                                              ; preds = %182, %180, %175
  %186 = phi ptr [ @.str.19, %175 ], [ %184, %182 ], [ @.str.25, %180 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.90, ptr noundef nonnull %186) #17
  %187 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 8
  %188 = load i8, ptr %187, align 4
  %189 = zext i8 %188 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef %189) #17
  %190 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 9
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %192) #17
  %193 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 10
  %194 = load i8, ptr %193, align 2, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %195, ptr @.str.95, ptr @.str.94
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef nonnull %196) #17
  br label %287

197:                                              ; preds = %3
  %198 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 1
  %199 = load i8, ptr %198, align 4
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 2
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i32 noundef %200, i32 noundef %203) #17
  %204 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 3075
  br i1 %206, label %208, label %207

207:                                              ; preds = %197
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.132) #17
  br label %287

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %2, i32 0, i32 4
  %210 = load i8, ptr %209, align 4
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %2, i32 0, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.133) #17
  br label %287

217:                                              ; preds = %208
  %218 = zext i8 %210 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.134, i32 noundef %218) #17
  %219 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %2, i32 0, i32 5
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %287, label %222

222:                                              ; preds = %217, %212
  %223 = phi i32 [ %220, %217 ], [ %214, %212 ]
  %224 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %2, i32 0, i32 5
  %225 = icmp ugt i32 %223, 15
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = icmp ult i32 %223, 9
  br i1 %227, label %228, label %231

228:                                              ; preds = %226
  %229 = getelementptr inbounds [9 x ptr], ptr @switch.table.hdmi_infoframe_log.169, i32 0, i32 %223
  %230 = load ptr, ptr %229, align 4
  br label %231

231:                                              ; preds = %228, %226, %222
  %232 = phi ptr [ @.str.19, %222 ], [ %230, %228 ], [ @.str.25, %226 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.135, ptr noundef nonnull %232) #17
  %233 = load i32, ptr %224, align 4
  %234 = icmp sgt i32 %233, 7
  br i1 %234, label %235, label %287

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %2, i32 0, i32 6
  %237 = load i32, ptr %236, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.136, i32 noundef %237) #17
  br label %287

238:                                              ; preds = %3
  %239 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 1
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i32
  %242 = getelementptr inbounds %struct.hdmi_any_infoframe, ptr %2, i32 0, i32 2
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, i32 noundef %241, i32 noundef %244) #17
  %245 = load i8, ptr %242, align 1
  %246 = zext i8 %245 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.145, i32 noundef %246) #17
  %247 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 4
  %248 = load i32, ptr %247, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.146, i32 noundef %248) #17
  %249 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 3
  %250 = load i32, ptr %249, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.147, i32 noundef %250) #17
  %251 = getelementptr %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 5, i32 0
  %252 = load i16, ptr %251, align 4
  %253 = zext i16 %252 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.148, i32 noundef 0, i32 noundef %253) #17
  %254 = getelementptr %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 5, i32 0, i32 1
  %255 = load i16, ptr %254, align 2
  %256 = zext i16 %255 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 0, i32 noundef %256) #17
  %257 = getelementptr %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 5, i32 1
  %258 = load i16, ptr %257, align 4
  %259 = zext i16 %258 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.148, i32 noundef 1, i32 noundef %259) #17
  %260 = getelementptr %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 5, i32 1, i32 1
  %261 = load i16, ptr %260, align 2
  %262 = zext i16 %261 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 1, i32 noundef %262) #17
  %263 = getelementptr %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 5, i32 2
  %264 = load i16, ptr %263, align 4
  %265 = zext i16 %264 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.148, i32 noundef 2, i32 noundef %265) #17
  %266 = getelementptr %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 5, i32 2, i32 1
  %267 = load i16, ptr %266, align 2
  %268 = zext i16 %267 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 2, i32 noundef %268) #17
  %269 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 6
  %270 = load i16, ptr %269, align 4
  %271 = zext i16 %270 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.150, i32 noundef %271) #17
  %272 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 6, i32 1
  %273 = load i16, ptr %272, align 2
  %274 = zext i16 %273 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.151, i32 noundef %274) #17
  %275 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 7
  %276 = load i16, ptr %275, align 4
  %277 = zext i16 %276 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.152, i32 noundef %277) #17
  %278 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 8
  %279 = load i16, ptr %278, align 2
  %280 = zext i16 %279 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.153, i32 noundef %280) #17
  %281 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 9
  %282 = load i16, ptr %281, align 4
  %283 = zext i16 %282 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.154, i32 noundef %283) #17
  %284 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %2, i32 0, i32 10
  %285 = load i16, ptr %284, align 2
  %286 = zext i16 %285 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.155, i32 noundef %286) #17
  br label %287

287:                                              ; preds = %238, %235, %231, %217, %216, %207, %185, %136, %99, %3
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_drm_infoframe_unpack_only(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 {
  %4 = icmp ult i32 %2, 26
  br i1 %4, label %125, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %6, i8 0, i32 36, i1 false) #16
  store i32 135, ptr %0, align 4
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 2
  store i8 26, ptr %7, align 1
  %8 = load i8, ptr %1, align 1
  %9 = and i8 %8, 7
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %1, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 7
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %1, i32 2
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %17, align 1
  %20 = getelementptr i8, ptr %1, i32 4
  %21 = load i8, ptr %18, align 1
  %22 = zext i8 %21 to i16
  %23 = shl nuw i16 %22, 8
  %24 = zext i8 %19 to i16
  %25 = or i16 %23, %24
  %26 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 0
  store i16 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %1, i32 5
  %28 = load i8, ptr %20, align 1
  %29 = getelementptr i8, ptr %1, i32 6
  %30 = load i8, ptr %27, align 1
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  %33 = zext i8 %28 to i16
  %34 = or i16 %32, %33
  %35 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i16 %34, ptr %35, align 2
  %36 = getelementptr i8, ptr %1, i32 7
  %37 = load i8, ptr %29, align 1
  %38 = getelementptr i8, ptr %1, i32 8
  %39 = load i8, ptr %36, align 1
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = zext i8 %37 to i16
  %43 = or i16 %41, %42
  %44 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 1
  store i16 %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %1, i32 9
  %46 = load i8, ptr %38, align 1
  %47 = getelementptr i8, ptr %1, i32 10
  %48 = load i8, ptr %45, align 1
  %49 = zext i8 %48 to i16
  %50 = shl nuw i16 %49, 8
  %51 = zext i8 %46 to i16
  %52 = or i16 %50, %51
  %53 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 1, i32 1
  store i16 %52, ptr %53, align 2
  %54 = getelementptr i8, ptr %1, i32 11
  %55 = load i8, ptr %47, align 1
  %56 = getelementptr i8, ptr %1, i32 12
  %57 = load i8, ptr %54, align 1
  %58 = zext i8 %57 to i16
  %59 = shl nuw i16 %58, 8
  %60 = zext i8 %55 to i16
  %61 = or i16 %59, %60
  %62 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 2
  store i16 %61, ptr %62, align 4
  %63 = getelementptr i8, ptr %1, i32 13
  %64 = load i8, ptr %56, align 1
  %65 = load i8, ptr %63, align 1
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = zext i8 %64 to i16
  %69 = or i16 %67, %68
  %70 = getelementptr %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 5, i32 2, i32 1
  store i16 %69, ptr %70, align 2
  %71 = getelementptr i8, ptr %1, i32 15
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i16
  %74 = shl nuw i16 %73, 8
  %75 = getelementptr i8, ptr %1, i32 14
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i16
  %78 = or i16 %74, %77
  %79 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 6
  store i16 %78, ptr %79, align 4
  %80 = getelementptr i8, ptr %1, i32 17
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i16
  %83 = shl nuw i16 %82, 8
  %84 = getelementptr i8, ptr %1, i32 16
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i16
  %87 = or i16 %83, %86
  %88 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 6, i32 1
  store i16 %87, ptr %88, align 2
  %89 = getelementptr i8, ptr %1, i32 19
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i16
  %92 = shl nuw i16 %91, 8
  %93 = getelementptr i8, ptr %1, i32 18
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i16
  %96 = or i16 %92, %95
  %97 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 7
  store i16 %96, ptr %97, align 4
  %98 = getelementptr i8, ptr %1, i32 21
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i16
  %101 = shl nuw i16 %100, 8
  %102 = getelementptr i8, ptr %1, i32 20
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i16
  %105 = or i16 %101, %104
  %106 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 8
  store i16 %105, ptr %106, align 2
  %107 = getelementptr i8, ptr %1, i32 23
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i16
  %110 = shl nuw i16 %109, 8
  %111 = getelementptr i8, ptr %1, i32 22
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i16
  %114 = or i16 %110, %113
  %115 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 9
  store i16 %114, ptr %115, align 4
  %116 = getelementptr i8, ptr %1, i32 25
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i16
  %119 = shl nuw i16 %118, 8
  %120 = getelementptr i8, ptr %1, i32 24
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i16
  %123 = or i16 %119, %122
  %124 = getelementptr inbounds %struct.hdmi_drm_infoframe, ptr %0, i32 0, i32 10
  store i16 %123, ptr %124, align 2
  br label %125

125:                                              ; preds = %5, %3
  %126 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %126
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_infoframe_unpack(ptr noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) #12 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %561, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1
  switch i8 %6, label %561 [
    i8 -126, label %7
    i8 -121, label %168
    i8 -125, label %264
    i8 -124, label %366
    i8 -127, label %443
  ]

7:                                                ; preds = %5
  %8 = icmp ult i32 %2, 17
  br i1 %8, label %561, label %9

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %561

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 13
  br i1 %16, label %17, label %561

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = add i8 %19, -111
  %21 = getelementptr i8, ptr %1, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %20, %22
  %24 = getelementptr i8, ptr %1, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %23, %25
  %27 = getelementptr i8, ptr %1, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %26, %28
  %30 = getelementptr i8, ptr %1, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = add i8 %29, %31
  %33 = getelementptr i8, ptr %1, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %32, %34
  %36 = getelementptr i8, ptr %1, i32 9
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %35, %37
  %39 = getelementptr i8, ptr %1, i32 10
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %38, %40
  %42 = getelementptr i8, ptr %1, i32 11
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %41, %43
  %45 = getelementptr i8, ptr %1, i32 12
  %46 = load i8, ptr %45, align 1
  %47 = add i8 %44, %46
  %48 = getelementptr i8, ptr %1, i32 13
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %47, %49
  %51 = getelementptr i8, ptr %1, i32 14
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %50, %52
  %54 = getelementptr i8, ptr %1, i32 15
  %55 = load i8, ptr %54, align 1
  %56 = add i8 %53, %55
  %57 = getelementptr i8, ptr %1, i32 16
  %58 = load i8, ptr %57, align 1
  %59 = sub i8 0, %58
  %60 = icmp eq i8 %56, %59
  br i1 %60, label %61, label %561

61:                                               ; preds = %17
  %62 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %62, i8 0, i32 64, i1 false) #16
  store i32 130, ptr %0, align 4
  store i8 2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 2
  store i8 13, ptr %63, align 1
  %64 = load i8, ptr %21, align 1
  %65 = lshr i8 %64, 5
  %66 = and i8 %65, 3
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  %69 = load i8, ptr %21, align 1
  %70 = and i8 %69, 16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = load i8, ptr %24, align 1
  %74 = and i8 %73, 15
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 7
  store i32 %75, ptr %76, align 4
  %77 = load i8, ptr %21, align 1
  br label %78

78:                                               ; preds = %72, %61
  %79 = phi i8 [ %77, %72 ], [ %69, %61 ]
  %80 = and i8 %79, 8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %78
  %83 = load i8, ptr %39, align 1
  %84 = zext i8 %83 to i16
  %85 = shl nuw i16 %84, 8
  %86 = load i8, ptr %36, align 1
  %87 = zext i8 %86 to i16
  %88 = or i16 %85, %87
  %89 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 16
  store i16 %88, ptr %89, align 2
  %90 = load i8, ptr %45, align 1
  %91 = zext i8 %90 to i16
  %92 = shl nuw i16 %91, 8
  %93 = load i8, ptr %42, align 1
  %94 = zext i8 %93 to i16
  %95 = or i16 %92, %94
  %96 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 17
  store i16 %95, ptr %96, align 4
  %97 = load i8, ptr %21, align 1
  br label %98

98:                                               ; preds = %82, %78
  %99 = phi i8 [ %97, %82 ], [ %79, %78 ]
  %100 = and i8 %99, 4
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = load i8, ptr %51, align 1
  %104 = zext i8 %103 to i16
  %105 = shl nuw i16 %104, 8
  %106 = load i8, ptr %48, align 1
  %107 = zext i8 %106 to i16
  %108 = or i16 %105, %107
  %109 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 18
  store i16 %108, ptr %109, align 2
  %110 = load i8, ptr %57, align 1
  %111 = zext i8 %110 to i16
  %112 = shl nuw i16 %111, 8
  %113 = load i8, ptr %54, align 1
  %114 = zext i8 %113 to i16
  %115 = or i16 %112, %114
  %116 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 19
  store i16 %115, ptr %116, align 4
  %117 = load i8, ptr %21, align 1
  br label %118

118:                                              ; preds = %102, %98
  %119 = phi i8 [ %117, %102 ], [ %99, %98 ]
  %120 = and i8 %119, 3
  %121 = zext i8 %120 to i32
  %122 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 4
  store i32 %121, ptr %122, align 4
  %123 = load i8, ptr %24, align 1
  %124 = lshr i8 %123, 6
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 5
  store i32 %125, ptr %126, align 4
  %127 = load i8, ptr %24, align 1
  %128 = lshr i8 %127, 4
  %129 = and i8 %128, 3
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 6
  store i32 %130, ptr %131, align 4
  %132 = load i8, ptr %24, align 1
  %133 = and i8 %132, 15
  %134 = zext i8 %133 to i32
  %135 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 7
  store i32 %134, ptr %135, align 4
  %136 = load i8, ptr %27, align 1
  %137 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 8
  %138 = lshr i8 %136, 7
  store i8 %138, ptr %137, align 4
  %139 = load i8, ptr %27, align 1
  %140 = lshr i8 %139, 4
  %141 = and i8 %140, 7
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 9
  store i32 %142, ptr %143, align 4
  %144 = load i8, ptr %27, align 1
  %145 = lshr i8 %144, 2
  %146 = and i8 %145, 3
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 10
  store i32 %147, ptr %148, align 4
  %149 = load i8, ptr %27, align 1
  %150 = and i8 %149, 3
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 11
  store i32 %151, ptr %152, align 4
  %153 = load i8, ptr %30, align 1
  %154 = and i8 %153, 127
  %155 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 12
  store i8 %154, ptr %155, align 4
  %156 = load i8, ptr %33, align 1
  %157 = lshr i8 %156, 6
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 13
  store i32 %158, ptr %159, align 4
  %160 = load i8, ptr %33, align 1
  %161 = lshr i8 %160, 4
  %162 = and i8 %161, 3
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 14
  store i32 %163, ptr %164, align 4
  %165 = load i8, ptr %33, align 1
  %166 = and i8 %165, 15
  %167 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %0, i32 0, i32 15
  store i8 %166, ptr %167, align 4
  br label %561

168:                                              ; preds = %5
  %169 = icmp ult i32 %2, 30
  br i1 %169, label %561, label %170

170:                                              ; preds = %168
  %171 = getelementptr i8, ptr %1, i32 1
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, 1
  br i1 %173, label %174, label %561

174:                                              ; preds = %170
  %175 = getelementptr i8, ptr %1, i32 2
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 26
  br i1 %177, label %178, label %561

178:                                              ; preds = %174
  %179 = getelementptr i8, ptr %1, i32 3
  %180 = load i8, ptr %179, align 1
  %181 = add i8 %180, -94
  %182 = getelementptr i8, ptr %1, i32 4
  %183 = load i8, ptr %182, align 1
  %184 = add i8 %181, %183
  %185 = getelementptr i8, ptr %1, i32 5
  %186 = load i8, ptr %185, align 1
  %187 = add i8 %184, %186
  %188 = getelementptr i8, ptr %1, i32 6
  %189 = load i8, ptr %188, align 1
  %190 = add i8 %187, %189
  %191 = getelementptr i8, ptr %1, i32 7
  %192 = load i8, ptr %191, align 1
  %193 = add i8 %190, %192
  %194 = getelementptr i8, ptr %1, i32 8
  %195 = load i8, ptr %194, align 1
  %196 = add i8 %193, %195
  %197 = getelementptr i8, ptr %1, i32 9
  %198 = load i8, ptr %197, align 1
  %199 = add i8 %196, %198
  %200 = getelementptr i8, ptr %1, i32 10
  %201 = load i8, ptr %200, align 1
  %202 = add i8 %199, %201
  %203 = getelementptr i8, ptr %1, i32 11
  %204 = load i8, ptr %203, align 1
  %205 = add i8 %202, %204
  %206 = getelementptr i8, ptr %1, i32 12
  %207 = load i8, ptr %206, align 1
  %208 = add i8 %205, %207
  %209 = getelementptr i8, ptr %1, i32 13
  %210 = load i8, ptr %209, align 1
  %211 = add i8 %208, %210
  %212 = getelementptr i8, ptr %1, i32 14
  %213 = load i8, ptr %212, align 1
  %214 = add i8 %211, %213
  %215 = getelementptr i8, ptr %1, i32 15
  %216 = load i8, ptr %215, align 1
  %217 = add i8 %214, %216
  %218 = getelementptr i8, ptr %1, i32 16
  %219 = load i8, ptr %218, align 1
  %220 = add i8 %217, %219
  %221 = getelementptr i8, ptr %1, i32 17
  %222 = load i8, ptr %221, align 1
  %223 = add i8 %220, %222
  %224 = getelementptr i8, ptr %1, i32 18
  %225 = load i8, ptr %224, align 1
  %226 = add i8 %223, %225
  %227 = getelementptr i8, ptr %1, i32 19
  %228 = load i8, ptr %227, align 1
  %229 = add i8 %226, %228
  %230 = getelementptr i8, ptr %1, i32 20
  %231 = load i8, ptr %230, align 1
  %232 = add i8 %229, %231
  %233 = getelementptr i8, ptr %1, i32 21
  %234 = load i8, ptr %233, align 1
  %235 = add i8 %232, %234
  %236 = getelementptr i8, ptr %1, i32 22
  %237 = load i8, ptr %236, align 1
  %238 = add i8 %235, %237
  %239 = getelementptr i8, ptr %1, i32 23
  %240 = load i8, ptr %239, align 1
  %241 = add i8 %238, %240
  %242 = getelementptr i8, ptr %1, i32 24
  %243 = load i8, ptr %242, align 1
  %244 = add i8 %241, %243
  %245 = getelementptr i8, ptr %1, i32 25
  %246 = load i8, ptr %245, align 1
  %247 = add i8 %244, %246
  %248 = getelementptr i8, ptr %1, i32 26
  %249 = load i8, ptr %248, align 1
  %250 = add i8 %247, %249
  %251 = getelementptr i8, ptr %1, i32 27
  %252 = load i8, ptr %251, align 1
  %253 = add i8 %250, %252
  %254 = getelementptr i8, ptr %1, i32 28
  %255 = load i8, ptr %254, align 1
  %256 = add i8 %253, %255
  %257 = getelementptr i8, ptr %1, i32 29
  %258 = load i8, ptr %257, align 1
  %259 = sub i8 0, %258
  %260 = icmp eq i8 %256, %259
  br i1 %260, label %261, label %561

261:                                              ; preds = %178
  %262 = add i32 %2, -4
  %263 = tail call i32 @hdmi_drm_infoframe_unpack_only(ptr noundef %0, ptr noundef %182, i32 noundef %262) #16
  br label %561

264:                                              ; preds = %5
  %265 = icmp ult i32 %2, 29
  br i1 %265, label %561, label %266

266:                                              ; preds = %264
  %267 = getelementptr i8, ptr %1, i32 1
  %268 = load i8, ptr %267, align 1
  %269 = icmp eq i8 %268, 1
  br i1 %269, label %270, label %561

270:                                              ; preds = %266
  %271 = getelementptr i8, ptr %1, i32 2
  %272 = load i8, ptr %271, align 1
  %273 = icmp eq i8 %272, 25
  br i1 %273, label %274, label %561

274:                                              ; preds = %270
  %275 = getelementptr i8, ptr %1, i32 3
  %276 = load i8, ptr %275, align 1
  %277 = add i8 %276, -99
  %278 = getelementptr i8, ptr %1, i32 4
  %279 = load i8, ptr %278, align 1
  %280 = add i8 %277, %279
  %281 = getelementptr i8, ptr %1, i32 5
  %282 = load i8, ptr %281, align 1
  %283 = add i8 %280, %282
  %284 = getelementptr i8, ptr %1, i32 6
  %285 = load i8, ptr %284, align 1
  %286 = add i8 %283, %285
  %287 = getelementptr i8, ptr %1, i32 7
  %288 = load i8, ptr %287, align 1
  %289 = add i8 %286, %288
  %290 = getelementptr i8, ptr %1, i32 8
  %291 = load i8, ptr %290, align 1
  %292 = add i8 %289, %291
  %293 = getelementptr i8, ptr %1, i32 9
  %294 = load i8, ptr %293, align 1
  %295 = add i8 %292, %294
  %296 = getelementptr i8, ptr %1, i32 10
  %297 = load i8, ptr %296, align 1
  %298 = add i8 %295, %297
  %299 = getelementptr i8, ptr %1, i32 11
  %300 = load i8, ptr %299, align 1
  %301 = add i8 %298, %300
  %302 = getelementptr i8, ptr %1, i32 12
  %303 = load i8, ptr %302, align 1
  %304 = add i8 %301, %303
  %305 = getelementptr i8, ptr %1, i32 13
  %306 = load i8, ptr %305, align 1
  %307 = add i8 %304, %306
  %308 = getelementptr i8, ptr %1, i32 14
  %309 = load i8, ptr %308, align 1
  %310 = add i8 %307, %309
  %311 = getelementptr i8, ptr %1, i32 15
  %312 = load i8, ptr %311, align 1
  %313 = add i8 %310, %312
  %314 = getelementptr i8, ptr %1, i32 16
  %315 = load i8, ptr %314, align 1
  %316 = add i8 %313, %315
  %317 = getelementptr i8, ptr %1, i32 17
  %318 = load i8, ptr %317, align 1
  %319 = add i8 %316, %318
  %320 = getelementptr i8, ptr %1, i32 18
  %321 = load i8, ptr %320, align 1
  %322 = add i8 %319, %321
  %323 = getelementptr i8, ptr %1, i32 19
  %324 = load i8, ptr %323, align 1
  %325 = add i8 %322, %324
  %326 = getelementptr i8, ptr %1, i32 20
  %327 = load i8, ptr %326, align 1
  %328 = add i8 %325, %327
  %329 = getelementptr i8, ptr %1, i32 21
  %330 = load i8, ptr %329, align 1
  %331 = add i8 %328, %330
  %332 = getelementptr i8, ptr %1, i32 22
  %333 = load i8, ptr %332, align 1
  %334 = add i8 %331, %333
  %335 = getelementptr i8, ptr %1, i32 23
  %336 = load i8, ptr %335, align 1
  %337 = add i8 %334, %336
  %338 = getelementptr i8, ptr %1, i32 24
  %339 = load i8, ptr %338, align 1
  %340 = add i8 %337, %339
  %341 = getelementptr i8, ptr %1, i32 25
  %342 = load i8, ptr %341, align 1
  %343 = add i8 %340, %342
  %344 = getelementptr i8, ptr %1, i32 26
  %345 = load i8, ptr %344, align 1
  %346 = add i8 %343, %345
  %347 = getelementptr i8, ptr %1, i32 27
  %348 = load i8, ptr %347, align 1
  %349 = add i8 %346, %348
  %350 = getelementptr i8, ptr %1, i32 28
  %351 = load i8, ptr %350, align 1
  %352 = sub i8 0, %351
  %353 = icmp eq i8 %349, %352
  br i1 %353, label %354, label %561

354:                                              ; preds = %274
  %355 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %355, i8 0, i32 32, i1 false) #16
  store i32 131, ptr %0, align 4
  store i8 1, ptr %355, align 4
  %356 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 2
  store i8 25, ptr %356, align 1
  %357 = tail call i32 @strlen(ptr noundef %278) #16
  %358 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 3
  %359 = tail call i32 @llvm.umin.i32(i32 %357, i32 8) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %358, ptr align 1 %278, i32 %359, i1 false) #16
  %360 = tail call i32 @strlen(ptr noundef %302) #16
  %361 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 4
  %362 = tail call i32 @llvm.umin.i32(i32 %360, i32 16) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %361, ptr align 1 %302, i32 %362, i1 false) #16
  %363 = load i8, ptr %350, align 1
  %364 = zext i8 %363 to i32
  %365 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %0, i32 0, i32 5
  store i32 %364, ptr %365, align 4
  br label %561

366:                                              ; preds = %5
  %367 = icmp ult i32 %2, 14
  br i1 %367, label %561, label %368

368:                                              ; preds = %366
  %369 = getelementptr i8, ptr %1, i32 1
  %370 = load i8, ptr %369, align 1
  %371 = icmp eq i8 %370, 1
  br i1 %371, label %372, label %561

372:                                              ; preds = %368
  %373 = getelementptr i8, ptr %1, i32 2
  %374 = load i8, ptr %373, align 1
  %375 = icmp eq i8 %374, 10
  br i1 %375, label %376, label %561

376:                                              ; preds = %372
  %377 = getelementptr i8, ptr %1, i32 3
  %378 = load i8, ptr %377, align 1
  %379 = add i8 %378, -113
  %380 = getelementptr i8, ptr %1, i32 4
  %381 = load i8, ptr %380, align 1
  %382 = add i8 %379, %381
  %383 = getelementptr i8, ptr %1, i32 5
  %384 = load i8, ptr %383, align 1
  %385 = add i8 %382, %384
  %386 = getelementptr i8, ptr %1, i32 6
  %387 = load i8, ptr %386, align 1
  %388 = add i8 %385, %387
  %389 = getelementptr i8, ptr %1, i32 7
  %390 = load i8, ptr %389, align 1
  %391 = add i8 %388, %390
  %392 = getelementptr i8, ptr %1, i32 8
  %393 = load i8, ptr %392, align 1
  %394 = add i8 %391, %393
  %395 = getelementptr i8, ptr %1, i32 9
  %396 = load i8, ptr %395, align 1
  %397 = add i8 %394, %396
  %398 = getelementptr i8, ptr %1, i32 10
  %399 = load i8, ptr %398, align 1
  %400 = add i8 %397, %399
  %401 = getelementptr i8, ptr %1, i32 11
  %402 = load i8, ptr %401, align 1
  %403 = add i8 %400, %402
  %404 = getelementptr i8, ptr %1, i32 12
  %405 = load i8, ptr %404, align 1
  %406 = add i8 %403, %405
  %407 = getelementptr i8, ptr %1, i32 13
  %408 = load i8, ptr %407, align 1
  %409 = sub i8 0, %408
  %410 = icmp eq i8 %406, %409
  br i1 %410, label %411, label %561

411:                                              ; preds = %376
  %412 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %412, i8 0, i32 24, i1 false) #16
  store i32 132, ptr %0, align 4
  store i8 1, ptr %412, align 4
  %413 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 2
  store i8 10, ptr %413, align 1
  %414 = load i8, ptr %380, align 1
  %415 = and i8 %414, 7
  %416 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 3
  store i8 %415, ptr %416, align 2
  %417 = load i8, ptr %380, align 1
  %418 = lshr i8 %417, 4
  %419 = zext i8 %418 to i32
  %420 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 4
  store i32 %419, ptr %420, align 4
  %421 = load i8, ptr %383, align 1
  %422 = and i8 %421, 3
  %423 = zext i8 %422 to i32
  %424 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 5
  store i32 %423, ptr %424, align 4
  %425 = load i8, ptr %383, align 1
  %426 = lshr i8 %425, 2
  %427 = and i8 %426, 7
  %428 = zext i8 %427 to i32
  %429 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 6
  store i32 %428, ptr %429, align 4
  %430 = load i8, ptr %386, align 1
  %431 = and i8 %430, 31
  %432 = zext i8 %431 to i32
  %433 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 7
  store i32 %432, ptr %433, align 4
  %434 = load i8, ptr %389, align 1
  %435 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 8
  store i8 %434, ptr %435, align 4
  %436 = load i8, ptr %392, align 1
  %437 = lshr i8 %436, 3
  %438 = and i8 %437, 15
  %439 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 9
  store i8 %438, ptr %439, align 1
  %440 = load i8, ptr %392, align 1
  %441 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %0, i32 0, i32 10
  %442 = lshr i8 %440, 7
  store i8 %442, ptr %441, align 2
  br label %561

443:                                              ; preds = %5
  %444 = getelementptr i8, ptr %1, i32 1
  %445 = load i8, ptr %444, align 1
  %446 = icmp eq i8 %445, 1
  br i1 %446, label %447, label %561

447:                                              ; preds = %443
  %448 = getelementptr i8, ptr %1, i32 2
  %449 = load i8, ptr %448, align 1
  %450 = add i8 %449, -4
  %451 = icmp ult i8 %450, 3
  br i1 %451, label %452, label %561

452:                                              ; preds = %447
  %453 = zext i8 %449 to i32
  %454 = add nuw nsw i32 %453, 4
  %455 = icmp ugt i32 %454, %2
  br i1 %455, label %561, label %456

456:                                              ; preds = %452
  %457 = getelementptr i8, ptr %1, i32 2
  %458 = load i8, ptr %457, align 1
  %459 = zext i8 %458 to i32
  %460 = add nuw nsw i32 %459, 130
  %461 = getelementptr i8, ptr %1, i32 3
  %462 = load i8, ptr %461, align 1
  %463 = and i32 %460, 255
  %464 = zext i8 %462 to i32
  %465 = add nuw nsw i32 %463, %464
  %466 = icmp eq i8 %449, 0
  br i1 %466, label %508, label %467

467:                                              ; preds = %456
  %468 = getelementptr i8, ptr %1, i32 4
  %469 = load i8, ptr %468, align 1
  %470 = and i32 %465, 255
  %471 = zext i8 %469 to i32
  %472 = add nuw nsw i32 %470, %471
  %473 = icmp eq i32 %454, 5
  br i1 %473, label %508, label %474

474:                                              ; preds = %467
  %475 = getelementptr i8, ptr %1, i32 5
  %476 = load i8, ptr %475, align 1
  %477 = and i32 %472, 255
  %478 = zext i8 %476 to i32
  %479 = add nuw nsw i32 %477, %478
  %480 = icmp eq i32 %454, 6
  br i1 %480, label %508, label %481

481:                                              ; preds = %474
  %482 = getelementptr i8, ptr %1, i32 6
  %483 = load i8, ptr %482, align 1
  %484 = and i32 %479, 255
  %485 = zext i8 %483 to i32
  %486 = add nuw nsw i32 %484, %485
  %487 = icmp eq i32 %454, 7
  br i1 %487, label %508, label %488

488:                                              ; preds = %481
  %489 = getelementptr i8, ptr %1, i32 7
  %490 = load i8, ptr %489, align 1
  %491 = and i32 %486, 255
  %492 = zext i8 %490 to i32
  %493 = add nuw nsw i32 %491, %492
  %494 = icmp eq i32 %454, 8
  br i1 %494, label %508, label %495

495:                                              ; preds = %488
  %496 = getelementptr i8, ptr %1, i32 8
  %497 = load i8, ptr %496, align 1
  %498 = and i32 %493, 255
  %499 = zext i8 %497 to i32
  %500 = add nuw nsw i32 %498, %499
  %501 = icmp eq i32 %454, 9
  br i1 %501, label %508, label %502

502:                                              ; preds = %495
  %503 = getelementptr i8, ptr %1, i32 9
  %504 = load i8, ptr %503, align 1
  %505 = and i32 %500, 255
  %506 = zext i8 %504 to i32
  %507 = add nuw nsw i32 %505, %506
  br label %508

508:                                              ; preds = %502, %495, %488, %481, %474, %467, %456
  %509 = phi i32 [ %465, %456 ], [ %472, %467 ], [ %479, %474 ], [ %486, %481 ], [ %493, %488 ], [ %500, %495 ], [ %507, %502 ]
  %510 = trunc i32 %509 to i8
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %561

512:                                              ; preds = %508
  %513 = getelementptr i8, ptr %1, i32 4
  %514 = load i8, ptr %513, align 1
  %515 = icmp eq i8 %514, 3
  br i1 %515, label %516, label %561

516:                                              ; preds = %512
  %517 = getelementptr i8, ptr %1, i32 5
  %518 = load i8, ptr %517, align 1
  %519 = icmp eq i8 %518, 12
  br i1 %519, label %520, label %561

520:                                              ; preds = %516
  %521 = getelementptr i8, ptr %1, i32 6
  %522 = load i8, ptr %521, align 1
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %561

524:                                              ; preds = %520
  %525 = getelementptr i8, ptr %1, i32 7
  %526 = load i8, ptr %525, align 1
  %527 = icmp ugt i8 %526, 95
  br i1 %527, label %561, label %528

528:                                              ; preds = %524
  %529 = lshr i8 %526, 5
  %530 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %530, i8 0, i32 20, i1 false) #16
  store i32 129, ptr %0, align 4
  store i8 1, ptr %530, align 4
  %531 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 3
  store i32 3075, ptr %531, align 4
  %532 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 5
  store i32 -1, ptr %532, align 4
  %533 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 2
  store i8 %449, ptr %533, align 1
  %534 = trunc i8 %529 to i3
  switch i3 %534, label %558 [
    i3 2, label %535
    i3 1, label %552
  ]

535:                                              ; preds = %528
  %536 = icmp eq i8 %449, 6
  %537 = add i8 %449, -7
  %538 = icmp ult i8 %537, -2
  br i1 %538, label %561, label %539

539:                                              ; preds = %535
  %540 = getelementptr i8, ptr %1, i32 8
  %541 = load i8, ptr %540, align 1
  %542 = lshr i8 %541, 4
  %543 = zext i8 %542 to i32
  store i32 %543, ptr %532, align 4
  %544 = icmp slt i8 %541, 0
  br i1 %544, label %545, label %560

545:                                              ; preds = %539
  br i1 %536, label %546, label %561

546:                                              ; preds = %545
  %547 = getelementptr i8, ptr %1, i32 9
  %548 = load i8, ptr %547, align 1
  %549 = lshr i8 %548, 4
  %550 = zext i8 %549 to i32
  %551 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 6
  store i32 %550, ptr %551, align 4
  br label %560

552:                                              ; preds = %528
  %553 = icmp eq i8 %449, 5
  br i1 %553, label %554, label %561

554:                                              ; preds = %552
  %555 = getelementptr i8, ptr %1, i32 8
  %556 = load i8, ptr %555, align 1
  %557 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %0, i32 0, i32 4
  store i8 %556, ptr %557, align 4
  br label %560

558:                                              ; preds = %528
  %559 = icmp eq i8 %449, 4
  br i1 %559, label %560, label %561

560:                                              ; preds = %558, %554, %546, %539
  br label %561

561:                                              ; preds = %560, %558, %552, %545, %535, %524, %520, %516, %512, %508, %452, %447, %443, %411, %376, %372, %368, %366, %354, %274, %270, %266, %264, %261, %178, %174, %170, %168, %118, %17, %13, %9, %7, %5, %3
  %562 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %118 ], [ -22, %7 ], [ -22, %13 ], [ -22, %9 ], [ -22, %17 ], [ %263, %261 ], [ -22, %168 ], [ -22, %174 ], [ -22, %170 ], [ -22, %178 ], [ 0, %354 ], [ -22, %264 ], [ -22, %270 ], [ -22, %266 ], [ -22, %274 ], [ 0, %411 ], [ -22, %366 ], [ -22, %372 ], [ -22, %368 ], [ -22, %376 ], [ 0, %560 ], [ -22, %447 ], [ -22, %443 ], [ -22, %452 ], [ -22, %508 ], [ -22, %520 ], [ -22, %516 ], [ -22, %512 ], [ -22, %524 ], [ -22, %535 ], [ -22, %545 ], [ -22, %552 ], [ -22, %558 ]
  ret i32 %562
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
