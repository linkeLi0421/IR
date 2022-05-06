; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-subdev.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-subdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_call_wrappers:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_call_wrappers\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_call_wrappers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_get_fwnode_pad_1_to_1:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_get_fwnode_pad_1_to_1\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_get_fwnode_pad_1_to_1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_link_validate_default:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_link_validate_default\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_link_validate_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_link_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_link_validate\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_link_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_alloc_state:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_alloc_state\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_alloc_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_free_state:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_free_state\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_free_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_init\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_subdev_notify_event:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_subdev_notify_event\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_subdev_notify_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.66, %union.anon.67, ptr, i32, i8 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.75 }
%union.anon.75 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings = type { i32, %union.anon.73 }
%union.anon.73 = type { [32 x i32] }
%struct.v4l2_subdev_capability = type { i32, i32, [14 x i32] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_crop = type { i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }

@v4l2_subdev_call_video_wrappers = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @call_g_frame_interval, ptr @call_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@v4l2_subdev_call_pad_wrappers = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @call_enum_mbus_code, ptr @call_enum_frame_size, ptr @call_enum_frame_interval, ptr @call_get_fmt, ptr @call_set_fmt, ptr @call_get_selection, ptr @call_set_selection, ptr @call_get_edid, ptr @call_set_edid, ptr @call_dv_timings_cap, ptr @call_enum_dv_timings, ptr null, ptr null, ptr null, ptr @call_get_mbus_config, ptr @call_set_mbus_config }, align 4
@v4l2_subdev_call_wrappers = dso_local constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @v4l2_subdev_call_video_wrappers, ptr null, ptr null, ptr null, ptr @v4l2_subdev_call_pad_wrappers }, align 4
@__kstrtab_v4l2_subdev_call_wrappers = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_call_wrappers = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_call_wrappers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32), ptr @__kstrtab_v4l2_subdev_call_wrappers, ptr @__kstrtabns_v4l2_subdev_call_wrappers }, section "___ksymtab+v4l2_subdev_call_wrappers", align 4
@__this_module = external dso_local global %struct.module, align 64
@v4l2_subdev_fops = dso_local local_unnamed_addr constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @subdev_poll, ptr @subdev_ioctl, ptr null, ptr null, ptr @subdev_open, ptr @subdev_close }, align 4
@__kstrtab_v4l2_subdev_get_fwnode_pad_1_to_1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_get_fwnode_pad_1_to_1 = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_get_fwnode_pad_1_to_1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_get_fwnode_pad_1_to_1 to i32), ptr @__kstrtab_v4l2_subdev_get_fwnode_pad_1_to_1, ptr @__kstrtabns_v4l2_subdev_get_fwnode_pad_1_to_1 }, section "___ksymtab_gpl+v4l2_subdev_get_fwnode_pad_1_to_1", align 4
@__kstrtab_v4l2_subdev_link_validate_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_link_validate_default = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_link_validate_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_link_validate_default to i32), ptr @__kstrtab_v4l2_subdev_link_validate_default, ptr @__kstrtabns_v4l2_subdev_link_validate_default }, section "___ksymtab_gpl+v4l2_subdev_link_validate_default", align 4
@__kstrtab_v4l2_subdev_link_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_link_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_link_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_link_validate to i32), ptr @__kstrtab_v4l2_subdev_link_validate, ptr @__kstrtabns_v4l2_subdev_link_validate }, section "___ksymtab_gpl+v4l2_subdev_link_validate", align 4
@__kstrtab_v4l2_subdev_alloc_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_alloc_state = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_alloc_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_alloc_state to i32), ptr @__kstrtab_v4l2_subdev_alloc_state, ptr @__kstrtabns_v4l2_subdev_alloc_state }, section "___ksymtab_gpl+v4l2_subdev_alloc_state", align 4
@__kstrtab_v4l2_subdev_free_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_free_state = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_free_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_free_state to i32), ptr @__kstrtab_v4l2_subdev_free_state, ptr @__kstrtabns_v4l2_subdev_free_state }, section "___ksymtab_gpl+v4l2_subdev_free_state", align 4
@__kstrtab_v4l2_subdev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_init to i32), ptr @__kstrtab_v4l2_subdev_init, ptr @__kstrtabns_v4l2_subdev_init }, section "___ksymtab+v4l2_subdev_init", align 4
@__kstrtab_v4l2_subdev_notify_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_subdev_notify_event = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_subdev_notify_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_subdev_notify_event to i32), ptr @__kstrtab_v4l2_subdev_notify_event, ptr @__kstrtabns_v4l2_subdev_notify_event }, section "___ksymtab_gpl+v4l2_subdev_notify_event", align 4
@.str = private unnamed_addr constant [58 x i8] c"\016%s: =================  START STATUS  =================\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\016%s: ==================  END STATUS  ==================\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"drivers/media/v4l2-core/v4l2-subdev.c\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Driver bug! Wrong media entity type 0x%08x, entity %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_v4l2_subdev_alloc_state, ptr @__ksymtab_v4l2_subdev_call_wrappers, ptr @__ksymtab_v4l2_subdev_free_state, ptr @__ksymtab_v4l2_subdev_get_fwnode_pad_1_to_1, ptr @__ksymtab_v4l2_subdev_init, ptr @__ksymtab_v4l2_subdev_link_validate, ptr @__ksymtab_v4l2_subdev_link_validate_default, ptr @__ksymtab_v4l2_subdev_notify_event], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @video_devdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.v4l2_fh, ptr %12, i32 0, i32 4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 4
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %13, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void %16(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %1) #9
  br label %21

21:                                               ; preds = %20, %15, %10
  %22 = tail call i32 @v4l2_event_pending(ptr noundef %12) #9
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 2
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i32 [ 8, %2 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @video_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @subdev_do_ioctl_lock) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @v4l2_subdev_alloc_state(ptr noundef %4) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %6, i32 0, i32 2
  store ptr %9, ptr %12, align 4
  tail call void @v4l2_fh_init(ptr noundef nonnull %6, ptr noundef %2) #9
  tail call void @v4l2_fh_add(ptr noundef nonnull %6) #9
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %6, ptr %13, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_device, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %21

19:                                               ; preds = %8
  %20 = ptrtoint ptr %9 to i32
  br label %53

21:                                               ; preds = %11
  %22 = load ptr, ptr %4, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.device_driver, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 @try_module_get(ptr noundef %29) #9
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %6, i32 0, i32 1
  store ptr %29, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %21, %11
  %34 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.v4l2_subdev_internal_ops, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %39(ptr noundef %4, ptr noundef nonnull %6) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41, %25
  %45 = phi i32 [ %42, %41 ], [ -16, %25 ]
  %46 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %6, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  tail call void @module_put(ptr noundef %47) #9
  tail call void @v4l2_fh_del(ptr noundef nonnull %6) #9
  tail call void @v4l2_fh_exit(ptr noundef nonnull %6) #9
  %48 = load ptr, ptr %12, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %48, align 4
  tail call void @kvfree(ptr noundef %51) #9
  tail call void @kfree(ptr noundef nonnull %48) #9
  br label %52

52:                                               ; preds = %50, %44
  store ptr null, ptr %12, align 4
  br label %53

53:                                               ; preds = %52, %19
  %54 = phi i32 [ %45, %52 ], [ %20, %19 ]
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %55

55:                                               ; preds = %53, %41, %37, %33, %1
  %56 = phi i32 [ -12, %1 ], [ 0, %41 ], [ 0, %37 ], [ 0, %33 ], [ %54, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_close(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_subdev_internal_ops, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %4, ptr noundef %6) #9
  br label %16

16:                                               ; preds = %14, %10, %1
  %17 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @module_put(ptr noundef %18) #9
  tail call void @v4l2_fh_del(ptr noundef %6) #9
  tail call void @v4l2_fh_exit(ptr noundef %6) #9
  %19 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 4
  tail call void @kvfree(ptr noundef %23) #9
  tail call void @kfree(ptr noundef nonnull %20) #9
  br label %24

24:                                               ; preds = %22, %16
  store ptr null, ptr %19, align 4
  tail call void @kfree(ptr noundef %6) #9
  store ptr null, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_subdev_get_fwnode_pad_1_to_1(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_endpoint, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @fwnode_graph_get_port_parent(ptr noundef %10) #9
  tail call void @fwnode_handle_put(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @dev_fwnode(ptr noundef %13) #9
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, ptr %1, align 4
  br label %18

18:                                               ; preds = %16, %8, %4, %2
  %19 = phi i32 [ %17, %16 ], [ -22, %4 ], [ -6, %8 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @v4l2_subdev_link_validate_default(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  %25 = icmp eq i32 %23, 1
  %26 = or i1 %24, %25
  %27 = select i1 %26, i1 %19, i1 false
  %28 = select i1 %27, i1 %14, i1 false
  %29 = select i1 %28, i1 %9, i1 false
  %30 = select i1 %29, i32 0, i32 -32
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_subdev_link_validate(ptr noundef %0) #0 {
  %2 = alloca %struct.v4l2_subdev_format, align 4
  %3 = alloca %struct.v4l2_subdev_format, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #9
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 80, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #9
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i32 80, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  store i32 1, ptr %3, align 4
  %16 = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %144, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %144, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 0
  %33 = icmp ult i16 %17, %31
  %34 = icmp eq i16 %17, 0
  %35 = select i1 %32, i1 %34, i1 %33
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = select i1 %34, i32 0, i32 -22
  %38 = select i1 %33, i32 0, i32 -22
  %39 = select i1 %32, i32 %37, i32 %38
  br label %49

40:                                               ; preds = %29
  %41 = call i32 %27(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %3) #9
  br label %49

42:                                               ; preds = %11, %1
  %43 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 65537
  br i1 %45, label %144, label %46, !prof !9

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 840, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %44, ptr noundef %48) #9
  br label %144

49:                                               ; preds = %40, %36
  %50 = phi i32 [ %41, %40 ], [ %39, %36 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %144, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.media_pad, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %89, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.media_entity, ptr %56, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  store i32 1, ptr %2, align 4
  %63 = getelementptr inbounds %struct.media_pad, ptr %54, i32 0, i32 2
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_subdev, ptr %56, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %68, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %144, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %70, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %144, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.media_entity, ptr %56, i32 0, i32 5
  %78 = load i16, ptr %77, align 4
  %79 = icmp eq i16 %78, 0
  %80 = icmp ult i16 %64, %78
  %81 = icmp eq i16 %64, 0
  %82 = select i1 %79, i1 %81, i1 %80
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = select i1 %81, i32 0, i32 -22
  %85 = select i1 %80, i32 0, i32 -22
  %86 = select i1 %79, i32 %84, i32 %85
  br label %96

87:                                               ; preds = %76
  %88 = call i32 %74(ptr noundef nonnull %56, ptr noundef null, ptr noundef nonnull %2) #9
  br label %96

89:                                               ; preds = %58, %52
  %90 = getelementptr inbounds %struct.media_entity, ptr %56, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 65537
  br i1 %92, label %144, label %93, !prof !9

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.media_entity, ptr %56, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 840, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %91, ptr noundef %95) #9
  br label %144

96:                                               ; preds = %87, %83
  %97 = phi i32 [ %88, %87 ], [ %86, %83 ]
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %144, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %53, align 4
  %101 = getelementptr inbounds %struct.media_pad, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %144, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.v4l2_subdev, ptr %102, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %106, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %108, i32 0, i32 12
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = call i32 %112(ptr noundef nonnull %102, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #9
  %116 = icmp eq i32 %115, -515
  br i1 %116, label %117, label %144

117:                                              ; preds = %114, %110, %104
  %118 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %119, %121
  %123 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %124, %126
  %128 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %129, %131
  %133 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %134, %136
  %138 = icmp eq i32 %136, 1
  %139 = or i1 %137, %138
  %140 = select i1 %139, i1 %132, i1 false
  %141 = select i1 %140, i1 %127, i1 false
  %142 = select i1 %141, i1 %122, i1 false
  %143 = select i1 %142, i32 0, i32 -32
  br label %144

144:                                              ; preds = %117, %114, %99, %96, %93, %89, %72, %62, %49, %46, %42, %25, %15
  %145 = phi i32 [ %143, %117 ], [ 0, %49 ], [ 0, %96 ], [ %115, %114 ], [ 0, %25 ], [ 0, %15 ], [ 0, %46 ], [ 0, %42 ], [ 0, %72 ], [ 0, %62 ], [ 0, %93 ], [ 0, %89 ], [ -19, %99 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #9
  ret i32 %145
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_subdev_alloc_state(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = zext i16 %7 to i32
  %11 = mul nuw nsw i32 %10, 80
  %12 = tail call noalias ptr @kvmalloc_node(i32 noundef %11, i32 noundef 3520, i32 noundef -1) #11
  store ptr %12, ptr %3, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %9, %5
  %15 = icmp eq ptr %0, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = tail call i32 %23(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i32 [ %26, %25 ], [ -19, %14 ]
  %29 = icmp slt i32 %28, 0
  %30 = icmp ne i32 %28, -515
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @kvfree(ptr noundef nonnull %33) #9
  br label %36

36:                                               ; preds = %35, %32, %9
  %37 = phi i32 [ %28, %35 ], [ %28, %32 ], [ -12, %9 ]
  tail call void @kfree(ptr noundef nonnull %3) #9
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %36, %27, %22, %16, %1
  %40 = phi ptr [ %38, %36 ], [ %3, %27 ], [ inttoptr (i32 -12 to ptr), %1 ], [ %3, %22 ], [ %3, %16 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_subdev_free_state(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @kvfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_subdev_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/v4l2-subdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 923, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 10
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 12
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 1
  store ptr %11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 2
  store i32 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 3
  store i32 131072, ptr %17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_subdev_notify_event(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  tail call void @v4l2_event_queue(ptr noundef %4, ptr noundef %1) #9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %0, i32 noundef 1082684930, ptr noundef %1) #9
  br label %15

15:                                               ; preds = %14, %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_g_frame_interval(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  %9 = zext i16 %7 to i32
  %10 = icmp ult i32 %5, %9
  %11 = select i1 %10, i32 0, i32 -22
  %12 = icmp eq i32 %5, 0
  %13 = select i1 %12, i32 0, i32 -22
  %14 = select i1 %8, i32 %13, i32 %11
  %15 = select i1 %8, i1 %12, i1 %10
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %24

24:                                               ; preds = %16, %4, %2
  %25 = phi i32 [ %23, %16 ], [ %14, %4 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_s_frame_interval(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  %9 = zext i16 %7 to i32
  %10 = icmp ult i32 %5, %9
  %11 = select i1 %10, i32 0, i32 -22
  %12 = icmp eq i32 %5, 0
  %13 = select i1 %12, i32 0, i32 -22
  %14 = select i1 %8, i32 %13, i32 %11
  %15 = select i1 %8, i1 %12, i1 %10
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %24

24:                                               ; preds = %16, %4, %2
  %25 = phi i32 [ %23, %16 ], [ %14, %4 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %12 to i32
  %15 = icmp ult i32 %10, %14
  %16 = select i1 %15, i32 0, i32 -22
  %17 = icmp eq i32 %10, 0
  %18 = select i1 %17, i32 0, i32 -22
  %19 = select i1 %13, i32 %18, i32 %16
  %20 = select i1 %13, i1 %17, i1 %15
  br i1 %20, label %21, label %36

21:                                               ; preds = %9
  %22 = icmp eq i32 %7, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = icmp eq ptr %1, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %36

36:                                               ; preds = %28, %25, %23, %9, %5, %3
  %37 = phi i32 [ -22, %3 ], [ -22, %5 ], [ %19, %9 ], [ %35, %28 ], [ -22, %25 ], [ -22, %23 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  %15 = zext i16 %13 to i32
  %16 = icmp ult i32 %11, %15
  %17 = select i1 %16, i32 0, i32 -22
  %18 = icmp eq i32 %11, 0
  %19 = select i1 %18, i32 0, i32 -22
  %20 = select i1 %14, i32 %19, i32 %17
  %21 = select i1 %14, i1 %18, i1 %16
  br i1 %21, label %22, label %37

22:                                               ; preds = %9
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = icmp eq ptr %1, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %37

37:                                               ; preds = %29, %26, %24, %9, %5, %3
  %38 = phi i32 [ -22, %3 ], [ -22, %5 ], [ %20, %9 ], [ %36, %29 ], [ -22, %26 ], [ -22, %24 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_enum_frame_interval(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  %15 = zext i16 %13 to i32
  %16 = icmp ult i32 %11, %15
  %17 = select i1 %16, i32 0, i32 -22
  %18 = icmp eq i32 %11, 0
  %19 = select i1 %18, i32 0, i32 -22
  %20 = select i1 %14, i32 %19, i32 %17
  %21 = select i1 %14, i1 %18, i1 %16
  br i1 %21, label %22, label %37

22:                                               ; preds = %9
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = icmp eq ptr %1, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %37

37:                                               ; preds = %29, %26, %24, %9, %5, %3
  %38 = phi i32 [ -22, %3 ], [ -22, %5 ], [ %20, %9 ], [ %36, %29 ], [ -22, %26 ], [ -22, %24 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_get_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %12 to i32
  %15 = icmp ult i32 %10, %14
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %13, i1 %16, i1 %15
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = icmp eq ptr %1, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %29

25:                                               ; preds = %8
  %26 = select i1 %16, i32 0, i32 -22
  %27 = select i1 %15, i32 0, i32 -22
  %28 = select i1 %13, i32 %26, i32 %27
  br label %37

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %37

37:                                               ; preds = %29, %25, %22, %20, %5, %3
  %38 = phi i32 [ %36, %29 ], [ %28, %25 ], [ -22, %3 ], [ -22, %5 ], [ -22, %22 ], [ -22, %20 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_set_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %12 to i32
  %15 = icmp ult i32 %10, %14
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %13, i1 %16, i1 %15
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = icmp eq ptr %1, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %29

25:                                               ; preds = %8
  %26 = select i1 %16, i32 0, i32 -22
  %27 = select i1 %15, i32 0, i32 -22
  %28 = select i1 %13, i32 %26, i32 %27
  br label %37

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %37

37:                                               ; preds = %29, %25, %22, %20, %5, %3
  %38 = phi i32 [ %36, %29 ], [ %28, %25 ], [ -22, %3 ], [ -22, %5 ], [ -22, %22 ], [ -22, %20 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_get_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %12 to i32
  %15 = icmp ult i32 %10, %14
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %13, i1 %16, i1 %15
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = icmp eq ptr %1, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %29

25:                                               ; preds = %8
  %26 = select i1 %16, i32 0, i32 -22
  %27 = select i1 %15, i32 0, i32 -22
  %28 = select i1 %13, i32 %26, i32 %27
  br label %37

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %37

37:                                               ; preds = %29, %25, %22, %20, %5, %3
  %38 = phi i32 [ %36, %29 ], [ %28, %25 ], [ -22, %3 ], [ -22, %5 ], [ -22, %22 ], [ -22, %20 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_set_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %12 to i32
  %15 = icmp ult i32 %10, %14
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %13, i1 %16, i1 %15
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = icmp eq ptr %1, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %29

25:                                               ; preds = %8
  %26 = select i1 %16, i32 0, i32 -22
  %27 = select i1 %15, i32 0, i32 -22
  %28 = select i1 %13, i32 %26, i32 %27
  br label %37

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %37

37:                                               ; preds = %29, %25, %22, %20, %5, %3
  %38 = phi i32 [ %36, %29 ], [ %28, %25 ], [ -22, %3 ], [ -22, %5 ], [ -22, %22 ], [ -22, %20 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_get_edid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8, %4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, 0
  %17 = zext i16 %15 to i32
  %18 = icmp ult i32 %13, %17
  %19 = select i1 %18, i32 0, i32 -22
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %20, i32 0, i32 -22
  %22 = select i1 %16, i32 %21, i32 %19
  %23 = select i1 %16, i1 %20, i1 %18
  br i1 %23, label %24, label %32

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %32

32:                                               ; preds = %24, %12, %8, %2
  %33 = phi i32 [ %31, %24 ], [ %22, %12 ], [ -22, %2 ], [ -22, %8 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_set_edid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8, %4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, 0
  %17 = zext i16 %15 to i32
  %18 = icmp ult i32 %13, %17
  %19 = select i1 %18, i32 0, i32 -22
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %20, i32 0, i32 -22
  %22 = select i1 %16, i32 %21, i32 %19
  %23 = select i1 %16, i1 %20, i1 %18
  br i1 %23, label %24, label %32

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %32

32:                                               ; preds = %24, %12, %8, %2
  %33 = phi i32 [ %31, %24 ], [ %22, %12 ], [ -22, %2 ], [ -22, %8 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_dv_timings_cap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  %10 = zext i16 %8 to i32
  %11 = icmp ult i32 %6, %10
  %12 = select i1 %11, i32 0, i32 -22
  %13 = icmp eq i32 %6, 0
  %14 = select i1 %13, i32 0, i32 -22
  %15 = select i1 %9, i32 %14, i32 %12
  %16 = select i1 %9, i1 %13, i1 %11
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %25

25:                                               ; preds = %17, %4, %2
  %26 = phi i32 [ -22, %2 ], [ %24, %17 ], [ %15, %4 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_enum_dv_timings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  %10 = zext i16 %8 to i32
  %11 = icmp ult i32 %6, %10
  %12 = select i1 %11, i32 0, i32 -22
  %13 = icmp eq i32 %6, 0
  %14 = select i1 %13, i32 0, i32 -22
  %15 = select i1 %9, i32 %14, i32 %12
  %16 = select i1 %9, i1 %13, i1 %11
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %25

25:                                               ; preds = %17, %4, %2
  %26 = phi i32 [ -22, %2 ], [ %24, %17 ], [ %15, %4 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_get_mbus_config(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  %7 = zext i16 %5 to i32
  %8 = icmp ugt i32 %7, %1
  %9 = select i1 %8, i32 0, i32 -22
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 0, i32 -22
  %12 = select i1 %6, i32 %11, i32 %9
  %13 = select i1 %6, i1 %10, i1 %8
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i32 [ %21, %14 ], [ %12, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_set_mbus_config(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  %7 = zext i16 %5 to i32
  %8 = icmp ugt i32 %7, %1
  %9 = select i1 %8, i32 0, i32 -22
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 0, i32 -22
  %12 = select i1 %6, i32 %11, i32 %9
  %13 = select i1 %6, i1 %10, i1 %8
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i32 [ %21, %14 ], [ %12, %3 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_do_ioctl_lock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_selection, align 4
  %5 = alloca %struct.v4l2_subdev_selection, align 4
  %6 = alloca i64, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull %9) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %863

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 17
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %860, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @video_devdata(ptr noundef %0) #9
  %21 = getelementptr inbounds %struct.video_device, ptr %20, i32 0, i32 5, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.video_device, ptr %20, i32 0, i32 17
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  switch i32 %1, label %847 [
    i32 -2143267328, label %29
    i32 -1069263324, label %34
    i32 -1058515353, label %40
    i32 -1070836187, label %46
    i32 -1073195493, label %52
    i32 -1073195492, label %58
    i32 -1072146873, label %64
    i32 -1072146872, label %74
    i32 -1072146871, label %84
    i32 -2138548647, label %94
    i32 1075861082, label %104
    i32 1075861083, label %117
    i32 22086, label %130
    i32 -1067952636, label %147
    i32 -1067952635, label %190
    i32 -1070049733, label %235
    i32 -1070049732, label %283
    i32 -1070574078, label %335
    i32 -1069525430, label %377
    i32 -1070574059, label %420
    i32 -1070574058, label %449
    i32 -1069525429, label %479
    i32 -1069525443, label %522
    i32 -1069525442, label %565
    i32 -1071360472, label %610
    i32 -1071360471, label %646
    i32 -1064282524, label %682
    i32 -1064020382, label %711
    i32 -2138810781, label %740
    i32 -1065068968, label %754
    i32 -1065068969, label %768
    i32 -2146937321, label %783
    i32 1074288152, label %797
    i32 -1069001191, label %813
    i32 -2146937281, label %833
  ]

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.v4l2_subdev_capability, ptr %2, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %30, i8 0, i32 56, i1 false) #9
  store i32 332032, ptr %2, align 4
  %31 = xor i1 %28, true
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.v4l2_subdev_capability, ptr %2, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  br label %860

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %860, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @v4l2_queryctrl(ptr noundef nonnull %36, ptr noundef %2) #9
  br label %860

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %860, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @v4l2_query_ext_ctrl(ptr noundef nonnull %42, ptr noundef %2) #9
  br label %860

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %860, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @v4l2_querymenu(ptr noundef nonnull %48, ptr noundef %2) #9
  br label %860

52:                                               ; preds = %19
  %53 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %860, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @v4l2_g_ctrl(ptr noundef nonnull %54, ptr noundef %2) #9
  br label %860

58:                                               ; preds = %19
  %59 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %860, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @v4l2_s_ctrl(ptr noundef %24, ptr noundef nonnull %60, ptr noundef %2) #9
  br label %860

64:                                               ; preds = %19
  %65 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %860, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.v4l2_device, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @v4l2_g_ext_ctrls(ptr noundef nonnull %66, ptr noundef %20, ptr noundef %72, ptr noundef %2) #9
  br label %860

74:                                               ; preds = %19
  %75 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %860, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.v4l2_device, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @v4l2_s_ext_ctrls(ptr noundef %24, ptr noundef nonnull %76, ptr noundef %20, ptr noundef %82, ptr noundef %2) #9
  br label %860

84:                                               ; preds = %19
  %85 = getelementptr inbounds %struct.v4l2_fh, ptr %24, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %860, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_device, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @v4l2_try_ext_ctrls(ptr noundef nonnull %86, ptr noundef %20, ptr noundef %92, ptr noundef %2) #9
  br label %860

94:                                               ; preds = %19
  %95 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %860, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 2048
  %103 = tail call i32 @v4l2_event_dequeue(ptr noundef %24, ptr noundef %2, i32 noundef %102) #9
  br label %860

104:                                              ; preds = %19
  %105 = icmp eq ptr %22, null
  br i1 %105, label %860, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %860, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %109, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %860, label %115

115:                                              ; preds = %111
  %116 = tail call i32 %113(ptr noundef nonnull %22, ptr noundef %24, ptr noundef %2) #9
  br label %860

117:                                              ; preds = %19
  %118 = icmp eq ptr %22, null
  br i1 %118, label %860, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %860, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %122, i32 0, i32 11
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %860, label %128

128:                                              ; preds = %124
  %129 = tail call i32 %126(ptr noundef nonnull %22, ptr noundef %24, ptr noundef %2) #9
  br label %860

130:                                              ; preds = %19
  %131 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 9
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %131) #12
  %133 = icmp eq ptr %22, null
  br i1 %133, label %144, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr %137, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = tail call i32 %140(ptr noundef nonnull %22) #9
  br label %144

144:                                              ; preds = %142, %139, %134, %130
  %145 = phi i32 [ %143, %142 ], [ -19, %130 ], [ -515, %139 ], [ -515, %134 ]
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %131) #12
  br label %860

147:                                              ; preds = %19
  %148 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 9
  %149 = icmp eq ptr %22, null
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(52) %148, i8 0, i64 52, i1 false) #9
  br i1 %149, label %860, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %152, i32 0, i32 7
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %860, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %154, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %860, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %2, null
  br i1 %163, label %860, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %2, align 4
  %166 = icmp ult i32 %165, 2
  br i1 %166, label %167, label %860

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %171 = load i16, ptr %170, align 4
  %172 = icmp eq i16 %171, 0
  %173 = zext i16 %171 to i32
  %174 = icmp ult i32 %169, %173
  %175 = icmp eq i32 %169, 0
  %176 = select i1 %172, i1 %175, i1 %174
  br i1 %176, label %177, label %184

177:                                              ; preds = %167
  %178 = icmp eq i32 %165, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %177
  %180 = icmp eq ptr %162, null
  br i1 %180, label %860, label %181

181:                                              ; preds = %179
  %182 = load ptr, ptr %162, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %860, label %188

184:                                              ; preds = %167
  %185 = select i1 %175, i32 0, i32 -22
  %186 = select i1 %174, i32 0, i32 -22
  %187 = select i1 %172, i32 %185, i32 %186
  br label %860

188:                                              ; preds = %181, %177
  %189 = tail call i32 %158(ptr noundef nonnull %22, ptr noundef %162, ptr noundef nonnull %2) #9
  br label %860

190:                                              ; preds = %19
  %191 = load i32, ptr %2, align 4
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i1 true, i1 %28
  br i1 %193, label %194, label %860

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 9
  %196 = icmp eq ptr %22, null
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(52) %195, i8 0, i64 52, i1 false) #9
  br i1 %196, label %860, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %199, i32 0, i32 7
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %860, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %201, i32 0, i32 5
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %860, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = icmp ne ptr %2, null
  %211 = icmp ult i32 %191, 2
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %860

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %217 = load i16, ptr %216, align 4
  %218 = icmp eq i16 %217, 0
  %219 = zext i16 %217 to i32
  %220 = icmp ult i32 %215, %219
  %221 = icmp eq i32 %215, 0
  %222 = select i1 %218, i1 %221, i1 %220
  br i1 %222, label %223, label %229

223:                                              ; preds = %213
  br i1 %192, label %224, label %233

224:                                              ; preds = %223
  %225 = icmp eq ptr %209, null
  br i1 %225, label %860, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr %209, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %860, label %233

229:                                              ; preds = %213
  %230 = select i1 %221, i32 0, i32 -22
  %231 = select i1 %220, i32 0, i32 -22
  %232 = select i1 %218, i32 %230, i32 %231
  br label %860

233:                                              ; preds = %226, %223
  %234 = tail call i32 %205(ptr noundef nonnull %22, ptr noundef %209, ptr noundef nonnull %2) #9
  br label %860

235:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %236 = getelementptr inbounds %struct.v4l2_subdev_crop, ptr %2, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %236, i8 0, i32 32, i1 false) #9
  %237 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %237, i8 0, i32 52, i1 false) #9
  %238 = load i32, ptr %2, align 4
  store i32 %238, ptr %4, align 4
  %239 = getelementptr inbounds %struct.v4l2_subdev_crop, ptr %2, i32 0, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %4, i32 0, i32 1
  store i32 %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %4, i32 0, i32 2
  store i32 0, ptr %242, align 4
  %243 = icmp eq ptr %22, null
  br i1 %243, label %279, label %244

244:                                              ; preds = %235
  %245 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %246, i32 0, i32 7
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %279, label %250

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %248, i32 0, i32 6
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %279, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %256 = load ptr, ptr %255, align 4
  %257 = icmp ult i32 %238, 2
  br i1 %257, label %258, label %279

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %260 = load i16, ptr %259, align 4
  %261 = icmp eq i16 %260, 0
  %262 = zext i16 %260 to i32
  %263 = icmp ult i32 %240, %262
  %264 = icmp eq i32 %240, 0
  %265 = select i1 %261, i1 %264, i1 %263
  br i1 %265, label %266, label %273

266:                                              ; preds = %258
  %267 = icmp eq i32 %238, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %266
  %269 = icmp eq ptr %256, null
  br i1 %269, label %279, label %270

270:                                              ; preds = %268
  %271 = load ptr, ptr %256, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %279, label %277

273:                                              ; preds = %258
  %274 = select i1 %264, i32 0, i32 -22
  %275 = select i1 %263, i32 0, i32 -22
  %276 = select i1 %261, i32 %274, i32 %275
  br label %279

277:                                              ; preds = %270, %266
  %278 = call i32 %252(ptr noundef nonnull %22, ptr noundef %256, ptr noundef nonnull %4) #9
  br label %279

279:                                              ; preds = %277, %273, %270, %268, %254, %250, %244, %235
  %280 = phi i32 [ -19, %235 ], [ -515, %250 ], [ -515, %244 ], [ %278, %277 ], [ %276, %273 ], [ -22, %254 ], [ -22, %270 ], [ -22, %268 ]
  %281 = getelementptr inbounds %struct.v4l2_subdev_crop, ptr %2, i32 0, i32 2
  %282 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %4, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %281, ptr noundef align 4 dereferenceable(16) %282, i32 16, i1 false) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %860

283:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %284 = load i32, ptr %2, align 4
  %285 = icmp eq i32 %284, 0
  %286 = select i1 %285, i1 true, i1 %28
  br i1 %286, label %287, label %333

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.v4l2_subdev_crop, ptr %2, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %288, i8 0, i32 32, i1 false) #9
  %289 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %289, i8 0, i32 52, i1 false) #9
  store i32 %284, ptr %5, align 4
  %290 = getelementptr inbounds %struct.v4l2_subdev_crop, ptr %2, i32 0, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %5, i32 0, i32 1
  store i32 %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %5, i32 0, i32 2
  store i32 0, ptr %293, align 4
  %294 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %5, i32 0, i32 4
  %295 = getelementptr inbounds %struct.v4l2_subdev_crop, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %294, ptr noundef align 4 dereferenceable(16) %295, i32 16, i1 false) #9
  %296 = icmp eq ptr %22, null
  br i1 %296, label %331, label %297

297:                                              ; preds = %287
  %298 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %299, i32 0, i32 7
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %331, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %301, i32 0, i32 7
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %331, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %309 = load ptr, ptr %308, align 4
  %310 = icmp ult i32 %284, 2
  br i1 %310, label %311, label %331

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %313 = load i16, ptr %312, align 4
  %314 = icmp eq i16 %313, 0
  %315 = zext i16 %313 to i32
  %316 = icmp ult i32 %291, %315
  %317 = icmp eq i32 %291, 0
  %318 = select i1 %314, i1 %317, i1 %316
  br i1 %318, label %319, label %325

319:                                              ; preds = %311
  br i1 %285, label %320, label %329

320:                                              ; preds = %319
  %321 = icmp eq ptr %309, null
  br i1 %321, label %331, label %322

322:                                              ; preds = %320
  %323 = load ptr, ptr %309, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %331, label %329

325:                                              ; preds = %311
  %326 = select i1 %317, i32 0, i32 -22
  %327 = select i1 %316, i32 0, i32 -22
  %328 = select i1 %314, i32 %326, i32 %327
  br label %331

329:                                              ; preds = %322, %319
  %330 = call i32 %305(ptr noundef nonnull %22, ptr noundef %309, ptr noundef nonnull %5) #9
  br label %331

331:                                              ; preds = %329, %325, %322, %320, %307, %303, %297, %287
  %332 = phi i32 [ -19, %287 ], [ -515, %303 ], [ -515, %297 ], [ %330, %329 ], [ %328, %325 ], [ -22, %307 ], [ -22, %322 ], [ -22, %320 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %295, ptr noundef align 4 dereferenceable(16) %294, i32 16, i1 false) #9
  br label %333

333:                                              ; preds = %331, %283
  %334 = phi i32 [ %332, %331 ], [ -1, %283 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %860

335:                                              ; preds = %19
  %336 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %336, i8 0, i32 28, i1 false) #9
  %337 = icmp eq ptr %22, null
  br i1 %337, label %860, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %340, i32 0, i32 7
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %860, label %344

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %342, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %860, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %350 = load ptr, ptr %349, align 4
  %351 = icmp eq ptr %2, null
  br i1 %351, label %860, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 3
  %354 = load i32, ptr %353, align 4
  %355 = icmp ult i32 %354, 2
  br i1 %355, label %356, label %860

356:                                              ; preds = %352
  %357 = load i32, ptr %2, align 4
  %358 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %359 = load i16, ptr %358, align 4
  %360 = icmp eq i16 %359, 0
  %361 = zext i16 %359 to i32
  %362 = icmp ult i32 %357, %361
  %363 = select i1 %362, i32 0, i32 -22
  %364 = icmp eq i32 %357, 0
  %365 = select i1 %364, i32 0, i32 -22
  %366 = select i1 %360, i32 %365, i32 %363
  %367 = select i1 %360, i1 %364, i1 %362
  br i1 %367, label %368, label %860

368:                                              ; preds = %356
  %369 = icmp eq i32 %354, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %368
  %371 = icmp eq ptr %350, null
  br i1 %371, label %860, label %372

372:                                              ; preds = %370
  %373 = load ptr, ptr %350, align 4
  %374 = icmp eq ptr %373, null
  br i1 %374, label %860, label %375

375:                                              ; preds = %372, %368
  %376 = tail call i32 %346(ptr noundef nonnull %22, ptr noundef %350, ptr noundef nonnull %2) #9
  br label %860

377:                                              ; preds = %19
  %378 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %378, i8 0, i32 32, i1 false) #9
  %379 = icmp eq ptr %22, null
  br i1 %379, label %860, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %382 = load ptr, ptr %381, align 4
  %383 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %382, i32 0, i32 7
  %384 = load ptr, ptr %383, align 4
  %385 = icmp eq ptr %384, null
  br i1 %385, label %860, label %386

386:                                              ; preds = %380
  %387 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %384, i32 0, i32 2
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %860, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %2, null
  br i1 %393, label %860, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 7
  %396 = load i32, ptr %395, align 4
  %397 = icmp ult i32 %396, 2
  br i1 %397, label %398, label %860

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %400 = load i32, ptr %399, align 4
  %401 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %402 = load i16, ptr %401, align 4
  %403 = icmp eq i16 %402, 0
  %404 = zext i16 %402 to i32
  %405 = icmp ult i32 %400, %404
  %406 = select i1 %405, i32 0, i32 -22
  %407 = icmp eq i32 %400, 0
  %408 = select i1 %407, i32 0, i32 -22
  %409 = select i1 %403, i32 %408, i32 %406
  %410 = select i1 %403, i1 %407, i1 %405
  br i1 %410, label %411, label %860

411:                                              ; preds = %398
  %412 = icmp eq i32 %396, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %411
  %414 = icmp eq ptr %392, null
  br i1 %414, label %860, label %415

415:                                              ; preds = %413
  %416 = load ptr, ptr %392, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %860, label %418

418:                                              ; preds = %415, %411
  %419 = tail call i32 %388(ptr noundef nonnull %22, ptr noundef %392, ptr noundef nonnull %2) #9
  br label %860

420:                                              ; preds = %19
  %421 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %2, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %421, i8 0, i32 36, i1 false) #9
  %422 = icmp eq ptr %22, null
  br i1 %422, label %860, label %423

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %425, i32 0, i32 3
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %860, label %429

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %427, i32 0, i32 12
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %860, label %433

433:                                              ; preds = %429
  %434 = icmp eq ptr %2, null
  br i1 %434, label %860, label %435

435:                                              ; preds = %433
  %436 = load i32, ptr %2, align 4
  %437 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %438 = load i16, ptr %437, align 4
  %439 = icmp eq i16 %438, 0
  %440 = zext i16 %438 to i32
  %441 = icmp ult i32 %436, %440
  %442 = select i1 %441, i32 0, i32 -22
  %443 = icmp eq i32 %436, 0
  %444 = select i1 %443, i32 0, i32 -22
  %445 = select i1 %439, i32 %444, i32 %442
  %446 = select i1 %439, i1 %443, i1 %441
  br i1 %446, label %447, label %860

447:                                              ; preds = %435
  %448 = tail call i32 %431(ptr noundef nonnull %22, ptr noundef nonnull %2) #9
  br label %860

449:                                              ; preds = %19
  br i1 %28, label %450, label %860

450:                                              ; preds = %449
  %451 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %2, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %451, i8 0, i32 36, i1 false) #9
  %452 = icmp eq ptr %22, null
  br i1 %452, label %860, label %453

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %455 = load ptr, ptr %454, align 4
  %456 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %455, i32 0, i32 3
  %457 = load ptr, ptr %456, align 4
  %458 = icmp eq ptr %457, null
  br i1 %458, label %860, label %459

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %457, i32 0, i32 13
  %461 = load ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, null
  br i1 %462, label %860, label %463

463:                                              ; preds = %459
  %464 = icmp eq ptr %2, null
  br i1 %464, label %860, label %465

465:                                              ; preds = %463
  %466 = load i32, ptr %2, align 4
  %467 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %468 = load i16, ptr %467, align 4
  %469 = icmp eq i16 %468, 0
  %470 = zext i16 %468 to i32
  %471 = icmp ult i32 %466, %470
  %472 = select i1 %471, i32 0, i32 -22
  %473 = icmp eq i32 %466, 0
  %474 = select i1 %473, i32 0, i32 -22
  %475 = select i1 %469, i32 %474, i32 %472
  %476 = select i1 %469, i1 %473, i1 %471
  br i1 %476, label %477, label %860

477:                                              ; preds = %465
  %478 = tail call i32 %461(ptr noundef nonnull %22, ptr noundef nonnull %2) #9
  br label %860

479:                                              ; preds = %19
  %480 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %480, i8 0, i32 32, i1 false) #9
  %481 = icmp eq ptr %22, null
  br i1 %481, label %860, label %482

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %484 = load ptr, ptr %483, align 4
  %485 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %484, i32 0, i32 7
  %486 = load ptr, ptr %485, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %860, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %486, i32 0, i32 3
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %860, label %492

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %494 = load ptr, ptr %493, align 4
  %495 = icmp eq ptr %2, null
  br i1 %495, label %860, label %496

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 6
  %498 = load i32, ptr %497, align 4
  %499 = icmp ult i32 %498, 2
  br i1 %499, label %500, label %860

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 1
  %502 = load i32, ptr %501, align 4
  %503 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %504 = load i16, ptr %503, align 4
  %505 = icmp eq i16 %504, 0
  %506 = zext i16 %504 to i32
  %507 = icmp ult i32 %502, %506
  %508 = select i1 %507, i32 0, i32 -22
  %509 = icmp eq i32 %502, 0
  %510 = select i1 %509, i32 0, i32 -22
  %511 = select i1 %505, i32 %510, i32 %508
  %512 = select i1 %505, i1 %509, i1 %507
  br i1 %512, label %513, label %860

513:                                              ; preds = %500
  %514 = icmp eq i32 %498, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %513
  %516 = icmp eq ptr %494, null
  br i1 %516, label %860, label %517

517:                                              ; preds = %515
  %518 = load ptr, ptr %494, align 4
  %519 = icmp eq ptr %518, null
  br i1 %519, label %860, label %520

520:                                              ; preds = %517, %513
  %521 = tail call i32 %490(ptr noundef nonnull %22, ptr noundef %494, ptr noundef nonnull %2) #9
  br label %860

522:                                              ; preds = %19
  %523 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %523, i8 0, i32 32, i1 false) #9
  %524 = icmp eq ptr %22, null
  br i1 %524, label %860, label %525

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %527 = load ptr, ptr %526, align 4
  %528 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %527, i32 0, i32 7
  %529 = load ptr, ptr %528, align 4
  %530 = icmp eq ptr %529, null
  br i1 %530, label %860, label %531

531:                                              ; preds = %525
  %532 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %529, i32 0, i32 6
  %533 = load ptr, ptr %532, align 4
  %534 = icmp eq ptr %533, null
  br i1 %534, label %860, label %535

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %537 = load ptr, ptr %536, align 4
  %538 = icmp eq ptr %2, null
  br i1 %538, label %860, label %539

539:                                              ; preds = %535
  %540 = load i32, ptr %2, align 4
  %541 = icmp ult i32 %540, 2
  br i1 %541, label %542, label %860

542:                                              ; preds = %539
  %543 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %544 = load i32, ptr %543, align 4
  %545 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %546 = load i16, ptr %545, align 4
  %547 = icmp eq i16 %546, 0
  %548 = zext i16 %546 to i32
  %549 = icmp ult i32 %544, %548
  %550 = icmp eq i32 %544, 0
  %551 = select i1 %547, i1 %550, i1 %549
  br i1 %551, label %552, label %559

552:                                              ; preds = %542
  %553 = icmp eq i32 %540, 0
  br i1 %553, label %554, label %563

554:                                              ; preds = %552
  %555 = icmp eq ptr %537, null
  br i1 %555, label %860, label %556

556:                                              ; preds = %554
  %557 = load ptr, ptr %537, align 4
  %558 = icmp eq ptr %557, null
  br i1 %558, label %860, label %563

559:                                              ; preds = %542
  %560 = select i1 %550, i32 0, i32 -22
  %561 = select i1 %549, i32 0, i32 -22
  %562 = select i1 %547, i32 %560, i32 %561
  br label %860

563:                                              ; preds = %556, %552
  %564 = tail call i32 %533(ptr noundef nonnull %22, ptr noundef %537, ptr noundef nonnull %2) #9
  br label %860

565:                                              ; preds = %19
  %566 = load i32, ptr %2, align 4
  %567 = icmp eq i32 %566, 0
  %568 = select i1 %567, i1 true, i1 %28
  br i1 %568, label %569, label %860

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %570, i8 0, i32 32, i1 false) #9
  %571 = icmp eq ptr %22, null
  br i1 %571, label %860, label %572

572:                                              ; preds = %569
  %573 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %574 = load ptr, ptr %573, align 4
  %575 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %574, i32 0, i32 7
  %576 = load ptr, ptr %575, align 4
  %577 = icmp eq ptr %576, null
  br i1 %577, label %860, label %578

578:                                              ; preds = %572
  %579 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %576, i32 0, i32 7
  %580 = load ptr, ptr %579, align 4
  %581 = icmp eq ptr %580, null
  br i1 %581, label %860, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %24, i32 0, i32 2
  %584 = load ptr, ptr %583, align 4
  %585 = icmp ne ptr %2, null
  %586 = icmp ult i32 %566, 2
  %587 = select i1 %585, i1 %586, i1 false
  br i1 %587, label %588, label %860

588:                                              ; preds = %582
  %589 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %590 = load i32, ptr %589, align 4
  %591 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %592 = load i16, ptr %591, align 4
  %593 = icmp eq i16 %592, 0
  %594 = zext i16 %592 to i32
  %595 = icmp ult i32 %590, %594
  %596 = icmp eq i32 %590, 0
  %597 = select i1 %593, i1 %596, i1 %595
  br i1 %597, label %598, label %604

598:                                              ; preds = %588
  br i1 %567, label %599, label %608

599:                                              ; preds = %598
  %600 = icmp eq ptr %584, null
  br i1 %600, label %860, label %601

601:                                              ; preds = %599
  %602 = load ptr, ptr %584, align 4
  %603 = icmp eq ptr %602, null
  br i1 %603, label %860, label %608

604:                                              ; preds = %588
  %605 = select i1 %596, i32 0, i32 -22
  %606 = select i1 %595, i32 0, i32 -22
  %607 = select i1 %593, i32 %605, i32 %606
  br label %860

608:                                              ; preds = %601, %598
  %609 = tail call i32 %580(ptr noundef nonnull %22, ptr noundef %584, ptr noundef nonnull %2) #9
  br label %860

610:                                              ; preds = %19
  %611 = icmp eq ptr %22, null
  br i1 %611, label %860, label %612

612:                                              ; preds = %610
  %613 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %614 = load ptr, ptr %613, align 4
  %615 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %614, i32 0, i32 7
  %616 = load ptr, ptr %615, align 4
  %617 = icmp eq ptr %616, null
  br i1 %617, label %860, label %618

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %616, i32 0, i32 8
  %620 = load ptr, ptr %619, align 4
  %621 = icmp eq ptr %620, null
  br i1 %621, label %860, label %622

622:                                              ; preds = %618
  %623 = icmp eq ptr %2, null
  br i1 %623, label %860, label %624

624:                                              ; preds = %622
  %625 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 2
  %626 = load i32, ptr %625, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %632, label %628

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 4
  %630 = load ptr, ptr %629, align 4
  %631 = icmp eq ptr %630, null
  br i1 %631, label %860, label %632

632:                                              ; preds = %628, %624
  %633 = load i32, ptr %2, align 4
  %634 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %635 = load i16, ptr %634, align 4
  %636 = icmp eq i16 %635, 0
  %637 = zext i16 %635 to i32
  %638 = icmp ult i32 %633, %637
  %639 = select i1 %638, i32 0, i32 -22
  %640 = icmp eq i32 %633, 0
  %641 = select i1 %640, i32 0, i32 -22
  %642 = select i1 %636, i32 %641, i32 %639
  %643 = select i1 %636, i1 %640, i1 %638
  br i1 %643, label %644, label %860

644:                                              ; preds = %632
  %645 = tail call i32 %620(ptr noundef nonnull %22, ptr noundef nonnull %2) #9
  br label %860

646:                                              ; preds = %19
  %647 = icmp eq ptr %22, null
  br i1 %647, label %860, label %648

648:                                              ; preds = %646
  %649 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %650 = load ptr, ptr %649, align 4
  %651 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %650, i32 0, i32 7
  %652 = load ptr, ptr %651, align 4
  %653 = icmp eq ptr %652, null
  br i1 %653, label %860, label %654

654:                                              ; preds = %648
  %655 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %652, i32 0, i32 9
  %656 = load ptr, ptr %655, align 4
  %657 = icmp eq ptr %656, null
  br i1 %657, label %860, label %658

658:                                              ; preds = %654
  %659 = icmp eq ptr %2, null
  br i1 %659, label %860, label %660

660:                                              ; preds = %658
  %661 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 2
  %662 = load i32, ptr %661, align 4
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %668, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 4
  %666 = load ptr, ptr %665, align 4
  %667 = icmp eq ptr %666, null
  br i1 %667, label %860, label %668

668:                                              ; preds = %664, %660
  %669 = load i32, ptr %2, align 4
  %670 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %671 = load i16, ptr %670, align 4
  %672 = icmp eq i16 %671, 0
  %673 = zext i16 %671 to i32
  %674 = icmp ult i32 %669, %673
  %675 = select i1 %674, i32 0, i32 -22
  %676 = icmp eq i32 %669, 0
  %677 = select i1 %676, i32 0, i32 -22
  %678 = select i1 %672, i32 %677, i32 %675
  %679 = select i1 %672, i1 %676, i1 %674
  br i1 %679, label %680, label %860

680:                                              ; preds = %668
  %681 = tail call i32 %656(ptr noundef nonnull %22, ptr noundef nonnull %2) #9
  br label %860

682:                                              ; preds = %19
  %683 = icmp eq ptr %22, null
  br i1 %683, label %860, label %684

684:                                              ; preds = %682
  %685 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %686 = load ptr, ptr %685, align 4
  %687 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %686, i32 0, i32 7
  %688 = load ptr, ptr %687, align 4
  %689 = icmp eq ptr %688, null
  br i1 %689, label %860, label %690

690:                                              ; preds = %684
  %691 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %688, i32 0, i32 10
  %692 = load ptr, ptr %691, align 4
  %693 = icmp eq ptr %692, null
  br i1 %693, label %860, label %694

694:                                              ; preds = %690
  %695 = icmp eq ptr %2, null
  br i1 %695, label %860, label %696

696:                                              ; preds = %694
  %697 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %2, i32 0, i32 1
  %698 = load i32, ptr %697, align 4
  %699 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %700 = load i16, ptr %699, align 4
  %701 = icmp eq i16 %700, 0
  %702 = zext i16 %700 to i32
  %703 = icmp ult i32 %698, %702
  %704 = select i1 %703, i32 0, i32 -22
  %705 = icmp eq i32 %698, 0
  %706 = select i1 %705, i32 0, i32 -22
  %707 = select i1 %701, i32 %706, i32 %704
  %708 = select i1 %701, i1 %705, i1 %703
  br i1 %708, label %709, label %860

709:                                              ; preds = %696
  %710 = tail call i32 %692(ptr noundef nonnull %22, ptr noundef nonnull %2) #9
  br label %860

711:                                              ; preds = %19
  %712 = icmp eq ptr %22, null
  br i1 %712, label %860, label %713

713:                                              ; preds = %711
  %714 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %715 = load ptr, ptr %714, align 4
  %716 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %715, i32 0, i32 7
  %717 = load ptr, ptr %716, align 4
  %718 = icmp eq ptr %717, null
  br i1 %718, label %860, label %719

719:                                              ; preds = %713
  %720 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %717, i32 0, i32 11
  %721 = load ptr, ptr %720, align 4
  %722 = icmp eq ptr %721, null
  br i1 %722, label %860, label %723

723:                                              ; preds = %719
  %724 = icmp eq ptr %2, null
  br i1 %724, label %860, label %725

725:                                              ; preds = %723
  %726 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %2, i32 0, i32 1
  %727 = load i32, ptr %726, align 4
  %728 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 5
  %729 = load i16, ptr %728, align 4
  %730 = icmp eq i16 %729, 0
  %731 = zext i16 %729 to i32
  %732 = icmp ult i32 %727, %731
  %733 = select i1 %732, i32 0, i32 -22
  %734 = icmp eq i32 %727, 0
  %735 = select i1 %734, i32 0, i32 -22
  %736 = select i1 %730, i32 %735, i32 %733
  %737 = select i1 %730, i1 %734, i1 %732
  br i1 %737, label %738, label %860

738:                                              ; preds = %725
  %739 = tail call i32 %721(ptr noundef nonnull %22, ptr noundef nonnull %2) #9
  br label %860

740:                                              ; preds = %19
  %741 = icmp eq ptr %22, null
  br i1 %741, label %860, label %742

742:                                              ; preds = %740
  %743 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %744 = load ptr, ptr %743, align 4
  %745 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %744, i32 0, i32 3
  %746 = load ptr, ptr %745, align 4
  %747 = icmp eq ptr %746, null
  br i1 %747, label %860, label %748

748:                                              ; preds = %742
  %749 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %746, i32 0, i32 16
  %750 = load ptr, ptr %749, align 4
  %751 = icmp eq ptr %750, null
  br i1 %751, label %860, label %752

752:                                              ; preds = %748
  %753 = tail call i32 %750(ptr noundef nonnull %22, ptr noundef %2) #9
  br label %860

754:                                              ; preds = %19
  %755 = icmp eq ptr %22, null
  br i1 %755, label %860, label %756

756:                                              ; preds = %754
  %757 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %758 = load ptr, ptr %757, align 4
  %759 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %758, i32 0, i32 3
  %760 = load ptr, ptr %759, align 4
  %761 = icmp eq ptr %760, null
  br i1 %761, label %860, label %762

762:                                              ; preds = %756
  %763 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %760, i32 0, i32 15
  %764 = load ptr, ptr %763, align 4
  %765 = icmp eq ptr %764, null
  br i1 %765, label %860, label %766

766:                                              ; preds = %762
  %767 = tail call i32 %764(ptr noundef nonnull %22, ptr noundef %2) #9
  br label %860

768:                                              ; preds = %19
  br i1 %28, label %769, label %860

769:                                              ; preds = %768
  %770 = icmp eq ptr %22, null
  br i1 %770, label %860, label %771

771:                                              ; preds = %769
  %772 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %773 = load ptr, ptr %772, align 4
  %774 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %773, i32 0, i32 3
  %775 = load ptr, ptr %774, align 4
  %776 = icmp eq ptr %775, null
  br i1 %776, label %860, label %777

777:                                              ; preds = %771
  %778 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %775, i32 0, i32 14
  %779 = load ptr, ptr %778, align 4
  %780 = icmp eq ptr %779, null
  br i1 %780, label %860, label %781

781:                                              ; preds = %777
  %782 = tail call i32 %779(ptr noundef nonnull %22, ptr noundef %2) #9
  br label %860

783:                                              ; preds = %19
  %784 = icmp eq ptr %22, null
  br i1 %784, label %860, label %785

785:                                              ; preds = %783
  %786 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %787 = load ptr, ptr %786, align 4
  %788 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %787, i32 0, i32 3
  %789 = load ptr, ptr %788, align 4
  %790 = icmp eq ptr %789, null
  br i1 %790, label %860, label %791

791:                                              ; preds = %785
  %792 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %789, i32 0, i32 2
  %793 = load ptr, ptr %792, align 4
  %794 = icmp eq ptr %793, null
  br i1 %794, label %860, label %795

795:                                              ; preds = %791
  %796 = tail call i32 %793(ptr noundef nonnull %22, ptr noundef %2) #9
  br label %860

797:                                              ; preds = %19
  br i1 %28, label %798, label %860

798:                                              ; preds = %797
  %799 = icmp eq ptr %22, null
  br i1 %799, label %860, label %800

800:                                              ; preds = %798
  %801 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %802 = load ptr, ptr %801, align 4
  %803 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %802, i32 0, i32 3
  %804 = load ptr, ptr %803, align 4
  %805 = icmp eq ptr %804, null
  br i1 %805, label %860, label %806

806:                                              ; preds = %800
  %807 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %804, i32 0, i32 3
  %808 = load ptr, ptr %807, align 4
  %809 = icmp eq ptr %808, null
  br i1 %809, label %860, label %810

810:                                              ; preds = %806
  %811 = load i64, ptr %2, align 8
  %812 = tail call i32 %808(ptr noundef nonnull %22, i64 noundef %811) #9
  br label %860

813:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  %814 = icmp eq ptr %22, null
  br i1 %814, label %831, label %815

815:                                              ; preds = %813
  %816 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %817 = load ptr, ptr %816, align 4
  %818 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %817, i32 0, i32 3
  %819 = load ptr, ptr %818, align 4
  %820 = icmp eq ptr %819, null
  br i1 %820, label %831, label %821

821:                                              ; preds = %815
  %822 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %819, i32 0, i32 7
  %823 = load ptr, ptr %822, align 4
  %824 = icmp eq ptr %823, null
  br i1 %824, label %831, label %825

825:                                              ; preds = %821
  %826 = call i32 %823(ptr noundef nonnull %22, ptr noundef nonnull %6) #9
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %831

828:                                              ; preds = %825
  %829 = load i64, ptr %6, align 8
  %830 = call i32 @v4l_video_std_enumstd(ptr noundef %2, i64 noundef %829) #9
  br label %831

831:                                              ; preds = %828, %825, %821, %815, %813
  %832 = phi i32 [ %830, %828 ], [ -22, %825 ], [ -22, %813 ], [ -22, %821 ], [ -22, %815 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %860

833:                                              ; preds = %19
  %834 = icmp eq ptr %22, null
  br i1 %834, label %860, label %835

835:                                              ; preds = %833
  %836 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %837 = load ptr, ptr %836, align 4
  %838 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %837, i32 0, i32 3
  %839 = load ptr, ptr %838, align 4
  %840 = icmp eq ptr %839, null
  br i1 %840, label %860, label %841

841:                                              ; preds = %835
  %842 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %839, i32 0, i32 6
  %843 = load ptr, ptr %842, align 4
  %844 = icmp eq ptr %843, null
  br i1 %844, label %860, label %845

845:                                              ; preds = %841
  %846 = tail call i32 %843(ptr noundef nonnull %22, ptr noundef %2) #9
  br label %860

847:                                              ; preds = %19
  %848 = icmp eq ptr %22, null
  br i1 %848, label %860, label %849

849:                                              ; preds = %847
  %850 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %851 = load ptr, ptr %850, align 4
  %852 = load ptr, ptr %851, align 4
  %853 = icmp eq ptr %852, null
  br i1 %853, label %860, label %854

854:                                              ; preds = %849
  %855 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %852, i32 0, i32 7
  %856 = load ptr, ptr %855, align 4
  %857 = icmp eq ptr %856, null
  br i1 %857, label %860, label %858

858:                                              ; preds = %854
  %859 = tail call i32 %856(ptr noundef nonnull %22, i32 noundef %1, ptr noundef %2) #9
  br label %860

860:                                              ; preds = %858, %854, %849, %847, %845, %841, %835, %833, %831, %810, %806, %800, %798, %797, %795, %791, %785, %783, %781, %777, %771, %769, %768, %766, %762, %756, %754, %752, %748, %742, %740, %738, %725, %723, %719, %713, %711, %709, %696, %694, %690, %684, %682, %680, %668, %664, %658, %654, %648, %646, %644, %632, %628, %622, %618, %612, %610, %608, %604, %601, %599, %582, %578, %572, %569, %565, %563, %559, %556, %554, %539, %535, %531, %525, %522, %520, %517, %515, %500, %496, %492, %488, %482, %479, %477, %465, %463, %459, %453, %450, %449, %447, %435, %433, %429, %423, %420, %418, %415, %413, %398, %394, %390, %386, %380, %377, %375, %372, %370, %356, %352, %348, %344, %338, %335, %333, %279, %233, %229, %226, %224, %207, %203, %197, %194, %190, %188, %184, %181, %179, %164, %160, %156, %150, %147, %144, %128, %124, %119, %117, %115, %111, %106, %104, %99, %94, %88, %84, %78, %74, %68, %64, %62, %58, %56, %52, %50, %46, %44, %40, %38, %34, %29, %14
  %861 = phi i32 [ -19, %14 ], [ %832, %831 ], [ %334, %333 ], [ %280, %279 ], [ %145, %144 ], [ %103, %99 ], [ %93, %88 ], [ %83, %78 ], [ %73, %68 ], [ %63, %62 ], [ %57, %56 ], [ %51, %50 ], [ %45, %44 ], [ %39, %38 ], [ 0, %29 ], [ -25, %34 ], [ -25, %40 ], [ -25, %46 ], [ -25, %52 ], [ -25, %58 ], [ -25, %64 ], [ -25, %74 ], [ -25, %84 ], [ -515, %94 ], [ %116, %115 ], [ -19, %104 ], [ -515, %111 ], [ -515, %106 ], [ %129, %128 ], [ -19, %117 ], [ -515, %124 ], [ -515, %119 ], [ -19, %147 ], [ -515, %156 ], [ -515, %150 ], [ -1, %190 ], [ -19, %194 ], [ -515, %203 ], [ -515, %197 ], [ -19, %335 ], [ -515, %344 ], [ -515, %338 ], [ -19, %377 ], [ -515, %386 ], [ -515, %380 ], [ -19, %420 ], [ -515, %429 ], [ -515, %423 ], [ -1, %449 ], [ -19, %450 ], [ -515, %459 ], [ -515, %453 ], [ -19, %479 ], [ -515, %488 ], [ -515, %482 ], [ -19, %522 ], [ -515, %531 ], [ -515, %525 ], [ -1, %565 ], [ -19, %569 ], [ -515, %578 ], [ -515, %572 ], [ -19, %610 ], [ -515, %618 ], [ -515, %612 ], [ -19, %646 ], [ -515, %654 ], [ -515, %648 ], [ -19, %682 ], [ -515, %690 ], [ -515, %684 ], [ -19, %711 ], [ -515, %719 ], [ -515, %713 ], [ %753, %752 ], [ -19, %740 ], [ -515, %748 ], [ -515, %742 ], [ %767, %766 ], [ -19, %754 ], [ -515, %762 ], [ -515, %756 ], [ -1, %768 ], [ %782, %781 ], [ -19, %769 ], [ -515, %777 ], [ -515, %771 ], [ %796, %795 ], [ -19, %783 ], [ -515, %791 ], [ -515, %785 ], [ -1, %797 ], [ %812, %810 ], [ -19, %798 ], [ -515, %806 ], [ -515, %800 ], [ %846, %845 ], [ -19, %833 ], [ -515, %841 ], [ -515, %835 ], [ %859, %858 ], [ -19, %847 ], [ -515, %854 ], [ -515, %849 ], [ %189, %188 ], [ %187, %184 ], [ -22, %160 ], [ -22, %164 ], [ -22, %181 ], [ -22, %179 ], [ %234, %233 ], [ %232, %229 ], [ -22, %207 ], [ -22, %226 ], [ -22, %224 ], [ -22, %348 ], [ -22, %352 ], [ %366, %356 ], [ %376, %375 ], [ -22, %372 ], [ -22, %370 ], [ -22, %390 ], [ -22, %394 ], [ %409, %398 ], [ %419, %418 ], [ -22, %415 ], [ -22, %413 ], [ %448, %447 ], [ %445, %435 ], [ -22, %433 ], [ %478, %477 ], [ %475, %465 ], [ -22, %463 ], [ -22, %492 ], [ -22, %496 ], [ %511, %500 ], [ %521, %520 ], [ -22, %517 ], [ -22, %515 ], [ %564, %563 ], [ %562, %559 ], [ -22, %535 ], [ -22, %539 ], [ -22, %556 ], [ -22, %554 ], [ %609, %608 ], [ %607, %604 ], [ -22, %582 ], [ -22, %601 ], [ -22, %599 ], [ %645, %644 ], [ %642, %632 ], [ -22, %622 ], [ -22, %628 ], [ %681, %680 ], [ %678, %668 ], [ -22, %658 ], [ -22, %664 ], [ -22, %694 ], [ %710, %709 ], [ %707, %696 ], [ -22, %723 ], [ %739, %738 ], [ %736, %725 ]
  br i1 %10, label %863, label %862

862:                                              ; preds = %860
  call void @mutex_unlock(ptr noundef nonnull %9) #9
  br label %863

863:                                              ; preds = %862, %860, %11
  %864 = phi i32 [ -512, %11 ], [ %861, %862 ], [ %861, %860 ]
  ret i32 %864
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_queryctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_query_ext_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_querymenu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ctrl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_try_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_dequeue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l_video_std_enumstd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154828818, i64 2154829320, i64 2154828855, i64 2154828911, i64 2154828945, i64 2154828969, i64 2154829010, i64 2154829031, i64 2154829059, i64 2154829093}
