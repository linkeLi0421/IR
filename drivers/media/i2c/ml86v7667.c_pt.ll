; ModuleID = '/llk/IR/drivers/media/i2c/ml86v7667.c_pt.bc'
source_filename = "../drivers/media/i2c/ml86v7667.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ml86v7667_priv = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.76 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.102, i16, i16, i16, [10 x i16] }
%union.anon.102 = type { i16 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.78, %union.anon.79, i32, ptr, i32, %struct.anon.80, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.78 = type { i64 }
%union.anon.79 = type { ptr }
%struct.anon.80 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@ml86v7667_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ml86v7667\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description251 = internal constant [61 x i8] c"description=OKI Semiconductor ML86V7667 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [24 x i8] c"author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ml86v7667_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @ml86v7667_probe, ptr @ml86v7667_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ml86v7667_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"ml86v7667\00", align 1
@ml86v7667_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr @ml86v7667_subdev_core_ops, ptr null, ptr null, ptr @ml86v7667_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ml86v7667_subdev_pad_ops }, align 4
@ml86v7667_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ml86v7667_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\013%s %d-%04x: failed to probe @ 0x%02x (%s)\0A\00", align 1
@ml86v7667_subdev_core_ops = internal constant %struct.v4l2_subdev_core_ops zeroinitializer, align 4
@ml86v7667_subdev_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr @ml86v7667_g_std, ptr @ml86v7667_s_std, ptr null, ptr null, ptr @ml86v7667_querystd, ptr null, ptr null, ptr @ml86v7667_g_input_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ml86v7667_subdev_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @ml86v7667_enum_mbus_code, ptr null, ptr null, ptr @ml86v7667_fill_fmt, ptr @ml86v7667_fill_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ml86v7667_get_mbus_config, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253], section "llvm.metadata"

@__mod_i2c__ml86v7667_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @ml86v7667_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ml86v7667_i2c_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ml86v7667_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml86v7667_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #6
  %10 = and i32 %9, 1572864
  %11 = icmp eq i32 %10, 1572864
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 320, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %12
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull @ml86v7667_subdev_ops) #6
  %17 = getelementptr inbounds %struct.ml86v7667_priv, ptr %14, i32 0, i32 1
  %18 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %17, i32 noundef 8, ptr noundef null, ptr noundef null) #6
  %19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963776, i64 noundef -64, i64 noundef 63, i64 noundef 1, i64 noundef 0) #6
  %20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963777, i64 noundef -8, i64 noundef 7, i64 noundef 1, i64 noundef 0) #6
  %21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963812, i64 noundef -32, i64 noundef 31, i64 noundef 1, i64 noundef 0) #6
  %22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #6
  %23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963790, i64 noundef -4, i64 noundef 3, i64 noundef 1, i64 noundef 0) #6
  %24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963791, i64 noundef -4, i64 noundef 3, i64 noundef 1, i64 noundef 0) #6
  %25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %26 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963806, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %27 = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 8
  store ptr %17, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ml86v7667_priv, ptr %14, i32 0, i32 1, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %16
  %32 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %17) #6
  %33 = tail call fastcc i32 @ml86v7667_init(ptr noundef nonnull %14)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 12
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %44, ptr noundef %45) #7
  br label %60

47:                                               ; preds = %31, %16
  %48 = phi i32 [ %29, %16 ], [ %33, %31 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %17) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %14) #6
  %49 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 12
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %57, ptr noundef %58) #7
  br label %60

60:                                               ; preds = %47, %35, %12, %2
  %61 = phi i32 [ %48, %47 ], [ 0, %35 ], [ -5, %2 ], [ -12, %12 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml86v7667_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ml86v7667_priv, ptr %3, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %4) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ml86v7667_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = trunc i32 %4 to i8
  %8 = and i8 %7, 62
  %9 = or i8 %8, 1
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %9) #6
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ %4, %1 ]
  %13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = trunc i32 %13 to i8
  %17 = or i8 %16, -128
  %18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 32, i8 noundef zeroext %17) #6
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %18, %15 ], [ %13, %11 ]
  %21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 31) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = trunc i32 %21 to i8
  %25 = or i8 %24, 14
  %26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 31, i8 noundef zeroext %25) #6
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %26, %23 ], [ %21, %19 ]
  %29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = trunc i32 %29 to i8
  %33 = or i8 %32, -128
  %34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext %33) #6
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %34, %31 ], [ %29, %27 ]
  %37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = trunc i32 %37 to i8
  %41 = and i8 %40, 127
  %42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %41) #6
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %42, %39 ], [ %37, %35 ]
  %45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 44) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %43
  %48 = or i32 %20, %12
  %49 = or i32 %48, %28
  %50 = or i32 %49, %36
  %51 = or i32 %50, %44
  %52 = and i32 %45, 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i64 63744, i64 16713471
  %55 = getelementptr inbounds %struct.ml86v7667_priv, ptr %0, i32 0, i32 2
  store i64 %54, ptr %55, align 8
  %56 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #6
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = trunc i32 %56 to i8
  %60 = and i8 %59, 127
  %61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %60) #6
  br label %62

62:                                               ; preds = %58, %47
  %63 = phi i32 [ %61, %58 ], [ %56, %47 ]
  %64 = or i32 %51, %63
  %65 = load i64, ptr %55, align 8
  %66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #6
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = and i64 %65, 63744
  %70 = icmp eq i64 %69, 0
  %71 = select i1 %70, i8 32, i8 0
  %72 = trunc i32 %66 to i8
  %73 = and i8 %72, -57
  %74 = or i8 %71, %73
  %75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %74) #6
  br label %76

76:                                               ; preds = %68, %62
  %77 = phi i32 [ %75, %68 ], [ %66, %62 ]
  %78 = or i32 %64, %77
  br label %79

79:                                               ; preds = %76, %43
  %80 = phi i32 [ %78, %76 ], [ %45, %43 ]
  ret i32 %80
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ml86v7667_g_std(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.ml86v7667_priv, ptr %0, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml86v7667_s_std(ptr nocapture noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = and i64 %1, 63744
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %9, i8 32, i8 0
  %11 = trunc i32 %5 to i8
  %12 = and i8 %11, -57
  %13 = or i8 %12, %10
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %13) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ml86v7667_priv, ptr %0, i32 0, i32 2
  store i64 %1, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %7, %2
  %19 = phi i32 [ 0, %16 ], [ %14, %7 ], [ %5, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml86v7667_querystd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 44) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = and i32 %5, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i64 63744, i64 16713471
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, %13
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i64 [ %15, %10 ], [ 0, %7 ]
  store i64 %17, ptr %1, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ 0, %16 ], [ %5, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml86v7667_g_input_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 44) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = lshr i32 %5, 2
  %9 = and i32 %8, 2
  %10 = xor i32 %9, 2
  store i32 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %7 ], [ %5, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ml86v7667_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #4 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 8200, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6, %3
  %13 = phi i32 [ 0, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ml86v7667_fill_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #4 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 8200, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 8, ptr %11, align 4
  store i32 720, ptr %8, align 4
  %12 = getelementptr inbounds %struct.ml86v7667_priv, ptr %0, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 63744
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %15, i32 576, i32 480
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %7, %3
  %19 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ml86v7667_get_mbus_config(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.v4l2_mbus_config, ptr %2, i32 0, i32 1
  store i32 321, ptr %4, align 4
  store i32 2, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml86v7667_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -44
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %102 [
    i32 9963776, label %8
    i32 9963777, label %20
    i32 9963812, label %32
    i32 9963779, label %44
    i32 9963790, label %52
    i32 9963791, label %65
    i32 9963803, label %77
    i32 9963806, label %89
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 17) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %102, label %13

13:                                               ; preds = %8
  %14 = trunc i32 %10 to i8
  %15 = and i8 %14, 127
  %16 = trunc i32 %11 to i8
  %17 = and i8 %16, -128
  %18 = or i8 %17, %15
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 17, i8 noundef zeroext %18) #6
  br label %102

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 16) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %102, label %25

25:                                               ; preds = %20
  %26 = trunc i32 %22 to i8
  %27 = and i8 %26, 15
  %28 = trunc i32 %23 to i8
  %29 = and i8 %28, -16
  %30 = or i8 %29, %27
  %31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 16, i8 noundef zeroext %30) #6
  br label %102

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 21) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %102, label %37

37:                                               ; preds = %32
  %38 = trunc i32 %34 to i8
  %39 = shl i8 %38, 2
  %40 = trunc i32 %35 to i8
  %41 = and i8 %40, 3
  %42 = or i8 %41, %39
  %43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 21, i8 noundef zeroext %42) #6
  br label %102

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 22) #6
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %102, label %49

49:                                               ; preds = %44
  %50 = trunc i32 %46 to i8
  %51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 22, i8 noundef zeroext %50) #6
  br label %102

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 20) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %102, label %57

57:                                               ; preds = %52
  %58 = trunc i32 %54 to i8
  %59 = shl i8 %58, 3
  %60 = and i8 %59, 56
  %61 = trunc i32 %55 to i8
  %62 = and i8 %61, -57
  %63 = or i8 %60, %62
  %64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 20, i8 noundef zeroext %63) #6
  br label %102

65:                                               ; preds = %1
  %66 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 20) #6
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %102, label %70

70:                                               ; preds = %65
  %71 = trunc i32 %67 to i8
  %72 = and i8 %71, 7
  %73 = trunc i32 %68 to i8
  %74 = and i8 %73, -8
  %75 = or i8 %74, %72
  %76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 20, i8 noundef zeroext %75) #6
  br label %102

77:                                               ; preds = %1
  %78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 12) #6
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %77
  %83 = trunc i32 %79 to i8
  %84 = shl i8 %83, 7
  %85 = trunc i32 %80 to i8
  %86 = and i8 %85, 127
  %87 = or i8 %86, %84
  %88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 12, i8 noundef zeroext %87) #6
  br label %102

89:                                               ; preds = %1
  %90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 18) #6
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = trunc i32 %91 to i8
  %96 = shl i8 %95, 6
  %97 = and i8 %96, 64
  %98 = trunc i32 %92 to i8
  %99 = and i8 %98, -65
  %100 = or i8 %97, %99
  %101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 18, i8 noundef zeroext %100) #6
  br label %102

102:                                              ; preds = %94, %89, %82, %77, %70, %65, %57, %52, %49, %44, %37, %32, %25, %20, %13, %8, %1
  %103 = phi i32 [ -22, %1 ], [ %19, %13 ], [ %11, %8 ], [ %31, %25 ], [ %23, %20 ], [ %43, %37 ], [ %35, %32 ], [ %51, %49 ], [ %47, %44 ], [ %64, %57 ], [ %55, %52 ], [ %76, %70 ], [ %68, %65 ], [ %88, %82 ], [ %80, %77 ], [ %101, %94 ], [ %92, %89 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
