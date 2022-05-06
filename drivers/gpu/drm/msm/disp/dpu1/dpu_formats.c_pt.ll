; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.dpu_media_color_map = type { i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.78, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.78 = type { [4 x i8] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"image dimensions outside max range\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid handle for plane %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"buffers total size too small %u expected %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"plane format modifier 0x%llX\0A\00", align 1
@dpu_format_map = internal constant [46 x %struct.dpu_format] [%struct.dpu_format { %struct.msm_format { i32 875713089 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875708993 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875709016 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875708754 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875708738 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875714626 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875713112 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875714642 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875710290 }, i32 0, [4 x i8] c"\01\00\02\00", [4 x i8] c"\03\03\03\00", i32 0, i8 0, i8 1, i8 3, i8 3, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875710274 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\03\03\03\00", i32 0, i8 0, i8 1, i8 3, i8 3, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 909199186 }, i32 0, [4 x i8] c"\01\00\02\00", [4 x i8] c"\02\01\01\00", i32 0, i8 0, i8 1, i8 3, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 909199170 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\02\01\01\00", i32 0, i8 0, i8 1, i8 3, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892424769 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420673 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420434 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420418 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892424792 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420696 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892426322 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892426306 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842093121 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842089025 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842088786 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842088770 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842093144 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842089048 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094674 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094658 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665410 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665426 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665665 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808669761 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808669784 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808671298 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665688 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808671314 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094158 }, i32 2, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 825382478 }, i32 2, [4 x i8] c"\02\01\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 909203022 }, i32 2, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 825644622 }, i32 2, [4 x i8] c"\02\01\00\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1498765654 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1498831189 }, i32 0, [4 x i8] c"\01\00\02\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1448695129 }, i32 0, [4 x i8] c"\00\01\00\02", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1431918169 }, i32 0, [4 x i8] c"\00\02\00\01", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842093913 }, i32 1, [4 x i8] c"\02\01\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 1, i8 1, i8 0, i8 3, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094169 }, i32 1, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 1, i8 1, i8 0, i8 3, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }], align 4
@dpu_format_map_ubwc = internal constant [8 x %struct.dpu_format] [%struct.dpu_format { %struct.msm_format { i32 909199170 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\02\01\01\00", i32 0, i8 0, i8 1, i8 3, i8 2, i8 0, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875708993 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875713089 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875709016 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875713112 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 808665665 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 6], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 808665688 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 6], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 842094158 }, i32 2, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 2, i8 2, i8 0, i8 4, i32 2, [1 x i32] [i32 5], i16 0, i16 8 }], align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"found fmt: %4.4s  DRM_FORMAT_MOD_QCOM_COMPRESSED\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"\013[drm:%s:%d] [dpu error]unsupported format modifier %llX\0A\00", align 1
@__func__.dpu_get_dpu_format_ext = private unnamed_addr constant [23 x i8] c"dpu_get_dpu_format_ext\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\013[drm:%s:%d] [dpu error]unsupported fmt: %4.4s modifier 0x%llX\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"fmt %4.4s mod 0x%llX ubwc %d yuv %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"invalid pointer\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"UBWC format not supported for fmt: %4.4s\0A\00", align 1
@_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map = internal unnamed_addr constant [7 x %struct.dpu_media_color_map] [%struct.dpu_media_color_map { i32 875708993, i32 6 }, %struct.dpu_media_color_map { i32 875713089, i32 6 }, %struct.dpu_media_color_map { i32 875709016, i32 6 }, %struct.dpu_media_color_map { i32 875713112, i32 6 }, %struct.dpu_media_color_map { i32 808665665, i32 7 }, %struct.dpu_media_color_map { i32 808665688, i32 7 }, %struct.dpu_media_color_map { i32 909199170, i32 8 }], align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"mismatch in subsample vs dimensions\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to retrieve base addr\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"plane %u expected pitch %u, fb %u\0A\00", align 1
@switch.table.dpu_format_get_plane_sizes = private unnamed_addr constant [4 x i32] [i32 128, i32 256, i32 256, i32 256], align 4
@switch.table.dpu_format_get_plane_sizes.15 = private unnamed_addr constant [4 x i32] [i32 4, i32 4, i32 4, i32 2], align 4
@switch.table.dpu_format_get_plane_sizes.16 = private unnamed_addr constant [4 x i32] [i32 32, i32 16, i32 16, i32 16], align 4
@switch.table.dpu_format_get_plane_sizes.17 = private unnamed_addr constant [3 x i16] [i16 1, i16 2, i16 2], align 2
@switch.table.dpu_format_get_plane_sizes.18 = private unnamed_addr constant [3 x i16] [i16 2, i16 1, i16 2], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_format_populate_layout(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %119

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 9
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 16383
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 16383
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %119

18:                                               ; preds = %13
  %19 = tail call ptr @msm_framebuffer_format(ptr noundef nonnull %1) #8
  store ptr %19, ptr %2, align 4
  %20 = load i32, ptr %10, align 8
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 6
  %23 = tail call fastcc i32 @dpu_format_get_plane_sizes(ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef nonnull %2, ptr noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %119

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %2, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %26, i32 16, i1 false)
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.dpu_format, ptr %27, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dpu_format, ptr %27, i32 0, i32 12
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load volatile i32, ptr %32, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36, %31
  %41 = icmp eq ptr %0, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %40
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #8
  br label %119

46:                                               ; preds = %42
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.dpu_format, ptr %47, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dpu_format, ptr %47, i32 0, i32 12
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  %58 = getelementptr inbounds %struct.dpu_format, ptr %47, i32 0, i32 12
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 6
  %64 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 6, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %43
  store i32 %66, ptr %26, align 4
  %67 = load i32, ptr %63, align 4
  %68 = add i32 %67, %66
  %69 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 6, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %68, %70
  %72 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 5, i32 1
  store i32 %71, ptr %72, align 4
  br i1 %57, label %111, label %115

73:                                               ; preds = %56
  %74 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 6, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %43
  store i32 %76, ptr %26, align 4
  %77 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 5, i32 1
  store i32 0, ptr %77, align 4
  br i1 %57, label %111, label %115

78:                                               ; preds = %36, %25
  %79 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %115, label %84

82:                                               ; preds = %92
  %83 = icmp eq ptr %0, null
  br label %99

84:                                               ; preds = %92, %78
  %85 = phi i32 [ %93, %92 ], [ 0, %78 ]
  %86 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 7, i32 %85
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 %85
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %85, i32 noundef %87, i32 noundef %89) #8
  br label %119

92:                                               ; preds = %84
  %93 = add nuw i32 %85, 1
  %94 = icmp eq i32 %93, %80
  br i1 %94, label %82, label %84

95:                                               ; preds = %107
  %96 = add nuw i32 %100, 1
  %97 = load i32, ptr %79, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95, %82
  %100 = phi i32 [ 0, %82 ], [ %96, %95 ]
  br i1 %83, label %101, label %104

101:                                              ; preds = %99
  %102 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 5, i32 %100
  %103 = load i32, ptr %102, align 4
  br label %107

104:                                              ; preds = %99
  %105 = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef %100) #8
  %106 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 5, i32 %100
  store i32 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i32 [ %103, %101 ], [ %105, %104 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %95

110:                                              ; preds = %107
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #8
  br label %119

111:                                              ; preds = %73, %62
  %112 = phi i32 [ %68, %62 ], [ 0, %73 ]
  %113 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 5, i32 2
  store i32 %43, ptr %113, align 4
  %114 = getelementptr %struct.dpu_hw_fmt_layout, ptr %2, i32 0, i32 5, i32 3
  store i32 %112, ptr %114, align 4
  br label %115

115:                                              ; preds = %111, %95, %78, %73, %62
  %116 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef dereferenceable(16) %26, i32 16)
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 -11, i32 0
  br label %119

119:                                              ; preds = %115, %110, %91, %45, %18, %17, %8
  %120 = phi i32 [ -34, %17 ], [ -22, %8 ], [ %23, %18 ], [ %118, %115 ], [ -14, %45 ], [ -22, %91 ], [ -14, %110 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %120
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dpu_format_get_plane_sizes(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %437

10:                                               ; preds = %5
  %11 = or i32 %2, %1
  %12 = icmp ult i32 %11, 16384
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %437

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %301

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 12
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %301

27:                                               ; preds = %23, %18
  %28 = load volatile i32, ptr %19, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %31, i8 0, i32 64, i1 false) #8
  store ptr %0, ptr %3, align 4
  %32 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 2
  store i32 %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 3
  store i32 %2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 10
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, ptr %31, align 4
  %37 = load i32, ptr %0, align 4
  switch i32 %37, label %57 [
    i32 842094158, label %38
    i32 875708993, label %53
    i32 875713089, label %47
    i32 875709016, label %48
    i32 875713112, label %49
    i32 808665665, label %50
    i32 808665688, label %51
    i32 909199170, label %52
  ]

38:                                               ; preds = %27
  %39 = load volatile i32, ptr %19, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 6
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 9, i32 4
  br label %58

47:                                               ; preds = %27
  br label %53

48:                                               ; preds = %27
  br label %53

49:                                               ; preds = %27
  br label %53

50:                                               ; preds = %27
  br label %53

51:                                               ; preds = %27
  br label %53

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47, %27
  %54 = phi i32 [ 0, %27 ], [ 1, %47 ], [ 2, %48 ], [ 3, %49 ], [ 4, %50 ], [ 5, %51 ], [ 6, %52 ]
  %55 = getelementptr [7 x %struct.dpu_media_color_map], ptr @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, i32 0, i32 %54, i32 1
  %56 = load i32, ptr %55, align 4
  br label %58

57:                                               ; preds = %27
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull %0) #8
  br label %437

58:                                               ; preds = %53, %42, %38
  %59 = phi i32 [ %56, %53 ], [ 3, %38 ], [ %46, %42 ]
  %60 = load volatile i32, ptr %19, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %220, label %63

63:                                               ; preds = %58
  store i32 2, ptr %31, align 4
  %64 = icmp eq i32 %1, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %63
  switch i32 %59, label %87 [
    i32 1, label %66
    i32 0, label %66
    i32 2, label %66
    i32 3, label %66
    i32 4, label %69
    i32 9, label %79
    i32 10, label %83
  ]

66:                                               ; preds = %65, %65, %65, %65
  %67 = add nuw nsw i32 %1, 127
  %68 = and i32 %67, -128
  br label %87

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %1, 191
  %71 = trunc i32 %70 to i16
  %72 = urem i16 %71, 192
  %73 = zext i16 %72 to i32
  %74 = sub nuw nsw i32 %70, %73
  %75 = shl nuw nsw i32 %74, 2
  %76 = udiv i32 %75, 3
  %77 = add nuw nsw i32 %76, 255
  %78 = and i32 %77, -256
  br label %87

79:                                               ; preds = %65
  %80 = shl nuw nsw i32 %1, 1
  %81 = add nuw nsw i32 %80, 255
  %82 = and i32 %81, -256
  br label %87

83:                                               ; preds = %65
  %84 = shl nuw nsw i32 %1, 1
  %85 = add nuw nsw i32 %84, 127
  %86 = and i32 %85, -128
  br label %87

87:                                               ; preds = %83, %79, %69, %66, %65, %63
  %88 = phi i32 [ %59, %63 ], [ %59, %65 ], [ 10, %83 ], [ 9, %79 ], [ 4, %69 ], [ %59, %66 ]
  %89 = phi i32 [ 0, %63 ], [ 0, %65 ], [ %86, %83 ], [ %82, %79 ], [ %78, %69 ], [ %68, %66 ]
  %90 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7
  store i32 %89, ptr %90, align 4
  %91 = icmp eq i32 %2, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  switch i32 %88, label %99 [
    i32 1, label %93
    i32 0, label %93
    i32 2, label %93
    i32 3, label %93
    i32 10, label %93
    i32 4, label %96
    i32 9, label %96
  ]

93:                                               ; preds = %92, %92, %92, %92, %92
  %94 = add nuw nsw i32 %2, 31
  %95 = and i32 %94, -32
  br label %99

96:                                               ; preds = %92, %92
  %97 = add nuw nsw i32 %2, 15
  %98 = and i32 %97, -16
  br label %99

99:                                               ; preds = %96, %93, %92, %87
  %100 = phi i32 [ 0, %87 ], [ 0, %92 ], [ %98, %96 ], [ %95, %93 ]
  %101 = mul nuw nsw i32 %100, %89
  %102 = add nuw nsw i32 %101, 4095
  %103 = and i32 %102, -4096
  %104 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6
  store i32 %103, ptr %104, align 4
  br i1 %64, label %127, label %105

105:                                              ; preds = %99
  switch i32 %88, label %127 [
    i32 1, label %106
    i32 0, label %106
    i32 2, label %106
    i32 3, label %106
    i32 4, label %109
    i32 9, label %119
    i32 10, label %123
  ]

106:                                              ; preds = %105, %105, %105, %105
  %107 = add nuw nsw i32 %1, 127
  %108 = and i32 %107, -128
  br label %127

109:                                              ; preds = %105
  %110 = add nuw nsw i32 %1, 191
  %111 = trunc i32 %110 to i16
  %112 = urem i16 %111, 192
  %113 = zext i16 %112 to i32
  %114 = sub nuw nsw i32 %110, %113
  %115 = shl nuw nsw i32 %114, 2
  %116 = udiv i32 %115, 3
  %117 = add nuw nsw i32 %116, 255
  %118 = and i32 %117, -256
  br label %127

119:                                              ; preds = %105
  %120 = shl nuw nsw i32 %1, 1
  %121 = add nuw nsw i32 %120, 255
  %122 = and i32 %121, -256
  br label %127

123:                                              ; preds = %105
  %124 = shl nuw nsw i32 %1, 1
  %125 = add nuw nsw i32 %124, 127
  %126 = and i32 %125, -128
  br label %127

127:                                              ; preds = %123, %119, %109, %106, %105, %99
  %128 = phi i32 [ %88, %99 ], [ %88, %105 ], [ 10, %123 ], [ 9, %119 ], [ 4, %109 ], [ %88, %106 ]
  %129 = phi i32 [ 0, %99 ], [ 0, %105 ], [ %126, %123 ], [ %122, %119 ], [ %118, %109 ], [ %108, %106 ]
  %130 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 1
  store i32 %129, ptr %130, align 4
  br i1 %91, label %142, label %131

131:                                              ; preds = %127
  switch i32 %128, label %142 [
    i32 1, label %132
    i32 0, label %132
    i32 2, label %132
    i32 4, label %132
    i32 9, label %132
    i32 10, label %132
    i32 3, label %137
  ]

132:                                              ; preds = %131, %131, %131, %131, %131, %131
  %133 = add nuw nsw i32 %2, 1
  %134 = lshr i32 %133, 1
  %135 = add nuw nsw i32 %134, 15
  %136 = and i32 %135, 2147483632
  br label %142

137:                                              ; preds = %131
  %138 = add nuw nsw i32 %2, 1
  %139 = lshr i32 %138, 1
  %140 = add nuw nsw i32 %139, 31
  %141 = and i32 %140, 2147483616
  br label %142

142:                                              ; preds = %137, %132, %131, %127
  %143 = phi i32 [ %128, %127 ], [ %128, %131 ], [ 3, %137 ], [ %128, %132 ]
  %144 = phi i32 [ 0, %127 ], [ 0, %131 ], [ %141, %137 ], [ %136, %132 ]
  %145 = mul nuw nsw i32 %144, %129
  %146 = add nuw nsw i32 %145, 4095
  %147 = and i32 %146, -4096
  %148 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 1
  store i32 %147, ptr %148, align 4
  br i1 %30, label %292, label %149

149:                                              ; preds = %142
  store i32 4, ptr %31, align 4
  br i1 %64, label %162, label %150

150:                                              ; preds = %149
  switch i32 %143, label %162 [
    i32 3, label %152
    i32 9, label %152
    i32 4, label %151
  ]

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %150, %150
  %153 = phi i32 [ 48, %151 ], [ 32, %150 ], [ 32, %150 ]
  %154 = add nuw nsw i32 %1, 65535
  %155 = add nuw nsw i32 %154, %153
  %156 = trunc i32 %155 to i16
  %157 = trunc i32 %153 to i16
  %158 = udiv i16 %156, %157
  %159 = add nuw nsw i16 %158, 63
  %160 = and i16 %159, 4032
  %161 = zext i16 %160 to i32
  br label %162

162:                                              ; preds = %152, %150, %149
  %163 = phi i32 [ %161, %152 ], [ 0, %149 ], [ 0, %150 ]
  %164 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 2
  store i32 %163, ptr %164, align 4
  br i1 %91, label %177, label %165

165:                                              ; preds = %162
  switch i32 %143, label %177 [
    i32 3, label %167
    i32 4, label %166
    i32 9, label %166
  ]

166:                                              ; preds = %165, %165
  br label %167

167:                                              ; preds = %166, %165
  %168 = phi i32 [ 4, %166 ], [ 8, %165 ]
  %169 = add nuw nsw i32 %2, 65535
  %170 = add nuw nsw i32 %169, %168
  %171 = trunc i32 %170 to i16
  %172 = trunc i32 %168 to i16
  %173 = udiv i16 %171, %172
  %174 = zext i16 %173 to i32
  %175 = add nuw nsw i32 %174, 15
  %176 = and i32 %175, 131056
  br label %177

177:                                              ; preds = %167, %165, %162
  %178 = phi i32 [ %176, %167 ], [ 0, %162 ], [ 0, %165 ]
  %179 = mul nuw nsw i32 %178, %163
  %180 = add nuw nsw i32 %179, 4095
  %181 = and i32 %180, 2147479552
  %182 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 2
  store i32 %181, ptr %182, align 4
  br i1 %64, label %197, label %183

183:                                              ; preds = %177
  switch i32 %143, label %197 [
    i32 3, label %185
    i32 9, label %185
    i32 4, label %184
  ]

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %183, %183
  %186 = phi i32 [ 24, %184 ], [ 16, %183 ], [ 16, %183 ]
  %187 = add nuw nsw i32 %1, 1
  %188 = lshr i32 %187, 1
  %189 = add nuw nsw i32 %188, 65535
  %190 = add nuw nsw i32 %189, %186
  %191 = trunc i32 %190 to i16
  %192 = trunc i32 %186 to i16
  %193 = udiv i16 %191, %192
  %194 = add nuw nsw i16 %193, 63
  %195 = and i16 %194, 8128
  %196 = zext i16 %195 to i32
  br label %197

197:                                              ; preds = %185, %183, %177
  %198 = phi i32 [ %196, %185 ], [ 0, %177 ], [ 0, %183 ]
  %199 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 3
  store i32 %198, ptr %199, align 4
  br i1 %91, label %214, label %200

200:                                              ; preds = %197
  switch i32 %143, label %214 [
    i32 3, label %202
    i32 4, label %201
    i32 9, label %201
  ]

201:                                              ; preds = %200, %200
  br label %202

202:                                              ; preds = %201, %200
  %203 = phi i32 [ 4, %201 ], [ 8, %200 ]
  %204 = add nuw nsw i32 %2, 1
  %205 = lshr i32 %204, 1
  %206 = add nuw nsw i32 %205, 65535
  %207 = add nuw nsw i32 %206, %203
  %208 = trunc i32 %207 to i16
  %209 = trunc i32 %203 to i16
  %210 = udiv i16 %208, %209
  %211 = zext i16 %210 to i32
  %212 = add nuw nsw i32 %211, 15
  %213 = and i32 %212, 131056
  br label %214

214:                                              ; preds = %202, %200, %197
  %215 = phi i32 [ %213, %202 ], [ 0, %197 ], [ 0, %200 ]
  %216 = mul nuw nsw i32 %215, %198
  %217 = add nuw nsw i32 %216, 4095
  %218 = and i32 %217, 2147479552
  %219 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 3
  store i32 %218, ptr %219, align 4
  br label %292

220:                                              ; preds = %58
  store i32 1, ptr %31, align 4
  %221 = icmp eq i32 %1, 0
  br i1 %221, label %241, label %222

222:                                              ; preds = %220
  %223 = add i32 %59, -5
  %224 = icmp ult i32 %223, 4
  br i1 %224, label %225, label %241

225:                                              ; preds = %222
  %226 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_format_get_plane_sizes, i32 0, i32 %223
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_format_get_plane_sizes.15, i32 0, i32 %223
  %229 = load i32, ptr %228, align 4
  %230 = tail call i32 @llvm.ctpop.i32(i32 %227) #8, !range !8
  %231 = icmp ult i32 %230, 2
  %232 = mul nuw nsw i32 %229, %1
  %233 = add nsw i32 %227, -1
  %234 = add nuw nsw i32 %233, %232
  br i1 %231, label %238, label %235

235:                                              ; preds = %225
  %236 = urem i32 %234, %227
  %237 = sub nsw i32 %234, %236
  br label %241

238:                                              ; preds = %225
  %239 = sub nsw i32 0, %227
  %240 = and i32 %234, %239
  br label %241

241:                                              ; preds = %238, %235, %222, %220
  %242 = phi i32 [ 0, %220 ], [ 0, %222 ], [ %237, %235 ], [ %240, %238 ]
  %243 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7
  store i32 %242, ptr %243, align 4
  %244 = icmp eq i32 %2, 0
  br i1 %244, label %264, label %245

245:                                              ; preds = %241
  %246 = add i32 %59, -5
  %247 = icmp ult i32 %246, 4
  br i1 %247, label %248, label %264

248:                                              ; preds = %245
  %249 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_format_get_plane_sizes.16, i32 0, i32 %246
  %250 = load i32, ptr %249, align 4
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #8, !range !8
  %252 = icmp ult i32 %251, 2
  %253 = add nsw i32 %2, -1
  %254 = add nuw nsw i32 %253, %250
  br i1 %252, label %261, label %255

255:                                              ; preds = %248
  %256 = trunc i32 %254 to i16
  %257 = trunc i32 %250 to i16
  %258 = urem i16 %256, %257
  %259 = zext i16 %258 to i32
  %260 = sub nsw i32 %254, %259
  br label %264

261:                                              ; preds = %248
  %262 = sub nsw i32 0, %250
  %263 = and i32 %254, %262
  br label %264

264:                                              ; preds = %261, %255, %245, %241
  %265 = phi i32 [ 0, %241 ], [ 0, %245 ], [ %260, %255 ], [ %263, %261 ]
  %266 = mul nsw i32 %265, %242
  %267 = add nsw i32 %266, 4095
  %268 = and i32 %267, -4096
  %269 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6
  store i32 %268, ptr %269, align 4
  br i1 %30, label %292, label %270

270:                                              ; preds = %264
  store i32 3, ptr %31, align 4
  %271 = icmp ne i32 %1, 0
  %272 = add nsw i32 %59, -6
  %273 = icmp ult i32 %272, 3
  %274 = and i1 %271, %273
  %275 = add nuw nsw i32 %1, 15
  %276 = lshr i32 %275, 4
  %277 = add nuw nsw i32 %276, 63
  %278 = and i32 %277, 8128
  %279 = select i1 %274, i32 %278, i32 0
  %280 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 2
  store i32 %279, ptr %280, align 4
  %281 = icmp ne i32 %2, 0
  %282 = and i1 %281, %273
  %283 = add nuw nsw i32 %2, 3
  %284 = lshr i32 %283, 2
  %285 = add nuw nsw i32 %284, 15
  %286 = and i32 %285, 32752
  %287 = select i1 %282, i32 %286, i32 0
  %288 = mul nuw nsw i32 %279, %287
  %289 = add nuw nsw i32 %288, 4095
  %290 = and i32 %289, 536866816
  %291 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 2
  store i32 %290, ptr %291, align 4
  br label %292

292:                                              ; preds = %270, %264, %214, %142
  %293 = phi i32 [ 0, %270 ], [ 0, %264 ], [ %218, %214 ], [ 0, %142 ]
  %294 = phi i32 [ %290, %270 ], [ 0, %264 ], [ %181, %214 ], [ 0, %142 ]
  %295 = phi i32 [ 0, %270 ], [ 0, %264 ], [ %147, %214 ], [ %147, %142 ]
  %296 = phi i32 [ %268, %270 ], [ %268, %264 ], [ %103, %214 ], [ %103, %142 ]
  %297 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 4
  %298 = add nuw nsw i32 %294, %293
  %299 = add nuw nsw i32 %298, %295
  %300 = add i32 %299, %296
  store i32 %300, ptr %297, align 4
  br label %437

301:                                              ; preds = %23, %14
  %302 = getelementptr inbounds i8, ptr %3, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %302, i8 0, i32 64, i1 false) #8
  store ptr %0, ptr %3, align 4
  %303 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 2
  store i32 %1, ptr %303, align 4
  %304 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 3
  store i32 %2, ptr %304, align 4
  %305 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 10
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i32
  store i32 %307, ptr %302, align 4
  %308 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %301
  store i32 1, ptr %302, align 4
  %312 = mul nuw nsw i32 %2, %1
  %313 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 8
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = mul i32 %312, %315
  %317 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6
  store i32 %316, ptr %317, align 4
  %318 = load i8, ptr %313, align 1
  %319 = zext i8 %318 to i32
  %320 = mul nuw nsw i32 %319, %1
  %321 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7
  store i32 %320, ptr %321, align 4
  br label %376

322:                                              ; preds = %301
  %323 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 4
  %324 = load i32, ptr %323, align 4
  %325 = add i32 %324, -1
  %326 = icmp ult i32 %325, 3
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = getelementptr inbounds [3 x i16], ptr @switch.table.dpu_format_get_plane_sizes.17, i32 0, i32 %325
  %329 = load i16, ptr %328, align 2
  %330 = getelementptr inbounds [3 x i16], ptr @switch.table.dpu_format_get_plane_sizes.18, i32 0, i32 %325
  %331 = load i16, ptr %330, align 2
  br label %332

332:                                              ; preds = %327, %322
  %333 = phi i16 [ %329, %327 ], [ 1, %322 ]
  %334 = phi i16 [ %331, %327 ], [ 1, %322 ]
  %335 = trunc i32 %1 to i16
  %336 = urem i16 %335, %334
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %332
  %339 = trunc i32 %2 to i16
  %340 = freeze i16 %333
  %341 = udiv i16 %339, %340
  %342 = mul i16 %341, %340
  %343 = sub i16 %339, %342
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %338, %332
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #8
  br label %437

346:                                              ; preds = %338
  %347 = load i32, ptr %0, align 4
  %348 = icmp eq i32 %347, 842094158
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.dpu_format, ptr %0, i32 0, i32 12
  %351 = load volatile i32, ptr %350, align 4
  %352 = and i32 %351, 2
  %353 = icmp eq i32 %352, 0
  %354 = select i1 %353, i32 1, i32 2
  br label %355

355:                                              ; preds = %349, %346
  %356 = phi i32 [ 1, %346 ], [ %354, %349 ]
  %357 = mul nuw nsw i32 %356, %1
  %358 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7
  store i32 %357, ptr %358, align 4
  %359 = trunc i32 %357 to i16
  %360 = udiv i16 %359, %334
  %361 = zext i16 %360 to i32
  %362 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 1
  store i32 %361, ptr %362, align 4
  %363 = mul nuw nsw i32 %357, %2
  %364 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6
  store i32 %363, ptr %364, align 4
  %365 = zext i16 %341 to i32
  %366 = mul nuw nsw i32 %365, %361
  %367 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 1
  store i32 %366, ptr %367, align 4
  %368 = load i32, ptr %308, align 4
  %369 = icmp eq i32 %368, 2
  br i1 %369, label %370, label %373

370:                                              ; preds = %355
  store i32 2, ptr %302, align 4
  %371 = shl nuw nsw i32 %366, 1
  store i32 %371, ptr %367, align 4
  %372 = shl nuw nsw i32 %361, 1
  store i32 %372, ptr %362, align 4
  br label %376

373:                                              ; preds = %355
  store i32 3, ptr %302, align 4
  %374 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 2
  store i32 %366, ptr %374, align 4
  %375 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 2
  store i32 %361, ptr %375, align 4
  br label %376

376:                                              ; preds = %373, %370, %311
  %377 = phi i32 [ 3, %373 ], [ 2, %370 ], [ 1, %311 ]
  %378 = icmp eq ptr %4, null
  br i1 %378, label %401, label %394

379:                                              ; preds = %436, %430, %425, %413, %401
  %380 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 0
  %381 = load i32, ptr %380, align 4
  %382 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 4
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 2
  %387 = load i32, ptr %386, align 4
  %388 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 6, i32 3
  %389 = load i32, ptr %388, align 4
  %390 = add i32 %383, %381
  %391 = add i32 %390, %385
  %392 = add i32 %391, %387
  %393 = add i32 %392, %389
  store i32 %393, ptr %382, align 4
  br label %437

394:                                              ; preds = %376
  %395 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 0
  %396 = load i32, ptr %395, align 4
  %397 = load i32, ptr %4, align 4
  %398 = icmp ult i32 %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  store i32 %397, ptr %395, align 4
  %400 = load i32, ptr %302, align 4
  br label %401

401:                                              ; preds = %399, %394, %376
  %402 = phi i32 [ %377, %376 ], [ %377, %394 ], [ %400, %399 ]
  %403 = icmp ugt i32 %402, 1
  br i1 %403, label %404, label %379

404:                                              ; preds = %401
  br i1 %378, label %413, label %405

405:                                              ; preds = %404
  %406 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 1
  %407 = load i32, ptr %406, align 4
  %408 = getelementptr i32, ptr %4, i32 1
  %409 = load i32, ptr %408, align 4
  %410 = icmp ult i32 %407, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %405
  store i32 %409, ptr %406, align 4
  %412 = load i32, ptr %302, align 4
  br label %413

413:                                              ; preds = %411, %405, %404
  %414 = phi i32 [ %402, %404 ], [ %402, %405 ], [ %412, %411 ]
  %415 = icmp ugt i32 %414, 2
  br i1 %415, label %416, label %379

416:                                              ; preds = %413
  br i1 %378, label %425, label %417

417:                                              ; preds = %416
  %418 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 2
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr i32, ptr %4, i32 2
  %421 = load i32, ptr %420, align 4
  %422 = icmp ult i32 %419, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %417
  store i32 %421, ptr %418, align 4
  %424 = load i32, ptr %302, align 4
  br label %425

425:                                              ; preds = %423, %417, %416
  %426 = phi i32 [ %414, %416 ], [ %414, %417 ], [ %424, %423 ]
  %427 = icmp ugt i32 %426, 3
  %428 = xor i1 %427, true
  %429 = or i1 %428, %378
  br i1 %429, label %379, label %430

430:                                              ; preds = %425
  %431 = getelementptr %struct.dpu_hw_fmt_layout, ptr %3, i32 0, i32 7, i32 3
  %432 = load i32, ptr %431, align 4
  %433 = getelementptr i32, ptr %4, i32 3
  %434 = load i32, ptr %433, align 4
  %435 = icmp ult i32 %432, %434
  br i1 %435, label %436, label %379

436:                                              ; preds = %430
  store i32 %434, ptr %431, align 4
  br label %379

437:                                              ; preds = %379, %345, %292, %57, %13, %9
  %438 = phi i32 [ -34, %13 ], [ -22, %9 ], [ -22, %57 ], [ 0, %292 ], [ -22, %345 ], [ 0, %379 ]
  ret i32 %438
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_format_check_modified_format(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dpu_hw_fmt_layout, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false), !annotation !9
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %3, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %55

12:                                               ; preds = %4
  %13 = load i32, ptr %1, align 4
  %14 = tail call ptr @drm_format_info(i32 noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6
  %22 = call fastcc i32 @dpu_format_get_plane_sizes(ptr noundef nonnull %1, i32 noundef %18, i32 noundef %20, ptr noundef nonnull %5, ptr noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i8 %26, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %45, %24
  %30 = phi i32 [ %47, %45 ], [ 0, %24 ]
  %31 = phi i32 [ %46, %45 ], [ 0, %24 ]
  %32 = getelementptr ptr, ptr %3, i32 %30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %30) #8
  br label %55

36:                                               ; preds = %29
  %37 = icmp eq i32 %30, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %3, align 4
  %40 = icmp eq ptr %33, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %38, %36
  %42 = getelementptr inbounds %struct.drm_gem_object, ptr %33, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, %31
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i32 [ %44, %41 ], [ %31, %38 ]
  %47 = add nuw nsw i32 %30, 1
  %48 = icmp eq i32 %47, %27
  br i1 %48, label %49, label %29

49:                                               ; preds = %45, %24
  %50 = phi i32 [ 0, %24 ], [ %46, %45 ]
  %51 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %5, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %50, i32 noundef %52) #8
  br label %55

55:                                               ; preds = %54, %49, %35, %16, %12, %11
  %56 = phi i32 [ -22, %35 ], [ -22, %54 ], [ -22, %11 ], [ -22, %12 ], [ %22, %16 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #8
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_get_dpu_format_ext(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i64 noundef %1) #8
  switch i64 %1, label %6 [
    i64 0, label %8
    i64 360287970189639681, label %4
  ]

4:                                                ; preds = %2
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #8
  %5 = load i32, ptr %3, align 4
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dpu_get_dpu_format_ext, i32 noundef 1009, i64 noundef %1) #9
  br label %38

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %5, %4 ], [ %0, %2 ]
  %10 = phi ptr [ @dpu_format_map_ubwc, %4 ], [ @dpu_format_map, %2 ]
  %11 = phi i32 [ 8, %4 ], [ 46, %2 ]
  br label %12

12:                                               ; preds = %17, %8
  %13 = phi i32 [ 0, %8 ], [ %18, %17 ]
  %14 = getelementptr %struct.dpu_format, ptr %10, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %9, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %22, label %12

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %17
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dpu_get_dpu_format_ext, i32 noundef 1022, ptr noundef nonnull %3, i64 noundef %1) #9
  br label %38

24:                                               ; preds = %20
  %25 = getelementptr %struct.dpu_format, ptr %10, i32 %13, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr %struct.dpu_format, ptr %10, i32 %13, i32 12
  %30 = load volatile i32, ptr %29, align 4
  %31 = lshr i32 %30, 2
  %32 = and i32 %31, 1
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ 0, %24 ], [ %32, %28 ]
  %35 = getelementptr %struct.dpu_format, ptr %10, i32 %13, i32 12
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i64 noundef %1, i32 noundef %34, i32 noundef %37) #8
  br label %38

38:                                               ; preds = %33, %22, %6
  %39 = phi ptr [ null, %6 ], [ %14, %33 ], [ null, %22 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_get_msm_format(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @dpu_get_dpu_format_ext(i32 noundef %1, i64 noundef %2)
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_iova(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i32 0, i32 3}
!9 = !{!"auto-init"}
