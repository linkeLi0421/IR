; ModuleID = '/llk/IR/drivers/gpu/drm/drm_fourcc.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_fourcc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_legacy_fb_format:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_legacy_fb_format\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_legacy_fb_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_driver_legacy_fb_format:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_driver_legacy_fb_format\22\09\09\09\09\09"
module asm "__kstrtabns_drm_driver_legacy_fb_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_format_info:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_format_info\22\09\09\09\09\09"
module asm "__kstrtabns_drm_format_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_get_format_info:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_get_format_info\22\09\09\09\09\09"
module asm "__kstrtabns_drm_get_format_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_format_info_block_width:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_format_info_block_width\22\09\09\09\09\09"
module asm "__kstrtabns_drm_format_info_block_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_format_info_block_height:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_format_info_block_height\22\09\09\09\09\09"
module asm "__kstrtabns_drm_format_info_block_height:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_format_info_min_pitch:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_format_info_min_pitch\22\09\09\09\09\09"
module asm "__kstrtabns_drm_format_info_min_pitch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.1, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.1 = type { [4 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.2, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.2 = type { i32, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }

@__kstrtab_drm_mode_legacy_fb_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_legacy_fb_format = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_legacy_fb_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_legacy_fb_format to i32), ptr @__kstrtab_drm_mode_legacy_fb_format, ptr @__kstrtabns_drm_mode_legacy_fb_format }, section "___ksymtab+drm_mode_legacy_fb_format", align 4
@__kstrtab_drm_driver_legacy_fb_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_driver_legacy_fb_format = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_driver_legacy_fb_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_driver_legacy_fb_format to i32), ptr @__kstrtab_drm_driver_legacy_fb_format, ptr @__kstrtabns_drm_driver_legacy_fb_format }, section "___ksymtab+drm_driver_legacy_fb_format", align 4
@__drm_format_info.formats = internal constant [106 x %struct.drm_format_info] [%struct.drm_format_info { i32 538982467, i8 8, i8 1, %union.anon.1 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 538982482, i8 8, i8 1, %union.anon.1 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 540029266, i8 10, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 540160338, i8 12, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943867730, i8 8, i8 1, %union.anon.1 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 944916290, i8 8, i8 1, %union.anon.1 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842093144, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842089048, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842094674, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842094658, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842093121, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842089025, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842088786, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842088770, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892424792, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892420696, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892426322, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892426306, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892424769, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892420673, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892420434, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892420418, i8 15, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 909199186, i8 16, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 909199170, i8 16, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875710290, i8 24, i8 1, %union.anon.1 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875710274, i8 24, i8 1, %union.anon.1 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875713112, i8 24, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875709016, i8 24, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875714642, i8 24, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875714626, i8 24, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943797586, i8 24, i8 2, %union.anon.1 { [4 x i8] c"\02\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943797570, i8 24, i8 2, %union.anon.1 { [4 x i8] c"\02\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808669784, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665688, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808671314, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808671298, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808669761, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665665, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665426, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665410, i8 30, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875713089, i8 32, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708993, i8 32, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708754, i8 32, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708738, i8 32, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 1211388504, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 1211384408, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 1211388481, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 1211384385, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808534593, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 942953048, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 942948952, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 942953025, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 942948929, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943798354, i8 32, i8 2, %union.anon.1 { [4 x i8] c"\03\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943798338, i8 32, i8 2, %union.anon.1 { [4 x i8] c"\03\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943805016, i8 32, i8 2, %union.anon.1 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943800920, i8 32, i8 2, %union.anon.1 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943806546, i8 32, i8 2, %union.anon.1 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943806530, i8 32, i8 2, %union.anon.1 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 961959257, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 4, i8 0, i8 1 }, %struct.drm_format_info { i32 961893977, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 4, i8 0, i8 1 }, %struct.drm_format_info { i32 825316697, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 825316953, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842093913, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 842094169, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 909202777, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 909203033, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875713881, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875714137, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842094158, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 825382478, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 909203022, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 825644622, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875714126, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842290766, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1448695129, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1431918169, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1498831189, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1498765654, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1448434008, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875713878, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1448433985, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 808530521, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842084953, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 909193817, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 808531033, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 842085465, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 909194329, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 808670808, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 909334104, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 942954072, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 810299481, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 1, i8 1 }, %struct.drm_format_info { i32 810299480, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 843853913, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 1, i8 1 }, %struct.drm_format_info { i32 843853912, i8 0, i8 1, %union.anon.1 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808530000, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 842084432, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 909193296, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808530512, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 808670550, i8 0, i8 1, %union.anon.1 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 942691673, i8 0, i8 1, %union.anon.1 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808539481, i8 0, i8 1, %union.anon.1 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 892425806, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\05\05\00\00" }, [4 x i8] c"\04\02\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808531025, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\02\02\02\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 0, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 825242705, i8 0, i8 3, %union.anon.1 { [4 x i8] c"\02\02\02\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 0, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 808661072, i8 0, i8 2, %union.anon.1 { [4 x i8] c"\04\08\00\00" }, [4 x i8] c"\03\03\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }], align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/drm_fourcc.c\00", align 1
@__kstrtab_drm_format_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_format_info = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_format_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_format_info to i32), ptr @__kstrtab_drm_format_info, ptr @__kstrtabns_drm_format_info }, section "___ksymtab+drm_format_info", align 4
@__kstrtab_drm_get_format_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_get_format_info = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_get_format_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_get_format_info to i32), ptr @__kstrtab_drm_get_format_info, ptr @__kstrtabns_drm_get_format_info }, section "___ksymtab+drm_get_format_info", align 4
@__kstrtab_drm_format_info_block_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_format_info_block_width = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_format_info_block_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_format_info_block_width to i32), ptr @__kstrtab_drm_format_info_block_width, ptr @__kstrtabns_drm_format_info_block_width }, section "___ksymtab+drm_format_info_block_width", align 4
@__kstrtab_drm_format_info_block_height = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_format_info_block_height = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_format_info_block_height = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_format_info_block_height to i32), ptr @__kstrtab_drm_format_info_block_height, ptr @__kstrtabns_drm_format_info_block_height }, section "___ksymtab+drm_format_info_block_height", align 4
@__kstrtab_drm_format_info_min_pitch = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_format_info_min_pitch = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_format_info_min_pitch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_format_info_min_pitch to i32), ptr @__kstrtab_drm_format_info_min_pitch, ptr @__kstrtabns_drm_format_info_min_pitch }, section "___ksymtab+drm_format_info_min_pitch", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_drm_driver_legacy_fb_format, ptr @__ksymtab_drm_format_info, ptr @__ksymtab_drm_format_info_block_height, ptr @__ksymtab_drm_format_info_block_width, ptr @__ksymtab_drm_format_info_min_pitch, ptr @__ksymtab_drm_get_format_info, ptr @__ksymtab_drm_mode_legacy_fb_format], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_mode_legacy_fb_format(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %0, -8
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 29)
  switch i32 %4, label %20 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %13
    i32 3, label %16
  ]

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 8
  %7 = select i1 %6, i32 538982467, i32 0
  br label %20

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 16
  %10 = select i1 %9, i32 909199186, i32 0
  %11 = icmp eq i32 %1, 15
  %12 = select i1 %11, i32 892424792, i32 %10
  br label %20

13:                                               ; preds = %2
  %14 = icmp eq i32 %1, 24
  %15 = select i1 %14, i32 875710290, i32 0
  br label %20

16:                                               ; preds = %2
  switch i32 %1, label %20 [
    i32 24, label %17
    i32 30, label %18
    i32 32, label %19
  ]

17:                                               ; preds = %16
  br label %20

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %13, %8, %5, %2
  %21 = phi i32 [ 0, %2 ], [ 0, %16 ], [ 875713089, %19 ], [ 808669784, %18 ], [ 875713112, %17 ], [ %7, %5 ], [ %12, %8 ], [ %15, %13 ]
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_driver_legacy_fb_format(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = add i32 %1, -8
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 29) #8
  switch i32 %5, label %21 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %14
    i32 3, label %17
  ]

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 8
  %8 = select i1 %7, i32 538982467, i32 0
  br label %21

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 16
  %11 = select i1 %10, i32 909199186, i32 0
  %12 = icmp eq i32 %2, 15
  %13 = select i1 %12, i32 892424792, i32 %11
  br label %21

14:                                               ; preds = %3
  %15 = icmp eq i32 %2, 24
  %16 = select i1 %15, i32 875710290, i32 0
  br label %21

17:                                               ; preds = %3
  switch i32 %2, label %21 [
    i32 24, label %18
    i32 30, label %19
    i32 32, label %20
  ]

18:                                               ; preds = %17
  br label %21

19:                                               ; preds = %17
  br label %21

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %14, %9, %6, %3
  %22 = phi i32 [ 0, %3 ], [ 0, %17 ], [ 875713089, %20 ], [ 808669784, %19 ], [ 875713112, %18 ], [ %8, %6 ], [ %13, %9 ], [ %16, %14 ]
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 94
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp ne i8 %24, 0
  %26 = icmp eq i32 %22, 808669784
  %27 = and i1 %26, %25
  %28 = select i1 %27, i32 808665688, i32 %22
  ret i32 %28
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @__drm_format_info(i32 noundef %0) local_unnamed_addr #2 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i32 %6, 1
  %4 = icmp eq i32 %3, 106
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %1
  %6 = phi i32 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr [106 x %struct.drm_format_info], ptr @__drm_format_info.formats, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_format_info(i32 noundef %0) #3 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i32 %6, 1
  %4 = icmp eq i32 %3, 106
  br i1 %4, label %12, label %5

5:                                                ; preds = %2, %1
  %6 = phi i32 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr [106 x %struct.drm_format_info], ptr @__drm_format_info.formats, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %5
  %11 = icmp eq ptr %7, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %10, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #8
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi ptr [ null, %12 ], [ %7, %10 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_get_format_info(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr %6(ptr noundef %1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i32 %18, 1
  %16 = icmp eq i32 %15, 106
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr [106 x %struct.drm_format_info], ptr @__drm_format_info.formats, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %22, label %14

22:                                               ; preds = %17
  %23 = icmp eq ptr %19, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %22, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #8
  br label %25

25:                                               ; preds = %24, %22, %8
  %26 = phi ptr [ %9, %8 ], [ null, %24 ], [ %19, %22 ]
  ret ptr %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_format_info_block_width(ptr noundef readonly %0, i32 noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  %4 = icmp slt i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_format_info, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr %struct.drm_format_info, ptr %0, i32 0, i32 4, i32 %1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i8 1, i8 %13
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_format_info_block_height(ptr noundef readonly %0, i32 noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  %4 = icmp slt i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_format_info, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr %struct.drm_format_info, ptr %0, i32 0, i32 5, i32 %1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i8 1, i8 %13
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @drm_format_info_min_pitch(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = icmp eq ptr %0, null
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %0, i32 0, i32 3
  %15 = getelementptr [4 x i8], ptr %14, i32 0, i32 %1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul nuw nsw i64 %17, %13
  %19 = getelementptr %struct.drm_format_info, ptr %0, i32 0, i32 4, i32 %1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i8 1, i8 %20
  %23 = zext i8 %22 to i32
  %24 = getelementptr %struct.drm_format_info, ptr %0, i32 0, i32 5, i32 %1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i8 1, i8 %25
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %28, %23
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %18, -1
  %32 = add nsw i64 %31, %30
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %34, label %38, !prof !10

34:                                               ; preds = %12
  %35 = trunc i64 %32 to i32
  %36 = udiv i32 %35, %29
  %37 = zext i32 %36 to i64
  br label %41

38:                                               ; preds = %12
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %32) #9, !srcloc !11
  %40 = extractvalue { i64, i64 } %39, 1
  br label %41

41:                                               ; preds = %38, %34, %7, %3
  %42 = phi i64 [ 0, %7 ], [ 0, %3 ], [ %37, %34 ], [ %40, %38 ]
  ret i64 %42
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148424159, i64 2148424439, i64 2148424773, i64 2148425107}
