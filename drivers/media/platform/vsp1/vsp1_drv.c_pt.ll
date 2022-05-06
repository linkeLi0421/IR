; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_drv.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.83, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.82, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.82 = type { i8 }
%struct.anon.83 = type { %struct.spinlock, %struct.anon.84, i32, i32, i8 }
%struct.anon.84 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_video = type { %struct.list_head, ptr, ptr, %struct.video_device, i32, %struct.media_pad, %struct.mutex, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head }

@.str = private unnamed_addr constant [24 x i8] c"failed to reset wpf.%u\0A\00", align 1
@vsp1_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vsp1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vsp2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias258 = internal constant [11 x i8] c"alias=vsp1\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [60 x i8] c"author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [32 x i8] c"description=Renesas VSP1 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@vsp1_platform_driver = internal global %struct.platform_driver { ptr @vsp1_probe, ptr @vsp1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vsp1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [5 x i8] c"vsp1\00", align 1
@vsp1_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @vsp1_pm_suspend, ptr @vsp1_pm_resume, ptr @vsp1_pm_suspend, ptr @vsp1_pm_resume, ptr @vsp1_pm_suspend, ptr @vsp1_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_pm_runtime_suspend, ptr @vsp1_pm_runtime_resume, ptr null }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"renesas,fcp\00", align 1
@vsp1_device_infos = internal constant [14 x %struct.vsp1_device_info] [%struct.vsp1_device_info { i32 2304, ptr @.str.7, i32 2, i32 446, i32 0, i32 5, i32 3, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 2560, ptr @.str.8, i32 2, i32 44, i32 0, i32 5, i32 3, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 2816, ptr @.str.9, i32 2, i32 138, i32 1, i32 4, i32 1, i32 0, i32 1, i32 4, i8 1 }, %struct.vsp1_device_info { i32 3072, ptr @.str.7, i32 2, i32 446, i32 0, i32 5, i32 1, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 4608, ptr @.str.10, i32 2, i32 62, i32 0, i32 4, i32 1, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 4864, ptr @.str.11, i32 2, i32 26, i32 1, i32 4, i32 1, i32 0, i32 1, i32 4, i8 1 }, %struct.vsp1_device_info { i32 5120, ptr @.str.12, i32 3, i32 502, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i8 1 }, %struct.vsp1_device_info { i32 5376, ptr @.str.13, i32 3, i32 40, i32 0, i32 5, i32 0, i32 0, i32 1, i32 5, i8 1 }, %struct.vsp1_device_info { i32 5632, ptr @.str.14, i32 3, i32 186, i32 0, i32 5, i32 0, i32 0, i32 1, i32 5, i8 1 }, %struct.vsp1_device_info { i32 6656, ptr @.str.15, i32 3, i32 544, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i8 1 }, %struct.vsp1_device_info { i32 5888, ptr @.str.16, i32 3, i32 1064, i32 1, i32 5, i32 0, i32 1, i32 2, i32 5, i8 0 }, %struct.vsp1_device_info { i32 6144, ptr @.str.16, i32 3, i32 520, i32 1, i32 5, i32 0, i32 1, i32 1, i32 5, i8 0 }, %struct.vsp1_device_info { i32 6400, ptr @.str.17, i32 3, i32 1544, i32 2, i32 5, i32 0, i32 2, i32 2, i32 5, i8 0 }, %struct.vsp1_device_info { i32 7168, ptr @.str.16, i32 3, i32 1032, i32 1, i32 5, i32 0, i32 2, i32 1, i32 5, i8 0 }], align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unsupported IP version 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to create entities\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"VSP1-S\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"VSP1-R\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"VSP1-D\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"VSP1V-S\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"VSP1V-D\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"VSP2-I\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"VSP2-BD\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"VSP2-BC\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"VSP2-BS\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"VSP2-D\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"VSP2-DL\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"V4L2 device registration failed (%d)\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_license261], section "llvm.metadata"
@switch.table.vsp1_probe = private unnamed_addr constant [20 x ptr] [ptr @vsp1_device_infos, ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 1), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 2), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 3), ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 4), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 5), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 6), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 7), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 8), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 10), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 11), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 12), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 9), ptr @vsp1_device_infos, ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 13)], align 4

@__mod_of__vsp1_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @vsp1_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_reset_wpf(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %7 = add i32 %1, 8
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %76, label %11

11:                                               ; preds = %2
  %12 = shl nuw i32 1, %1
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !11
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 56
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %18 = and i32 %17, %8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %76, label %20

20:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 56
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %24 = and i32 %23, %8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %76, label %26

26:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %30 = and i32 %29, %8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 56
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %36 = and i32 %35, %8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 56
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %42 = and i32 %41, %8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 56
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %48 = and i32 %47, %8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %44
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 56
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %54 = and i32 %53, %8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %50
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 56
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %60 = and i32 %59, %8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %56
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr i8, ptr %63, i32 56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %66 = and i32 %65, %8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 56
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %72 = and i32 %71, %8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %75 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str, i32 noundef %1) #9
  br label %76

76:                                               ; preds = %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %11, %2
  %77 = phi i32 [ -110, %74 ], [ 0, %2 ], [ 0, %68 ], [ 0, %62 ], [ 0, %56 ], [ 0, %50 ], [ 0, %44 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %20 ], [ 0, %11 ]
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_device_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 -1, ptr elementtype(i32) %6) #8, !srcloc !14
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = phi i32 [ 0, %1 ], [ %3, %5 ], [ %3, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_device_put(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vsp1_platform_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vsp1_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 672, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %436, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 20
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 20, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 21
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 21, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %11, align 8
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = ptrtoint ptr %12 to i32
  br label %436

17:                                               ; preds = %6
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %436

21:                                               ; preds = %17
  %22 = load i32, ptr %18, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %24, %21 ]
  %30 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %22, ptr noundef nonnull @vsp1_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %29, ptr noundef nonnull %4) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %436

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !16
  %36 = call i32 @__of_parse_phandle_with_args(ptr noundef %35, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %37 = icmp ne i32 %36, 0
  %38 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %39 = icmp eq ptr %38, null
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 4
  store ptr inttoptr (i32 -2 to ptr), ptr %42, align 8
  call void @of_node_put(ptr noundef nonnull %38) #8
  %43 = load ptr, ptr %42, align 8
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = ptrtoint ptr %43 to i32
  br label %436

47:                                               ; preds = %33
  %48 = load ptr, ptr %4, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %48, %47 ], [ null, %41 ]
  %51 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 5
  store ptr %50, ptr %51, align 4
  call void @pm_runtime_enable(ptr noundef %3) #8
  %52 = load ptr, ptr %4, align 8
  %53 = call i32 @__pm_runtime_resume(ptr noundef %52, i32 noundef 4) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #8, !srcloc !13
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 0, i32 -1, ptr elementtype(i32) %56) #8, !srcloc !14
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %434, label %60

60:                                               ; preds = %55
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  br label %434

61:                                               ; preds = %49
  %62 = load ptr, ptr %13, align 4
  %63 = getelementptr i8, ptr %62, i32 16128
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %65 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 2
  store i32 %64, ptr %65, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = call i32 @__pm_runtime_idle(ptr noundef %66, i32 noundef 4) #8
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65280
  %70 = add nsw i32 %69, -2304
  %71 = lshr exact i32 %70, 8
  %72 = icmp ult i32 %70, 5120
  br i1 %72, label %73, label %81

73:                                               ; preds = %61
  %74 = lshr i32 785935, %71
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds [20 x ptr], ptr @switch.table.vsp1_probe, i32 0, i32 %71
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  br label %86

81:                                               ; preds = %73, %61
  %82 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %68) #9
  br label %434

86:                                               ; preds = %81, %77
  %87 = phi ptr [ %79, %77 ], [ %83, %81 ]
  %88 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 1
  %89 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 23
  %90 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 22
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %89, align 8
  %92 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 23, i32 6
  store i32 %68, ptr %92, align 8
  %93 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 23, i32 2
  %94 = getelementptr inbounds %struct.vsp1_device_info, ptr %87, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 @strscpy(ptr noundef %93, ptr noundef %95, i32 noundef 32) #8
  %97 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 23, i32 5
  %98 = load ptr, ptr %89, align 8
  %99 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load ptr, ptr %98, align 4
  br label %104

104:                                              ; preds = %102, %86
  %105 = phi ptr [ %103, %102 ], [ %100, %86 ]
  %106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %97, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %105) #8
  call void @media_device_init(ptr noundef %89) #8
  %107 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 24, i32 1
  store ptr @vsp1_entity_link_setup, ptr %107, align 4
  %108 = load ptr, ptr %88, align 4
  %109 = getelementptr inbounds %struct.vsp1_device_info, ptr %108, i32 0, i32 10
  %110 = load i8, ptr %109, align 4, !range !17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 24, i32 2
  store ptr @v4l2_subdev_link_validate, ptr %113, align 8
  br label %114

114:                                              ; preds = %112, %104
  %115 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 22, i32 1
  store ptr %89, ptr %115, align 4
  %116 = load ptr, ptr %4, align 8
  %117 = call i32 @v4l2_device_register(ptr noundef %116, ptr noundef %90) #8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.19, i32 noundef %117) #9
  br label %430

121:                                              ; preds = %114
  %122 = load ptr, ptr %88, align 4
  %123 = getelementptr inbounds %struct.vsp1_device_info, ptr %122, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 512
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %121
  %128 = call ptr @vsp1_brx_create(ptr noundef nonnull %4, i32 noundef 0) #8
  %129 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 6
  store ptr %128, ptr %129, align 8
  %130 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = ptrtoint ptr %128 to i32
  br label %427

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.vsp1_entity, ptr %128, i32 0, i32 6
  %135 = load ptr, ptr %8, align 4
  store ptr %134, ptr %8, align 4
  store ptr %7, ptr %134, align 4
  %136 = getelementptr inbounds %struct.vsp1_entity, ptr %128, i32 0, i32 6, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %134, ptr %135, align 4
  %137 = load ptr, ptr %88, align 4
  %138 = getelementptr inbounds %struct.vsp1_device_info, ptr %137, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  br label %140

140:                                              ; preds = %133, %121
  %141 = phi i32 [ %139, %133 ], [ %124, %121 ]
  %142 = and i32 %141, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %140
  %145 = call ptr @vsp1_brx_create(ptr noundef nonnull %4, i32 noundef 1) #8
  %146 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 7
  store ptr %145, ptr %146, align 4
  %147 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = ptrtoint ptr %145 to i32
  br label %427

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.vsp1_entity, ptr %145, i32 0, i32 6
  %152 = load ptr, ptr %8, align 4
  store ptr %151, ptr %8, align 4
  store ptr %7, ptr %151, align 4
  %153 = getelementptr inbounds %struct.vsp1_entity, ptr %145, i32 0, i32 6, i32 1
  store ptr %152, ptr %153, align 4
  store volatile ptr %151, ptr %152, align 4
  %154 = load ptr, ptr %88, align 4
  %155 = getelementptr inbounds %struct.vsp1_device_info, ptr %154, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  br label %157

157:                                              ; preds = %150, %140
  %158 = phi i32 [ %156, %150 ], [ %141, %140 ]
  %159 = and i32 %158, 16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %157
  %162 = call ptr @vsp1_clu_create(ptr noundef nonnull %4) #8
  %163 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 8
  store ptr %162, ptr %163, align 8
  %164 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = ptrtoint ptr %162 to i32
  br label %427

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.vsp1_entity, ptr %162, i32 0, i32 6
  %169 = load ptr, ptr %8, align 4
  store ptr %168, ptr %8, align 4
  store ptr %7, ptr %168, align 4
  %170 = getelementptr inbounds %struct.vsp1_entity, ptr %162, i32 0, i32 6, i32 1
  store ptr %169, ptr %170, align 4
  store volatile ptr %168, ptr %169, align 4
  br label %171

171:                                              ; preds = %167, %157
  %172 = call ptr @vsp1_hsit_create(ptr noundef nonnull %4, i1 noundef zeroext true) #8
  %173 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 11
  store ptr %172, ptr %173, align 4
  %174 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = ptrtoint ptr %172 to i32
  br label %427

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.vsp1_entity, ptr %172, i32 0, i32 6
  %179 = load ptr, ptr %8, align 4
  store ptr %178, ptr %8, align 4
  store ptr %7, ptr %178, align 4
  %180 = getelementptr inbounds %struct.vsp1_entity, ptr %172, i32 0, i32 6, i32 1
  store ptr %179, ptr %180, align 4
  store volatile ptr %178, ptr %179, align 4
  %181 = call ptr @vsp1_hsit_create(ptr noundef nonnull %4, i1 noundef zeroext false) #8
  %182 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 12
  store ptr %181, ptr %182, align 8
  %183 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = ptrtoint ptr %181 to i32
  br label %427

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.vsp1_entity, ptr %181, i32 0, i32 6
  %188 = load ptr, ptr %8, align 4
  store ptr %187, ptr %8, align 4
  store ptr %7, ptr %187, align 4
  %189 = getelementptr inbounds %struct.vsp1_entity, ptr %181, i32 0, i32 6, i32 1
  store ptr %188, ptr %189, align 4
  store volatile ptr %187, ptr %188, align 4
  %190 = load ptr, ptr %88, align 4
  %191 = getelementptr inbounds %struct.vsp1_device_info, ptr %190, i32 0, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 128
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %212, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.vsp1_device_info, ptr %190, i32 0, i32 10
  %197 = load i8, ptr %196, align 4, !range !17
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %212, label %199

199:                                              ; preds = %195
  %200 = call ptr @vsp1_hgo_create(ptr noundef nonnull %4) #8
  %201 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 9
  store ptr %200, ptr %201, align 4
  %202 = icmp ugt ptr %200, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = ptrtoint ptr %200 to i32
  br label %427

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.vsp1_entity, ptr %200, i32 0, i32 6
  %207 = load ptr, ptr %8, align 4
  store ptr %206, ptr %8, align 4
  store ptr %7, ptr %206, align 4
  %208 = getelementptr inbounds %struct.vsp1_entity, ptr %200, i32 0, i32 6, i32 1
  store ptr %207, ptr %208, align 4
  store volatile ptr %206, ptr %207, align 4
  %209 = load ptr, ptr %88, align 4
  %210 = getelementptr inbounds %struct.vsp1_device_info, ptr %209, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  br label %212

212:                                              ; preds = %205, %195, %186
  %213 = phi i32 [ %211, %205 ], [ %192, %195 ], [ %192, %186 ]
  %214 = phi ptr [ %209, %205 ], [ %190, %195 ], [ %190, %186 ]
  %215 = and i32 %213, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %232, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.vsp1_device_info, ptr %214, i32 0, i32 10
  %219 = load i8, ptr %218, align 4, !range !17
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %232, label %221

221:                                              ; preds = %217
  %222 = call ptr @vsp1_hgt_create(ptr noundef nonnull %4) #8
  %223 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 10
  store ptr %222, ptr %223, align 8
  %224 = icmp ugt ptr %222, inttoptr (i32 -4096 to ptr)
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = ptrtoint ptr %222 to i32
  br label %427

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.vsp1_entity, ptr %222, i32 0, i32 6
  %229 = load ptr, ptr %8, align 4
  store ptr %228, ptr %8, align 4
  store ptr %7, ptr %228, align 4
  %230 = getelementptr inbounds %struct.vsp1_entity, ptr %222, i32 0, i32 6, i32 1
  store ptr %229, ptr %230, align 4
  store volatile ptr %228, ptr %229, align 4
  %231 = load ptr, ptr %88, align 4
  br label %232

232:                                              ; preds = %227, %217, %212
  %233 = phi ptr [ %231, %227 ], [ %214, %217 ], [ %214, %212 ]
  %234 = getelementptr inbounds %struct.vsp1_device_info, ptr %233, i32 0, i32 10
  %235 = load i8, ptr %234, align 4, !range !17
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %257

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.vsp1_device_info, ptr %233, i32 0, i32 4
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %257, label %241

241:                                              ; preds = %247, %237
  %242 = phi i32 [ %252, %247 ], [ 0, %237 ]
  %243 = call ptr @vsp1_lif_create(ptr noundef %4, i32 noundef %242) #8
  %244 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = ptrtoint ptr %243 to i32
  br label %427

247:                                              ; preds = %241
  %248 = getelementptr %struct.vsp1_device, ptr %4, i32 0, i32 13, i32 %242
  store ptr %243, ptr %248, align 4
  %249 = getelementptr inbounds %struct.vsp1_entity, ptr %243, i32 0, i32 6
  %250 = load ptr, ptr %8, align 4
  store ptr %249, ptr %8, align 4
  store ptr %7, ptr %249, align 4
  %251 = getelementptr inbounds %struct.vsp1_entity, ptr %243, i32 0, i32 6, i32 1
  store ptr %250, ptr %251, align 4
  store volatile ptr %249, ptr %250, align 4
  %252 = add nuw i32 %242, 1
  %253 = load ptr, ptr %88, align 4
  %254 = getelementptr inbounds %struct.vsp1_device_info, ptr %253, i32 0, i32 4
  %255 = load i32, ptr %254, align 4
  %256 = icmp ult i32 %252, %255
  br i1 %256, label %241, label %257

257:                                              ; preds = %247, %237, %232
  %258 = phi ptr [ %233, %237 ], [ %233, %232 ], [ %253, %247 ]
  %259 = getelementptr inbounds %struct.vsp1_device_info, ptr %258, i32 0, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %257
  %264 = call ptr @vsp1_lut_create(ptr noundef %4) #8
  %265 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 14
  store ptr %264, ptr %265, align 4
  %266 = icmp ugt ptr %264, inttoptr (i32 -4096 to ptr)
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = ptrtoint ptr %264 to i32
  br label %427

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.vsp1_entity, ptr %264, i32 0, i32 6
  %271 = load ptr, ptr %8, align 4
  store ptr %270, ptr %8, align 4
  store ptr %7, ptr %270, align 4
  %272 = getelementptr inbounds %struct.vsp1_entity, ptr %264, i32 0, i32 6, i32 1
  store ptr %271, ptr %272, align 4
  store volatile ptr %270, ptr %271, align 4
  %273 = load ptr, ptr %88, align 4
  br label %274

274:                                              ; preds = %269, %257
  %275 = phi ptr [ %273, %269 ], [ %258, %257 ]
  %276 = getelementptr inbounds %struct.vsp1_device_info, ptr %275, i32 0, i32 5
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %309, label %279

279:                                              ; preds = %303, %274
  %280 = phi i32 [ %305, %303 ], [ 0, %274 ]
  %281 = call ptr @vsp1_rpf_create(ptr noundef %4, i32 noundef %280) #8
  %282 = icmp ugt ptr %281, inttoptr (i32 -4096 to ptr)
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = ptrtoint ptr %281 to i32
  br label %427

285:                                              ; preds = %279
  %286 = getelementptr %struct.vsp1_device, ptr %4, i32 0, i32 15, i32 %280
  store ptr %281, ptr %286, align 4
  %287 = getelementptr inbounds %struct.vsp1_entity, ptr %281, i32 0, i32 6
  %288 = load ptr, ptr %8, align 4
  store ptr %287, ptr %8, align 4
  store ptr %7, ptr %287, align 4
  %289 = getelementptr inbounds %struct.vsp1_entity, ptr %281, i32 0, i32 6, i32 1
  store ptr %288, ptr %289, align 4
  store volatile ptr %287, ptr %288, align 4
  %290 = load ptr, ptr %88, align 4
  %291 = getelementptr inbounds %struct.vsp1_device_info, ptr %290, i32 0, i32 10
  %292 = load i8, ptr %291, align 4, !range !17
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %285
  %295 = call ptr @vsp1_video_create(ptr noundef %4, ptr noundef %281) #8
  %296 = icmp ugt ptr %295, inttoptr (i32 -4096 to ptr)
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = ptrtoint ptr %295 to i32
  br label %427

299:                                              ; preds = %294
  %300 = load ptr, ptr %10, align 4
  store ptr %295, ptr %10, align 4
  store ptr %9, ptr %295, align 4
  %301 = getelementptr inbounds %struct.list_head, ptr %295, i32 0, i32 1
  store ptr %300, ptr %301, align 4
  store volatile ptr %295, ptr %300, align 4
  %302 = load ptr, ptr %88, align 4
  br label %303

303:                                              ; preds = %299, %285
  %304 = phi ptr [ %302, %299 ], [ %290, %285 ]
  %305 = add nuw i32 %280, 1
  %306 = getelementptr inbounds %struct.vsp1_device_info, ptr %304, i32 0, i32 5
  %307 = load i32, ptr %306, align 4
  %308 = icmp ult i32 %305, %307
  br i1 %308, label %279, label %309

309:                                              ; preds = %303, %274
  %310 = phi ptr [ %275, %274 ], [ %304, %303 ]
  %311 = getelementptr inbounds %struct.vsp1_device_info, ptr %310, i32 0, i32 3
  %312 = load i32, ptr %311, align 4
  %313 = and i32 %312, 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %326, label %315

315:                                              ; preds = %309
  %316 = call ptr @vsp1_sru_create(ptr noundef %4) #8
  %317 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 16
  store ptr %316, ptr %317, align 4
  %318 = icmp ugt ptr %316, inttoptr (i32 -4096 to ptr)
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = ptrtoint ptr %316 to i32
  br label %427

321:                                              ; preds = %315
  %322 = getelementptr inbounds %struct.vsp1_entity, ptr %316, i32 0, i32 6
  %323 = load ptr, ptr %8, align 4
  store ptr %322, ptr %8, align 4
  store ptr %7, ptr %322, align 4
  %324 = getelementptr inbounds %struct.vsp1_entity, ptr %316, i32 0, i32 6, i32 1
  store ptr %323, ptr %324, align 4
  store volatile ptr %322, ptr %323, align 4
  %325 = load ptr, ptr %88, align 4
  br label %326

326:                                              ; preds = %321, %309
  %327 = phi ptr [ %325, %321 ], [ %310, %309 ]
  %328 = getelementptr inbounds %struct.vsp1_device_info, ptr %327, i32 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %342, %326
  %332 = phi ptr [ %327, %326 ], [ %348, %342 ]
  %333 = getelementptr inbounds %struct.vsp1_device_info, ptr %332, i32 0, i32 7
  %334 = load i32, ptr %333, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %352, label %357

336:                                              ; preds = %342, %326
  %337 = phi i32 [ %347, %342 ], [ 0, %326 ]
  %338 = call ptr @vsp1_uds_create(ptr noundef %4, i32 noundef %337) #8
  %339 = icmp ugt ptr %338, inttoptr (i32 -4096 to ptr)
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = ptrtoint ptr %338 to i32
  br label %427

342:                                              ; preds = %336
  %343 = getelementptr %struct.vsp1_device, ptr %4, i32 0, i32 17, i32 %337
  store ptr %338, ptr %343, align 4
  %344 = getelementptr inbounds %struct.vsp1_entity, ptr %338, i32 0, i32 6
  %345 = load ptr, ptr %8, align 4
  store ptr %344, ptr %8, align 4
  store ptr %7, ptr %344, align 4
  %346 = getelementptr inbounds %struct.vsp1_entity, ptr %338, i32 0, i32 6, i32 1
  store ptr %345, ptr %346, align 4
  store volatile ptr %344, ptr %345, align 4
  %347 = add nuw i32 %337, 1
  %348 = load ptr, ptr %88, align 4
  %349 = getelementptr inbounds %struct.vsp1_device_info, ptr %348, i32 0, i32 6
  %350 = load i32, ptr %349, align 4
  %351 = icmp ult i32 %347, %350
  br i1 %351, label %336, label %331

352:                                              ; preds = %363, %331
  %353 = phi ptr [ %332, %331 ], [ %369, %363 ]
  %354 = getelementptr inbounds %struct.vsp1_device_info, ptr %353, i32 0, i32 8
  %355 = load i32, ptr %354, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %403, label %373

357:                                              ; preds = %363, %331
  %358 = phi i32 [ %368, %363 ], [ 0, %331 ]
  %359 = call ptr @vsp1_uif_create(ptr noundef %4, i32 noundef %358) #8
  %360 = icmp ugt ptr %359, inttoptr (i32 -4096 to ptr)
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = ptrtoint ptr %359 to i32
  br label %427

363:                                              ; preds = %357
  %364 = getelementptr %struct.vsp1_device, ptr %4, i32 0, i32 18, i32 %358
  store ptr %359, ptr %364, align 4
  %365 = getelementptr inbounds %struct.vsp1_entity, ptr %359, i32 0, i32 6
  %366 = load ptr, ptr %8, align 4
  store ptr %365, ptr %8, align 4
  store ptr %7, ptr %365, align 4
  %367 = getelementptr inbounds %struct.vsp1_entity, ptr %359, i32 0, i32 6, i32 1
  store ptr %366, ptr %367, align 4
  store volatile ptr %365, ptr %366, align 4
  %368 = add nuw i32 %358, 1
  %369 = load ptr, ptr %88, align 4
  %370 = getelementptr inbounds %struct.vsp1_device_info, ptr %369, i32 0, i32 7
  %371 = load i32, ptr %370, align 4
  %372 = icmp ult i32 %368, %371
  br i1 %372, label %357, label %352

373:                                              ; preds = %397, %352
  %374 = phi i32 [ %399, %397 ], [ 0, %352 ]
  %375 = call ptr @vsp1_wpf_create(ptr noundef %4, i32 noundef %374) #8
  %376 = icmp ugt ptr %375, inttoptr (i32 -4096 to ptr)
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = ptrtoint ptr %375 to i32
  br label %427

379:                                              ; preds = %373
  %380 = getelementptr %struct.vsp1_device, ptr %4, i32 0, i32 19, i32 %374
  store ptr %375, ptr %380, align 4
  %381 = getelementptr inbounds %struct.vsp1_entity, ptr %375, i32 0, i32 6
  %382 = load ptr, ptr %8, align 4
  store ptr %381, ptr %8, align 4
  store ptr %7, ptr %381, align 4
  %383 = getelementptr inbounds %struct.vsp1_entity, ptr %375, i32 0, i32 6, i32 1
  store ptr %382, ptr %383, align 4
  store volatile ptr %381, ptr %382, align 4
  %384 = load ptr, ptr %88, align 4
  %385 = getelementptr inbounds %struct.vsp1_device_info, ptr %384, i32 0, i32 10
  %386 = load i8, ptr %385, align 4, !range !17
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %397, label %388

388:                                              ; preds = %379
  %389 = call ptr @vsp1_video_create(ptr noundef %4, ptr noundef %375) #8
  %390 = icmp ugt ptr %389, inttoptr (i32 -4096 to ptr)
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = ptrtoint ptr %389 to i32
  br label %427

393:                                              ; preds = %388
  %394 = load ptr, ptr %10, align 4
  store ptr %389, ptr %10, align 4
  store ptr %9, ptr %389, align 4
  %395 = getelementptr inbounds %struct.list_head, ptr %389, i32 0, i32 1
  store ptr %394, ptr %395, align 4
  store volatile ptr %389, ptr %394, align 4
  %396 = load ptr, ptr %88, align 4
  br label %397

397:                                              ; preds = %393, %379
  %398 = phi ptr [ %396, %393 ], [ %384, %379 ]
  %399 = add nuw i32 %374, 1
  %400 = getelementptr inbounds %struct.vsp1_device_info, ptr %398, i32 0, i32 8
  %401 = load i32, ptr %400, align 4
  %402 = icmp ult i32 %399, %401
  br i1 %402, label %373, label %403

403:                                              ; preds = %397, %352
  br label %404

404:                                              ; preds = %408, %403
  %405 = phi ptr [ %406, %408 ], [ %7, %403 ]
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, %7
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = getelementptr i8, ptr %406, i32 36
  %410 = call i32 @v4l2_device_register_subdev(ptr noundef %90, ptr noundef %409) #8
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %430, label %404

412:                                              ; preds = %404
  %413 = load ptr, ptr %88, align 4
  %414 = getelementptr inbounds %struct.vsp1_device_info, ptr %413, i32 0, i32 10
  %415 = load i8, ptr %414, align 4, !range !17
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %425, label %417

417:                                              ; preds = %412
  %418 = call fastcc i32 @vsp1_uapi_create_links(ptr noundef %4) #8
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %430, label %420

420:                                              ; preds = %417
  %421 = call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %90, i1 noundef zeroext false) #8
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %430, label %423

423:                                              ; preds = %420
  %424 = call i32 @__media_device_register(ptr noundef %89, ptr noundef nonnull @__this_module) #8
  br label %427

425:                                              ; preds = %412
  %426 = call i32 @vsp1_drm_init(ptr noundef %4) #8
  br label %427

427:                                              ; preds = %425, %423, %391, %377, %361, %340, %319, %297, %283, %267, %245, %225, %203, %184, %175, %165, %148, %131
  %428 = phi i32 [ %132, %131 ], [ %149, %148 ], [ %166, %165 ], [ %176, %175 ], [ %185, %184 ], [ %204, %203 ], [ %226, %225 ], [ %268, %267 ], [ %320, %319 ], [ %341, %340 ], [ %362, %361 ], [ %424, %423 ], [ %426, %425 ], [ %246, %245 ], [ %284, %283 ], [ %298, %297 ], [ %378, %377 ], [ %392, %391 ]
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %427, %420, %417, %408, %119
  %431 = phi i32 [ %428, %427 ], [ %421, %420 ], [ %418, %417 ], [ %117, %119 ], [ %410, %408 ]
  call fastcc void @vsp1_destroy_entities(ptr noundef %4) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %434

432:                                              ; preds = %427
  %433 = icmp eq i32 %428, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %432, %430, %85, %60, %55
  %435 = phi i32 [ %428, %432 ], [ -6, %85 ], [ %431, %430 ], [ %53, %55 ], [ %53, %60 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  br label %436

436:                                              ; preds = %434, %432, %45, %32, %20, %15, %1
  %437 = phi i32 [ %16, %15 ], [ %30, %32 ], [ %46, %45 ], [ -22, %20 ], [ -12, %1 ], [ %435, %434 ], [ 0, %432 ]
  ret i32 %437
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @vsp1_destroy_entities(ptr noundef %3)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_device_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 3
  br label %10

10:                                               ; preds = %31, %8
  %11 = phi i32 [ 0, %8 ], [ %33, %31 ]
  %12 = phi i32 [ 0, %8 ], [ %32, %31 ]
  %13 = getelementptr %struct.vsp1_device, ptr %1, i32 0, i32 19, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = mul i32 %11, 12
  %18 = add i32 %17, 76
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %22 = and i32 %21, 3
  %23 = xor i32 %22, 3
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !11
  %26 = and i32 %21, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.vsp1_entity, ptr %14, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void @vsp1_pipeline_frame_end(ptr noundef %30) #8
  br label %31

31:                                               ; preds = %28, %16, %10
  %32 = phi i32 [ %12, %10 ], [ 1, %28 ], [ %12, %16 ]
  %33 = add nuw i32 %11, 1
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.vsp1_device_info, ptr %34, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %10, label %38

38:                                               ; preds = %31, %2
  %39 = phi i32 [ 0, %2 ], [ %32, %31 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_link_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_brx_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_clu_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_hsit_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_hgo_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_hgt_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_lif_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_lut_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_rpf_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_video_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_sru_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_uds_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_uif_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_wpf_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vsp1_uapi_create_links(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %69, label %5

5:                                                ; preds = %66, %1
  %6 = phi ptr [ %67, %66 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -24
  %8 = getelementptr i8, ptr %6, i32 -16
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %10 [
    i32 7, label %66
    i32 9, label %66
  ]

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 36
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %6, i32 -12
  %16 = getelementptr i8, ptr %6, i32 68
  %17 = getelementptr i8, ptr %6, i32 80
  br label %18

18:                                               ; preds = %64, %14
  %19 = phi i32 [ %9, %14 ], [ %65, %64 ]
  %20 = phi ptr [ %12, %14 ], [ %62, %64 ]
  %21 = getelementptr i8, ptr %20, i32 -16
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %19
  br i1 %23, label %61, label %24

24:                                               ; preds = %18
  switch i32 %22, label %32 [
    i32 3, label %61
    i32 4, label %61
    i32 7, label %61
    i32 13, label %61
    i32 9, label %25
  ]

25:                                               ; preds = %24
  %26 = icmp eq i32 %19, 13
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %20, i32 -12
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %15, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %27, %25, %24
  %33 = phi i1 [ false, %25 ], [ %31, %27 ], [ false, %24 ]
  %34 = zext i1 %33 to i32
  %35 = load i16, ptr %16, align 4
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %20, i32 36
  %39 = getelementptr i8, ptr %20, i32 20
  %40 = getelementptr i8, ptr %20, i32 28
  br label %41

41:                                               ; preds = %56, %37
  %42 = phi i32 [ 0, %37 ], [ %57, %56 ]
  %43 = load ptr, ptr %17, align 4
  %44 = getelementptr %struct.media_pad, ptr %43, i32 %42, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load i32, ptr %39, align 4
  %50 = trunc i32 %49 to i16
  %51 = trunc i32 %42 to i16
  %52 = tail call i32 @media_create_pad_link(ptr noundef %38, i16 noundef zeroext %50, ptr noundef %11, i16 noundef zeroext %51, i32 noundef %34) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %156, label %54

54:                                               ; preds = %48
  br i1 %33, label %55, label %56

55:                                               ; preds = %54
  store ptr %7, ptr %40, align 4
  br label %56

56:                                               ; preds = %55, %54, %41
  %57 = add nuw nsw i32 %42, 1
  %58 = load i16, ptr %16, align 4
  %59 = zext i16 %58 to i32
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %41, label %61

61:                                               ; preds = %56, %32, %24, %24, %24, %24, %18
  %62 = load ptr, ptr %20, align 4
  %63 = icmp eq ptr %62, %2
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %8, align 4
  br label %18

66:                                               ; preds = %61, %10, %5, %5
  %67 = load ptr, ptr %6, align 4
  %68 = icmp eq ptr %67, %2
  br i1 %68, label %69, label %5

69:                                               ; preds = %66, %1
  %70 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.vsp1_entity, ptr %71, i32 0, i32 13
  %75 = getelementptr inbounds %struct.vsp1_histogram, ptr %71, i32 0, i32 1
  %76 = tail call i32 @media_create_pad_link(ptr noundef %74, i16 noundef zeroext 1, ptr noundef %75, i16 noundef zeroext 0, i32 noundef 3) #8
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %156, label %78

78:                                               ; preds = %73, %69
  %79 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 10
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.vsp1_entity, ptr %80, i32 0, i32 13
  %84 = getelementptr inbounds %struct.vsp1_histogram, ptr %80, i32 0, i32 1
  %85 = tail call i32 @media_create_pad_link(ptr noundef %83, i16 noundef zeroext 1, ptr noundef %84, i16 noundef zeroext 0, i32 noundef 3) #8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %156, label %87

87:                                               ; preds = %82, %78
  %88 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.vsp1_device_info, ptr %89, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %113, %87
  %94 = phi ptr [ %89, %87 ], [ %114, %113 ]
  %95 = getelementptr inbounds %struct.vsp1_device_info, ptr %94, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %125, label %130

98:                                               ; preds = %113, %87
  %99 = phi ptr [ %114, %113 ], [ %89, %87 ]
  %100 = phi i32 [ %115, %113 ], [ 0, %87 ]
  %101 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 13, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 19, i32 %100
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.vsp1_entity, ptr %106, i32 0, i32 13
  %108 = getelementptr inbounds %struct.vsp1_entity, ptr %102, i32 0, i32 13
  %109 = tail call i32 @media_create_pad_link(ptr noundef %107, i16 noundef zeroext 1, ptr noundef %108, i16 noundef zeroext 0, i32 noundef 0) #8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %156, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %88, align 4
  br label %113

113:                                              ; preds = %111, %98
  %114 = phi ptr [ %112, %111 ], [ %99, %98 ]
  %115 = add nuw i32 %100, 1
  %116 = getelementptr inbounds %struct.vsp1_device_info, ptr %114, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %98, label %93

119:                                              ; preds = %130
  %120 = add nuw i32 %131, 1
  %121 = load ptr, ptr %88, align 4
  %122 = getelementptr inbounds %struct.vsp1_device_info, ptr %121, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %119, %93
  %126 = phi ptr [ %94, %93 ], [ %121, %119 ]
  %127 = getelementptr inbounds %struct.vsp1_device_info, ptr %126, i32 0, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %156, label %146

130:                                              ; preds = %119, %93
  %131 = phi i32 [ %120, %119 ], [ 0, %93 ]
  %132 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 15, i32 %131
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.vsp1_rwpf, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.vsp1_video, ptr %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.vsp1_entity, ptr %133, i32 0, i32 13
  %138 = tail call i32 @media_create_pad_link(ptr noundef %136, i16 noundef zeroext 0, ptr noundef %137, i16 noundef zeroext 0, i32 noundef 3) #8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %156, label %119

140:                                              ; preds = %146
  %141 = add nuw i32 %147, 1
  %142 = load ptr, ptr %88, align 4
  %143 = getelementptr inbounds %struct.vsp1_device_info, ptr %142, i32 0, i32 8
  %144 = load i32, ptr %143, align 4
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %140, %125
  %147 = phi i32 [ %141, %140 ], [ 0, %125 ]
  %148 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 19, i32 %147
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.vsp1_entity, ptr %149, i32 0, i32 13
  %151 = getelementptr inbounds %struct.vsp1_rwpf, ptr %149, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.vsp1_video, ptr %152, i32 0, i32 3
  %154 = tail call i32 @media_create_pad_link(ptr noundef %150, i16 noundef zeroext 1, ptr noundef %153, i16 noundef zeroext 0, i32 noundef 3) #8
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %140

156:                                              ; preds = %146, %140, %130, %125, %104, %82, %73, %48
  %157 = phi i32 [ %76, %73 ], [ %85, %82 ], [ 0, %125 ], [ %154, %146 ], [ 0, %140 ], [ %138, %130 ], [ %109, %104 ], [ %52, %48 ]
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_drm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vsp1_destroy_entities(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -24
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @vsp1_entity_destroy(ptr noundef %7) #8
  %12 = icmp eq ptr %8, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 21
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @vsp1_video_cleanup(ptr noundef %18) #8
  %23 = icmp eq ptr %19, %14
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %13
  %25 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 22
  tail call void @v4l2_device_unregister(ptr noundef %25) #8
  %26 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vsp1_device_info, ptr %27, i32 0, i32 10
  %29 = load i8, ptr %28, align 4, !range !17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 23
  tail call void @media_device_unregister(ptr noundef %32) #8
  br label %33

33:                                               ; preds = %31, %24
  %34 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 23
  tail call void @media_device_cleanup(ptr noundef %34) #8
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.vsp1_device_info, ptr %35, i32 0, i32 10
  %37 = load i8, ptr %36, align 4, !range !17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @vsp1_drm_cleanup(ptr noundef %0) #8
  br label %40

40:                                               ; preds = %39, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_video_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_drm_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_pm_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @vsp1_video_suspend(ptr noundef %3) #8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %3, align 8
  %10 = tail call i32 @pm_runtime_force_suspend(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_pm_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @pm_runtime_force_resume(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @vsp1_video_resume(ptr noundef %3) #8
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vsp1_pm_runtime_suspend(ptr nocapture noundef readonly %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_pm_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %98, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vsp1_device_info, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %17

11:                                               ; preds = %17
  %12 = add nuw i32 %18, 1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.vsp1_device_info, ptr %13, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11, %7
  %18 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %19 = tail call i32 @vsp1_reset_wpf(ptr noundef %3, i32 noundef %18) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %98, label %11

21:                                               ; preds = %11, %7
  %22 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 2056) #8, !srcloc !11
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.vsp1_device_info, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %34, %21
  %30 = phi ptr [ %25, %21 ], [ %41, %34 ]
  %31 = getelementptr inbounds %struct.vsp1_device_info, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %50

34:                                               ; preds = %34, %21
  %35 = phi i32 [ %40, %34 ], [ 0, %21 ]
  %36 = shl i32 %35, 2
  %37 = add i32 %36, 8192
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 63) #8, !srcloc !11
  %40 = add nuw i32 %35, 1
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.vsp1_device_info, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %34, label %29

45:                                               ; preds = %50, %29
  %46 = phi ptr [ %30, %29 ], [ %57, %50 ]
  %47 = getelementptr inbounds %struct.vsp1_device_info, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %72, label %61

50:                                               ; preds = %50, %29
  %51 = phi i32 [ %56, %50 ], [ 0, %29 ]
  %52 = shl i32 %51, 2
  %53 = add i32 %52, 8232
  %54 = load ptr, ptr %22, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 63) #8, !srcloc !11
  %56 = add nuw i32 %51, 1
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.vsp1_device_info, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %50, label %45

61:                                               ; preds = %61, %45
  %62 = phi i32 [ %67, %61 ], [ 0, %45 ]
  %63 = shl i32 %62, 2
  %64 = add i32 %63, 8308
  %65 = load ptr, ptr %22, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 63) #8, !srcloc !11
  %67 = add nuw i32 %62, 1
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.vsp1_device_info, ptr %68, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %61, label %72

72:                                               ; preds = %61, %45
  %73 = load ptr, ptr %22, align 4
  %74 = getelementptr i8, ptr %73, i32 8228
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 63) #8, !srcloc !11
  %75 = load ptr, ptr %22, align 4
  %76 = getelementptr i8, ptr %75, i32 8252
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 63) #8, !srcloc !11
  %77 = load ptr, ptr %22, align 4
  %78 = getelementptr i8, ptr %77, i32 8256
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 63) #8, !srcloc !11
  %79 = load ptr, ptr %22, align 4
  %80 = getelementptr i8, ptr %79, i32 8260
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 63) #8, !srcloc !11
  %81 = load ptr, ptr %22, align 4
  %82 = getelementptr i8, ptr %81, i32 8264
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 63) #8, !srcloc !11
  %83 = load ptr, ptr %22, align 4
  %84 = getelementptr i8, ptr %83, i32 8268
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 63) #8, !srcloc !11
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.vsp1_device_info, ptr %85, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %72
  %91 = load ptr, ptr %22, align 4
  %92 = getelementptr i8, ptr %91, i32 8272
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 63) #8, !srcloc !11
  br label %93

93:                                               ; preds = %90, %72
  %94 = load ptr, ptr %22, align 4
  %95 = getelementptr i8, ptr %94, i32 8276
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 1855) #8, !srcloc !11
  %96 = load ptr, ptr %22, align 4
  %97 = getelementptr i8, ptr %96, i32 8280
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 1855) #8, !srcloc !11
  tail call void @vsp1_dlm_setup(ptr noundef %3) #8
  br label %98

98:                                               ; preds = %93, %17, %1
  %99 = phi i32 [ 0, %93 ], [ 0, %1 ], [ %19, %17 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_video_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_video_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dlm_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3753347}
!9 = !{i64 2151292800}
!10 = !{i64 2151294022}
!11 = !{i64 3752929}
!12 = !{i64 2147962346}
!13 = !{i64 460656, i64 2147950627, i64 2147950653, i64 2147950700, i64 2147950722, i64 2147950750, i64 2147950770}
!14 = !{i64 447225, i64 447250, i64 447272, i64 447288, i64 447300, i64 447320, i64 447344, i64 447360, i64 447372}
!15 = !{i64 2147962472}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
