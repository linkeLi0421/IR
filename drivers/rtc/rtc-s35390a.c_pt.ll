; ModuleID = '/llk/IR/drivers/rtc/rtc-s35390a.c_pt.bc'
source_filename = "../drivers/rtc/rtc-s35390a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.s35390a = type { [8 x ptr], ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@s35390a_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s35390a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@s35390a_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"s35390a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sii,s35390a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [48 x i8] c"author=Byron Bradley <byron.bbradley@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [31 x i8] c"description=S35390A RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@s35390a_driver = internal global %struct.i2c_driver { i32 0, ptr @s35390a_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s35390a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s35390a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"rtc-s35390a\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Address %02x unavailable\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"error resetting chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"error disabling alarm\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error disabling test mode\0A\00", align 1
@s35390a_rtc_ops = internal constant %struct.rtc_class_ops { ptr @s35390a_rtc_ioctl, ptr @s35390a_rtc_read_time, ptr @s35390a_rtc_set_time, ptr @s35390a_rtc_read_alarm, ptr @s35390a_rtc_set_alarm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__s35390a_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @s35390a_id
@__mod_of__s35390a_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @s35390a_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @s35390a_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @s35390a_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s35390a_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_algorithm, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %12) #8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %174, label %20

20:                                               ; preds = %2
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 40, i32 noundef 3520) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %174, label %23

23:                                               ; preds = %20
  store ptr %0, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %11, align 8
  %27 = load i16, ptr %25, align 2
  %28 = add i16 %27, 1
  %29 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %26, i16 noundef zeroext %28) #8
  %30 = getelementptr [8 x ptr], ptr %21, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %40

32:                                               ; preds = %75, %68, %61, %54, %47, %40, %23
  %33 = phi i32 [ 1, %23 ], [ 2, %40 ], [ 3, %47 ], [ 4, %54 ], [ 5, %61 ], [ 6, %68 ], [ 7, %75 ]
  %34 = getelementptr [8 x ptr], ptr %21, i32 0, i32 %33
  %35 = load i16, ptr %25, align 2
  %36 = zext i16 %35 to i32
  %37 = add nuw nsw i32 %33, %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %37) #9
  %38 = load ptr, ptr %34, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %174

40:                                               ; preds = %23
  %41 = load ptr, ptr %11, align 8
  %42 = load i16, ptr %25, align 2
  %43 = add i16 %42, 2
  %44 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %41, i16 noundef zeroext %43) #8
  %45 = getelementptr [8 x ptr], ptr %21, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %32, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %11, align 8
  %49 = load i16, ptr %25, align 2
  %50 = add i16 %49, 3
  %51 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %48, i16 noundef zeroext %50) #8
  %52 = getelementptr [8 x ptr], ptr %21, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %32, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %11, align 8
  %56 = load i16, ptr %25, align 2
  %57 = add i16 %56, 4
  %58 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %55, i16 noundef zeroext %57) #8
  %59 = getelementptr [8 x ptr], ptr %21, i32 0, i32 4
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %32, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %11, align 8
  %63 = load i16, ptr %25, align 2
  %64 = add i16 %63, 5
  %65 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %62, i16 noundef zeroext %64) #8
  %66 = getelementptr [8 x ptr], ptr %21, i32 0, i32 5
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %32, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %11, align 8
  %70 = load i16, ptr %25, align 2
  %71 = add i16 %70, 6
  %72 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %69, i16 noundef zeroext %71) #8
  %73 = getelementptr [8 x ptr], ptr %21, i32 0, i32 6
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %32, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %11, align 8
  %77 = load i16, ptr %25, align 2
  %78 = add i16 %77, 7
  %79 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %10, ptr noundef %76, i16 noundef zeroext %78) #8
  %80 = getelementptr [8 x ptr], ptr %21, i32 0, i32 7
  store ptr %79, ptr %80, align 4
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %32, label %82

82:                                               ; preds = %75
  %83 = tail call ptr @devm_rtc_allocate_device(ptr noundef %10) #8
  %84 = getelementptr inbounds %struct.s35390a, ptr %21, i32 0, i32 1
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = ptrtoint ptr %83 to i32
  br label %174

88:                                               ; preds = %82
  %89 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %90 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 1, ptr %90, align 4, !annotation !8
  %91 = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 1
  %92 = load i16, ptr %91, align 2
  store i16 %92, ptr %7, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 1, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %9, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %7, i32 noundef 1) #8
  %98 = icmp eq i32 %97, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  br i1 %98, label %99, label %105

99:                                               ; preds = %88
  %100 = load i8, ptr %9, align 1
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  call void @msleep(i32 noundef 500) #8
  %104 = load i8, ptr %9, align 1
  br label %106

105:                                              ; preds = %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #9
  br label %174

106:                                              ; preds = %103, %99
  %107 = phi i8 [ %100, %99 ], [ %104, %103 ]
  %108 = lshr i8 %107, 6
  %109 = and i8 %108, 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds %struct.s35390a, ptr %21, i32 0, i32 2
  store i32 %110, ptr %111, align 4
  %112 = and i8 %107, 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %106
  store i8 0, ptr %8, align 1
  %115 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %116 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %116, align 4, !annotation !8
  %117 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 1
  %118 = load i16, ptr %117, align 2
  store i16 %118, ptr %6, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %119, align 2
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %8, ptr %120, align 4
  %121 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 3
  %122 = load ptr, ptr %121, align 8
  %123 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %6, i32 noundef 1) #8
  %124 = icmp eq i32 %123, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  br i1 %124, label %155, label %125

125:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3) #9
  br label %174

126:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %127 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %128 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %128, align 4, !annotation !8
  %129 = getelementptr inbounds %struct.i2c_client, ptr %127, i32 0, i32 1
  %130 = load i16, ptr %129, align 2
  store i16 %130, ptr %4, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %132, align 4
  %133 = getelementptr inbounds %struct.i2c_client, ptr %127, i32 0, i32 3
  %134 = load ptr, ptr %133, align 8
  %135 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %4, i32 noundef 1) #8
  %136 = icmp eq i32 %135, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %136, label %137, label %154

137:                                              ; preds = %126
  %138 = load i8, ptr %5, align 1
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %137
  %142 = and i8 %138, -2
  store i8 %142, ptr %5, align 1
  %143 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %144 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %144, align 4, !annotation !8
  %145 = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 1
  %146 = load i16, ptr %145, align 2
  store i16 %146, ptr %3, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %148, align 4
  %149 = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %3, i32 noundef 1) #8
  %152 = icmp eq i32 %151, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br i1 %152, label %153, label %154

153:                                              ; preds = %141, %137
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  br label %155

154:                                              ; preds = %141, %126
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.4) #9
  br label %174

155:                                              ; preds = %153, %114
  call void @device_set_wakeup_capable(ptr noundef %10, i1 noundef zeroext true) #8
  %156 = load ptr, ptr %84, align 4
  %157 = getelementptr inbounds %struct.rtc_device, ptr %156, i32 0, i32 3
  store ptr @s35390a_rtc_ops, ptr %157, align 8
  %158 = load ptr, ptr %84, align 4
  %159 = getelementptr inbounds %struct.rtc_device, ptr %158, i32 0, i32 22
  store i64 946684800, ptr %159, align 8
  %160 = load ptr, ptr %84, align 4
  %161 = getelementptr inbounds %struct.rtc_device, ptr %160, i32 0, i32 23
  store i64 4102444799, ptr %161, align 8
  %162 = load ptr, ptr %84, align 4
  %163 = getelementptr inbounds %struct.rtc_device, ptr %162, i32 0, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %163) #8
  %164 = load ptr, ptr %84, align 4
  %165 = getelementptr inbounds %struct.rtc_device, ptr %164, i32 0, i32 21
  call void @_clear_bit(i32 noundef 4, ptr noundef %165) #8
  %166 = load i8, ptr %9, align 1
  %167 = and i8 %166, 4
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %155
  %170 = load ptr, ptr %84, align 4
  call void @rtc_update_irq(ptr noundef %170, i32 noundef 1, i32 noundef 32) #8
  br label %171

171:                                              ; preds = %169, %155
  %172 = load ptr, ptr %84, align 4
  %173 = call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %172) #8
  br label %174

174:                                              ; preds = %171, %154, %125, %105, %86, %32, %20, %2
  %175 = phi i32 [ %39, %32 ], [ %87, %86 ], [ -5, %105 ], [ -5, %125 ], [ %173, %171 ], [ -5, %154 ], [ -19, %2 ], [ -12, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  ret i32 %175
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  switch i32 %1, label %47 [
    i32 -2147192813, label %9
    i32 28692, label %43
  ]

9:                                                ; preds = %3
  %10 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 1) #8
  %19 = icmp eq i32 %18, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %19, label %20, label %47

20:                                               ; preds = %9
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @msleep(i32 noundef 500) #8
  br label %29

26:                                               ; preds = %20
  %27 = lshr i32 %22, 1
  %28 = and i32 %27, 1
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ %28, %26 ], [ 1, %25 ]
  store i32 %30, ptr %6, align 4
  %31 = inttoptr i32 %2 to ptr
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 4, i32 -1090519040) #10, !srcloc !9
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = tail call ptr @llvm.thread.pointer() #8
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #11, !srcloc !10
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #8, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !12
  %41 = call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef nonnull %6, i32 noundef 4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #8, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %47

43:                                               ; preds = %3
  %44 = tail call fastcc i32 @s35390a_init(ptr noundef %8)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %35
  br label %47

47:                                               ; preds = %46, %43, %35, %29, %9, %3
  %48 = phi i32 [ 0, %46 ], [ -14, %35 ], [ %44, %43 ], [ -515, %3 ], [ -14, %29 ], [ -5, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [7 x i8], align 1
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #8
  %18 = icmp eq i32 %17, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i8, ptr %6, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  call void @msleep(i32 noundef 500) #8
  br label %112

25:                                               ; preds = %19
  %26 = and i32 %21, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %25, %2
  %29 = getelementptr [8 x ptr], ptr %8, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %31, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  store i16 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %34, align 2
  store i16 7, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 1) #8
  %39 = icmp eq i32 %38, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br i1 %39, label %40, label %112

40:                                               ; preds = %28
  %41 = load i8, ptr %5, align 1
  %42 = zext i8 %41 to i32
  %43 = call i32 asm "rbit $0, $1", "=r,r"(i32 %42) #10, !srcloc !13
  %44 = lshr i32 %43, 24
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %5, align 1
  %46 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 asm "rbit $0, $1", "=r,r"(i32 %48) #10, !srcloc !13
  %50 = lshr i32 %49, 24
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %46, align 1
  %52 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 asm "rbit $0, $1", "=r,r"(i32 %54) #10, !srcloc !13
  %56 = lshr i32 %55, 24
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %52, align 1
  %58 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 asm "rbit $0, $1", "=r,r"(i32 %60) #10, !srcloc !13
  %62 = lshr i32 %61, 24
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %58, align 1
  %64 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 asm "rbit $0, $1", "=r,r"(i32 %66) #10, !srcloc !13
  %68 = lshr i32 %67, 24
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr %64, align 1
  %70 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = call i32 asm "rbit $0, $1", "=r,r"(i32 %72) #10, !srcloc !13
  %74 = lshr i32 %73, 24
  %75 = trunc i32 %74 to i8
  store i8 %75, ptr %70, align 1
  %76 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 6
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 asm "rbit $0, $1", "=r,r"(i32 %78) #10, !srcloc !13
  %80 = lshr i32 %79, 24
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %76, align 1
  %82 = call i32 @_bcd2bin(i8 noundef zeroext %81) #12
  store i32 %82, ptr %1, align 4
  %83 = call i32 @_bcd2bin(i8 noundef zeroext %75) #12
  %84 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.s35390a, ptr %8, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %40
  %89 = and i8 %69, 63
  %90 = call i32 @_bcd2bin(i8 noundef zeroext %89) #12
  br label %99

91:                                               ; preds = %40
  %92 = trunc i32 %68 to i8
  %93 = and i8 %92, 63
  %94 = call i32 @_bcd2bin(i8 noundef zeroext %93) #12
  %95 = and i32 %67, 1073741824
  %96 = icmp eq i32 %95, 0
  %97 = add i32 %94, 12
  %98 = select i1 %96, i32 %94, i32 %97
  br label %99

99:                                               ; preds = %91, %88
  %100 = phi i32 [ %98, %91 ], [ %90, %88 ]
  %101 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %100, ptr %101, align 4
  %102 = call i32 @_bcd2bin(i8 noundef zeroext %63) #12
  %103 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %102, ptr %103, align 4
  %104 = call i32 @_bcd2bin(i8 noundef zeroext %57) #12
  %105 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %104, ptr %105, align 4
  %106 = call i32 @_bcd2bin(i8 noundef zeroext %51) #12
  %107 = add i32 %106, -1
  %108 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %107, ptr %108, align 4
  %109 = call i32 @_bcd2bin(i8 noundef zeroext %45) #12
  %110 = add i32 %109, 100
  %111 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %110, ptr %111, align 4
  br label %112

112:                                              ; preds = %99, %28, %25, %24
  %113 = phi i32 [ 0, %99 ], [ -22, %25 ], [ -5, %28 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #8
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [7 x i8], align 1
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #8
  %9 = getelementptr inbounds i8, ptr %5, i32 3
  store i32 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %10 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 1) #8
  %19 = icmp eq i32 %18, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i8, ptr %6, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @msleep(i32 noundef 500) #8
  br label %29

26:                                               ; preds = %20
  %27 = and i32 %22, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %25
  %30 = call fastcc i32 @s35390a_init(ptr noundef %8)
  br label %31

31:                                               ; preds = %29, %26, %2
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.s35390a, ptr %8, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %31
  %46 = call zeroext i8 @_bin2bcd(i32 noundef %41) #12
  br label %55

47:                                               ; preds = %31
  %48 = icmp slt i32 %41, 12
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = call zeroext i8 @_bin2bcd(i32 noundef %41) #12
  br label %55

51:                                               ; preds = %47
  %52 = add nsw i32 %41, -12
  %53 = call zeroext i8 @_bin2bcd(i32 noundef %52) #12
  %54 = or i8 %53, 64
  br label %55

55:                                               ; preds = %51, %49, %45
  %56 = phi i8 [ %46, %45 ], [ %50, %49 ], [ %54, %51 ]
  %57 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 3
  %58 = call zeroext i8 @_bin2bcd(i32 noundef %39) #12
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 2
  %61 = call zeroext i8 @_bin2bcd(i32 noundef %37) #12
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 1
  %64 = add i32 %35, 1
  %65 = call zeroext i8 @_bin2bcd(i32 noundef %64) #12
  %66 = zext i8 %65 to i32
  %67 = add i32 %33, -100
  %68 = call zeroext i8 @_bin2bcd(i32 noundef %67) #12
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 4
  %71 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = call zeroext i8 @_bin2bcd(i32 noundef %72) #12
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 5
  %76 = load i32, ptr %1, align 4
  %77 = call zeroext i8 @_bin2bcd(i32 noundef %76) #12
  %78 = zext i8 %77 to i32
  %79 = call i32 asm "rbit $0, $1", "=r,r"(i32 %69) #10, !srcloc !13
  %80 = lshr i32 %79, 24
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %5, align 1
  %82 = call i32 asm "rbit $0, $1", "=r,r"(i32 %66) #10, !srcloc !13
  %83 = lshr i32 %82, 24
  %84 = trunc i32 %83 to i8
  store i8 %84, ptr %63, align 1
  %85 = call i32 asm "rbit $0, $1", "=r,r"(i32 %62) #10, !srcloc !13
  %86 = lshr i32 %85, 24
  %87 = trunc i32 %86 to i8
  store i8 %87, ptr %60, align 1
  %88 = call i32 asm "rbit $0, $1", "=r,r"(i32 %59) #10, !srcloc !13
  %89 = lshr i32 %88, 24
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %57, align 1
  %91 = zext i8 %56 to i32
  %92 = call i32 asm "rbit $0, $1", "=r,r"(i32 %91) #10, !srcloc !13
  %93 = lshr i32 %92, 24
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %70, align 1
  %95 = call i32 asm "rbit $0, $1", "=r,r"(i32 %74) #10, !srcloc !13
  %96 = lshr i32 %95, 24
  %97 = trunc i32 %96 to i8
  store i8 %97, ptr %75, align 1
  %98 = call i32 asm "rbit $0, $1", "=r,r"(i32 %78) #10, !srcloc !13
  %99 = lshr i32 %98, 24
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 6
  store i8 %100, ptr %101, align 1
  %102 = getelementptr [8 x ptr], ptr %8, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %104 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 7, ptr %104, align 4, !annotation !8
  %105 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 1
  %106 = load i16, ptr %105, align 2
  store i16 %106, ptr %3, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %108, align 4
  %109 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 3
  %110 = load ptr, ptr %109, align 8
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %3, i32 noundef 1) #8
  %112 = icmp eq i32 %111, 1
  %113 = select i1 %112, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #8
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = getelementptr [8 x ptr], ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 1) #8
  %19 = icmp eq i32 %18, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %19, label %20, label %90

20:                                               ; preds = %2
  %21 = load i8, ptr %6, align 1
  %22 = and i8 %21, 14
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8 0, ptr %1, align 4
  br label %90

25:                                               ; preds = %20
  store i8 1, ptr %1, align 4
  %26 = getelementptr [8 x ptr], ptr %8, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %28 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %28, align 4, !annotation !8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  store i16 %30, ptr %3, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 1) #8
  %36 = icmp eq i32 %35, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br i1 %36, label %37, label %90

37:                                               ; preds = %25
  %38 = load i8, ptr %5, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 asm "rbit $0, $1", "=r,r"(i32 %39) #10, !srcloc !13
  %41 = lshr i32 %40, 24
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %5, align 1
  %43 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 asm "rbit $0, $1", "=r,r"(i32 %45) #10, !srcloc !13
  %47 = lshr i32 %46, 24
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %43, align 1
  %49 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 asm "rbit $0, $1", "=r,r"(i32 %51) #10, !srcloc !13
  %53 = lshr i32 %52, 24
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %49, align 1
  %55 = icmp sgt i32 %40, -1
  br i1 %55, label %61, label %56

56:                                               ; preds = %37
  %57 = trunc i32 %41 to i8
  %58 = and i8 %57, 127
  %59 = call i32 @_bcd2bin(i8 noundef zeroext %58) #12
  %60 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %56, %37
  %62 = icmp sgt i32 %46, -1
  br i1 %62, label %81, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.s35390a, ptr %8, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = and i8 %48, 63
  %69 = call i32 @_bcd2bin(i8 noundef zeroext %68) #12
  br label %78

70:                                               ; preds = %63
  %71 = trunc i32 %47 to i8
  %72 = and i8 %71, 63
  %73 = call i32 @_bcd2bin(i8 noundef zeroext %72) #12
  %74 = and i32 %46, 1073741824
  %75 = icmp eq i32 %74, 0
  %76 = add i32 %73, 12
  %77 = select i1 %75, i32 %73, i32 %76
  br label %78

78:                                               ; preds = %70, %67
  %79 = phi i32 [ %77, %70 ], [ %69, %67 ]
  %80 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %78, %61
  %82 = icmp sgt i32 %52, -1
  br i1 %82, label %88, label %83

83:                                               ; preds = %81
  %84 = trunc i32 %53 to i8
  %85 = and i8 %84, 127
  %86 = call i32 @_bcd2bin(i8 noundef zeroext %85) #12
  %87 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %83, %81
  %89 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %25, %24, %2
  %91 = phi i32 [ 0, %24 ], [ 0, %88 ], [ -5, %2 ], [ -5, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8, align 1
  %9 = getelementptr i8, ptr %0, i32 64
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %7, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1
  %11 = getelementptr [8 x ptr], ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %13, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  store i16 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 1) #8
  %21 = icmp eq i32 %20, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  br i1 %21, label %22, label %106

22:                                               ; preds = %2
  %23 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %24 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %24, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  store i16 %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 1, ptr %27, align 2
  store i16 1, ptr %24, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %8, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 1) #8
  %32 = icmp eq i32 %31, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  br i1 %32, label %33, label %106

33:                                               ; preds = %22
  %34 = load i8, ptr %1, align 4
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i8 0, i8 2
  store i8 %36, ptr %8, align 1
  %37 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %38 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %38, align 4, !annotation !8
  %39 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  store i16 %40, ptr %4, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %41, align 2
  store i16 1, ptr %38, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %8, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 1) #8
  %46 = icmp eq i32 %45, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %46, label %47, label %106

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = call zeroext i8 @_bin2bcd(i32 noundef %49) #12
  %53 = or i8 %52, -128
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %54, %51 ], [ 0, %47 ]
  %57 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.s35390a, ptr %10, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = call zeroext i8 @_bin2bcd(i32 noundef %58) #12
  br label %72

64:                                               ; preds = %55
  %65 = icmp slt i32 %58, 12
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = call zeroext i8 @_bin2bcd(i32 noundef %58) #12
  br label %72

68:                                               ; preds = %64
  %69 = add nsw i32 %58, -12
  %70 = call zeroext i8 @_bin2bcd(i32 noundef %69) #12
  %71 = or i8 %70, 64
  br label %72

72:                                               ; preds = %68, %66, %62
  %73 = phi i8 [ %63, %62 ], [ %67, %66 ], [ %71, %68 ]
  %74 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  %75 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = call zeroext i8 @_bin2bcd(i32 noundef %76) #12
  %78 = or i8 %77, -128
  %79 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  %80 = icmp sgt i32 %58, 11
  %81 = select i1 %80, i8 -64, i8 -128
  %82 = or i8 %73, %81
  %83 = call i32 asm "rbit $0, $1", "=r,r"(i32 %56) #10, !srcloc !13
  %84 = lshr i32 %83, 24
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %7, align 1
  %86 = zext i8 %82 to i32
  %87 = call i32 asm "rbit $0, $1", "=r,r"(i32 %86) #10, !srcloc !13
  %88 = lshr i32 %87, 24
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %74, align 1
  %90 = zext i8 %78 to i32
  %91 = call i32 asm "rbit $0, $1", "=r,r"(i32 %90) #10, !srcloc !13
  %92 = lshr i32 %91, 24
  %93 = trunc i32 %92 to i8
  store i8 %93, ptr %79, align 1
  %94 = getelementptr [8 x ptr], ptr %10, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %96 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %96, align 4, !annotation !8
  %97 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 1
  %98 = load i16, ptr %97, align 2
  store i16 %98, ptr %3, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %99, align 2
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %7, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %3, i32 noundef 1) #8
  %104 = icmp eq i32 %103, 1
  %105 = select i1 %104, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %106

106:                                              ; preds = %72, %33, %22, %2
  %107 = phi i32 [ %105, %72 ], [ -5, %2 ], [ -5, %22 ], [ -5, %33 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #8
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s35390a_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [1 x %struct.i2c_msg], align 4
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  %6 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 -64, ptr %4, align 1
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 1, ptr %5, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  store i16 %10, ptr %3, align 4
  store i16 0, ptr %6, align 2
  store ptr %4, ptr %7, align 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 1) #8
  %14 = icmp eq i32 %13, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %2, i32 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  br label %28

19:                                               ; preds = %41
  %20 = add nuw nsw i32 %29, 1
  store i8 -64, ptr %4, align 1
  %21 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  store i16 %23, ptr %3, align 4
  store i16 0, ptr %6, align 2
  store i16 1, ptr %5, align 4
  store ptr %4, ptr %7, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 1) #8
  %27 = icmp eq i32 %26, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br i1 %27, label %28, label %43

28:                                               ; preds = %19, %15
  %29 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %30 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  store i32 0, ptr %16, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  store i16 %32, ptr %2, align 4
  store i16 1, ptr %17, align 2
  store i16 1, ptr %16, align 4
  store ptr %4, ptr %18, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %2, i32 noundef 1) #8
  %36 = icmp eq i32 %35, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i8, ptr %4, align 1
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = icmp eq i32 %29, 5
  br i1 %42, label %43, label %19

43:                                               ; preds = %41, %37, %28, %19, %1
  %44 = phi i32 [ -5, %1 ], [ 1, %37 ], [ -5, %41 ], [ -5, %28 ], [ -5, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone willreturn }

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
!9 = !{i64 2151964175, i64 2151964200}
!10 = !{i64 4459709}
!11 = !{i64 4459906}
!12 = !{i64 2151945185}
!13 = !{i64 6630932}
