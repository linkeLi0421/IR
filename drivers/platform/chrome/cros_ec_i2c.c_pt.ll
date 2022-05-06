; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_i2c.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_host_response_i2c = type { i8, i8, %struct.ec_host_response }
%struct.ec_host_response = type { i8, i8, i16, i16, i16 }

@cros_ec_i2c_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cros_ec_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cros-ec-i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_license247 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [59 x i8] c"description=I2C interface for ChromeOS Embedded Controller\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@cros_ec_driver = internal global %struct.i2c_driver { i32 0, ptr @cros_ec_i2c_probe, ptr @cros_ec_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_i2c_pm_ops, ptr null, ptr null }, ptr @cros_ec_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"cros-ec-i2c\00", align 1
@cros_ec_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_i2c_suspend, ptr @cros_ec_i2c_resume, ptr @cros_ec_i2c_suspend, ptr @cros_ec_i2c_resume, ptr @cros_ec_i2c_suspend, ptr @cros_ec_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot register EC\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"i2c transfer failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get response: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"bad packet checksum\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"response of %u bytes too short; not a full header\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"response data size is too large: expected %u, got %u\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license247], section "llvm.metadata"

@__mod_of__cros_ec_i2c_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cros_ec_i2c_of_match
@__mod_i2c__cros_ec_i2c_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @cros_ec_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cros_ec_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @cros_ec_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 184, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 9
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 10
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 17
  store ptr @cros_ec_cmd_xfer_i2c, ptr %13, align 8
  %14 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 18
  store ptr @cros_ec_pkt_xfer_i2c, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 12
  store ptr %17, ptr %4, align 8
  %18 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 13
  store i32 22, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 14
  store i32 9, ptr %19, align 8
  %20 = tail call i32 @cros_ec_register(ptr noundef nonnull %4) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %22, %6, %2
  %24 = phi i32 [ %20, %22 ], [ -12, %2 ], [ 0, %6 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cros_ec_unregister(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_cmd_xfer_i2c(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 20, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = load i16, ptr %7, align 2
  %11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1
  store i16 %10, ptr %11, align 4
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 3
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %119, label %18

18:                                               ; preds = %2
  %19 = trunc i32 %15 to i16
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 2
  store i16 %19, ptr %20, align 4
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 3
  store ptr %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 4
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %119, label %27

27:                                               ; preds = %18
  %28 = trunc i32 %24 to i16
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %25, ptr %30, align 4
  %31 = load i32, ptr %1, align 4
  %32 = trunc i32 %31 to i8
  %33 = add i8 %32, -36
  store i8 %33, ptr %25, align 64
  %34 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr i8, ptr %25, i32 1
  store i8 %36, ptr %37, align 1
  %38 = load i32, ptr %22, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr i8, ptr %25, i32 2
  store i8 %39, ptr %40, align 2
  %41 = zext i8 %33 to i32
  %42 = and i32 %35, 255
  %43 = add nuw nsw i32 %42, %41
  %44 = add i32 %43, %38
  %45 = load i32, ptr %22, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %27
  %48 = load i32, ptr %22, align 4
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ %58, %49 ], [ %44, %47 ]
  %51 = phi i32 [ %59, %49 ], [ 0, %47 ]
  %52 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = add i32 %51, 3
  %55 = getelementptr i8, ptr %25, i32 %54
  store i8 %53, ptr %55, align 1
  %56 = zext i8 %53 to i32
  %57 = and i32 %50, 255
  %58 = add nuw nsw i32 %57, %56
  %59 = add nuw i32 %51, 1
  %60 = icmp ult i32 %59, %48
  br i1 %60, label %49, label %61

61:                                               ; preds = %49
  %62 = add i32 %48, 3
  br label %63

63:                                               ; preds = %61, %27
  %64 = phi i32 [ %44, %27 ], [ %58, %61 ]
  %65 = phi i32 [ 3, %27 ], [ %62, %61 ]
  %66 = trunc i32 %64 to i8
  %67 = getelementptr i8, ptr %25, i32 %65
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %3, i32 noundef 2) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.2, i32 noundef %70) #9
  br label %119

75:                                               ; preds = %63
  %76 = icmp eq i32 %70, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.3, i32 noundef %70) #9
  br label %119

80:                                               ; preds = %75
  %81 = load ptr, ptr %21, align 4
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  store i32 %83, ptr %84, align 4
  %85 = call i32 @cros_ec_check_result(ptr noundef %0, ptr noundef %1) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %80
  %88 = getelementptr i8, ptr %16, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, ptr %13, align 4
  %92 = icmp ult i32 %91, %90
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.4, i32 noundef %90, i32 noundef %91) #9
  br label %119

96:                                               ; preds = %87
  %97 = load i8, ptr %16, align 64
  %98 = add i8 %97, %89
  %99 = icmp eq i8 %89, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %100, %96
  %101 = phi i8 [ %107, %100 ], [ %98, %96 ]
  %102 = phi i32 [ %108, %100 ], [ 0, %96 ]
  %103 = add nuw nsw i32 %102, 2
  %104 = getelementptr i8, ptr %16, i32 %103
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %102
  store i8 %105, ptr %106, align 1
  %107 = add i8 %105, %101
  %108 = add nuw nsw i32 %102, 1
  %109 = icmp eq i32 %108, %90
  br i1 %109, label %110, label %100

110:                                              ; preds = %100, %96
  %111 = phi i8 [ %98, %96 ], [ %107, %100 ]
  %112 = add nuw nsw i32 %90, 2
  %113 = getelementptr i8, ptr %16, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %111, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.5) #9
  br label %119

119:                                              ; preds = %116, %110, %93, %80, %77, %72, %18, %2
  %120 = phi ptr [ %16, %72 ], [ %16, %77 ], [ %16, %80 ], [ %16, %93 ], [ %16, %116 ], [ %16, %18 ], [ null, %2 ], [ %16, %110 ]
  %121 = phi i32 [ %70, %72 ], [ -5, %77 ], [ %85, %80 ], [ -28, %93 ], [ -74, %116 ], [ -12, %18 ], [ -12, %2 ], [ %90, %110 ]
  %122 = phi ptr [ %25, %72 ], [ %25, %77 ], [ %25, %80 ], [ %25, %93 ], [ %25, %116 ], [ null, %18 ], [ null, %2 ], [ %25, %110 ]
  call void @kfree(ptr noundef %120) #8
  call void @kfree(ptr noundef %122) #8
  %123 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 210
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  call void @msleep(i32 noundef 50) #8
  br label %127

127:                                              ; preds = %126, %119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_pkt_xfer_i2c(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = load i16, ptr %7, align 2
  %11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1
  store i16 %10, ptr %11, align 4
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 10
  %16 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = trunc i32 %15 to i16
  %24 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 2
  store i16 %23, ptr %24, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 3
  store ptr %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 9
  %29 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 14
  %30 = load i32, ptr %29, align 8
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 81, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  %35 = load ptr, ptr %34, align 8
  %36 = trunc i32 %28 to i16
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %35, ptr %38, align 4
  store i8 -38, ptr %35, align 1
  %39 = load ptr, ptr %34, align 8
  %40 = getelementptr i8, ptr %39, i32 1
  store ptr %40, ptr %34, align 8
  %41 = tail call i32 @cros_ec_prepare_tx(ptr noundef %0, ptr noundef %1) #8
  %42 = load ptr, ptr %34, align 8
  %43 = getelementptr i8, ptr %42, i32 -1
  store ptr %43, ptr %34, align 8
  %44 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %3, i32 noundef 2) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %123, label %48

48:                                               ; preds = %33
  %49 = icmp eq i32 %46, 2
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.3, i32 noundef %46) #9
  br label %123

53:                                               ; preds = %48
  %54 = load i8, ptr %22, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ec_host_response_i2c, ptr %22, i32 0, i32 2
  switch i8 %54, label %58 [
    i8 0, label %65
    i8 8, label %123
  ]

58:                                               ; preds = %53
  %59 = load i8, ptr %22, align 1
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ec_host_response_i2c, ptr %22, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %123, label %65

65:                                               ; preds = %61, %58, %53
  %66 = getelementptr inbounds %struct.ec_host_response_i2c, ptr %22, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = icmp ult i8 %67, 8
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = zext i8 %67 to i32
  %71 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.6, i32 noundef %70) #9
  br label %123

73:                                               ; preds = %65
  %74 = load i32, ptr %13, align 4
  %75 = getelementptr inbounds %struct.ec_host_response_i2c, ptr %22, i32 0, i32 2, i32 3
  %76 = load i16, ptr %75, align 1
  %77 = zext i16 %76 to i32
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %106, label %79

79:                                               ; preds = %73
  %80 = lshr i16 %76, 8
  %81 = trunc i16 %80 to i8
  %82 = trunc i16 %76 to i8
  %83 = load i8, ptr %57, align 1
  %84 = getelementptr %struct.ec_host_response_i2c, ptr %22, i32 0, i32 2, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = add i8 %85, %83
  %87 = getelementptr %struct.ec_host_response_i2c, ptr %22, i32 0, i32 2, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = add i8 %88, %86
  %90 = getelementptr i8, ptr %57, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = add i8 %91, %89
  %93 = add i8 %92, %82
  %94 = add i8 %93, %81
  %95 = getelementptr %struct.ec_host_response_i2c, ptr %22, i32 0, i32 2, i32 4
  %96 = load i8, ptr %95, align 1
  %97 = add i8 %96, %94
  %98 = getelementptr i8, ptr %57, i32 7
  %99 = load i8, ptr %98, align 1
  %100 = add i8 %99, %97
  %101 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 5
  %102 = getelementptr i8, ptr %22, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %101, ptr align 1 %102, i32 %77, i1 false)
  %103 = load i16, ptr %75, align 1
  %104 = zext i16 %103 to i32
  %105 = icmp eq i16 %103, 0
  br i1 %105, label %117, label %109

106:                                              ; preds = %73
  %107 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.7, i32 noundef %74, i32 noundef %77) #9
  br label %123

109:                                              ; preds = %109, %79
  %110 = phi i8 [ %114, %109 ], [ %100, %79 ]
  %111 = phi i32 [ %115, %109 ], [ 0, %79 ]
  %112 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %111
  %113 = load i8, ptr %112, align 1
  %114 = add i8 %113, %110
  %115 = add nuw nsw i32 %111, 1
  %116 = icmp eq i32 %115, %104
  br i1 %116, label %117, label %109

117:                                              ; preds = %109, %79
  %118 = phi i8 [ %100, %79 ], [ %114, %109 ]
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.5) #9
  br label %123

123:                                              ; preds = %120, %117, %106, %69, %61, %53, %50, %33
  %124 = phi i32 [ %46, %33 ], [ -5, %50 ], [ -74, %69 ], [ -90, %106 ], [ -74, %120 ], [ -11, %53 ], [ -93, %61 ], [ %104, %117 ]
  %125 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 210
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  call void @msleep(i32 noundef 50) #8
  br label %129

129:                                              ; preds = %128, %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_check_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_prepare_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cros_ec_suspend(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cros_ec_resume(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154262929, i64 2154263430, i64 2154262966, i64 2154263022, i64 2154263056, i64 2154263080, i64 2154263121, i64 2154263142, i64 2154263170, i64 2154263204}
!11 = !{i64 2154264032, i64 2154264533, i64 2154264069, i64 2154264125, i64 2154264159, i64 2154264183, i64 2154264224, i64 2154264245, i64 2154264273, i64 2154264307}
