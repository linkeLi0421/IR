; ModuleID = '/llk/IR/drivers/rtc/rtc-em3027.c_pt.bc'
source_filename = "../drivers/rtc/rtc-em3027.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_em3027__247_155_em3027_driver_init6 = internal global ptr @em3027_driver_init, section ".initcall6.init", align 4
@em3027_driver = internal global %struct.i2c_driver { i32 0, ptr @em3027_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @em3027_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @em3027_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_em3027_driver_exit = internal global ptr @em3027_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [54 x i8] c"rtc_em3027.author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [60 x i8] c"rtc_em3027.description=EM Microelectronic EM3027 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [39 x i8] c"rtc_em3027.file=drivers/rtc/rtc-em3027\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [23 x i8] c"rtc_em3027.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"rtc-em3027\00", align 1
@em3027_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"emmicro,em3027\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@em3027_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"em3027\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@em3027_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @em3027_get_time, ptr @em3027_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: read error\0A\00", align 1
@__func__.em3027_get_time = private unnamed_addr constant [16 x i8] c"em3027_get_time\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: write error\0A\00", align 1
@__func__.em3027_set_time = private unnamed_addr constant [16 x i8] c"em3027_set_time\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_em3027_driver_exit, ptr @__initcall__kmod_rtc_em3027__247_155_em3027_driver_init6, ptr @em3027_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @em3027_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @em3027_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @em3027_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @em3027_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em3027_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #7
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @em3027_driver, i32 0, i32 7), align 4
  %15 = tail call ptr @devm_rtc_device_register(ptr noundef %13, ptr noundef %14, ptr noundef nonnull @em3027_rtc_ops, ptr noundef null) #7
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = ptrtoint ptr %15 to i32
  br label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %15, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %17, %2
  %22 = phi i32 [ %18, %17 ], [ 0, %19 ], [ -19, %2 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em3027_get_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [7 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -30
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 2) #7
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.em3027_get_time) #8
  br label %50

21:                                               ; preds = %2
  %22 = load i8, ptr %4, align 1
  %23 = call i32 @_bcd2bin(i8 noundef zeroext %22) #9
  store i32 %23, ptr %1, align 4
  %24 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = call i32 @_bcd2bin(i8 noundef zeroext %25) #9
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = call i32 @_bcd2bin(i8 noundef zeroext %29) #9
  %31 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = call i32 @_bcd2bin(i8 noundef zeroext %33) #9
  %35 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = call i32 @_bcd2bin(i8 noundef zeroext %37) #9
  %39 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = call i32 @_bcd2bin(i8 noundef zeroext %41) #9
  %43 = add i32 %42, -1
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 6
  %46 = load i8, ptr %45, align 1
  %47 = call i32 @_bcd2bin(i8 noundef zeroext %46) #9
  %48 = add i32 %47, 100
  %49 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %21, %20
  %51 = phi i32 [ -5, %20 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em3027_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -30
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  store i8 8, ptr %3, align 8
  %11 = load i32, ptr %1, align 4
  %12 = call zeroext i8 @_bin2bcd(i32 noundef %11) #9
  %13 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = call zeroext i8 @_bin2bcd(i32 noundef %15) #9
  %17 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  store i8 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = call zeroext i8 @_bin2bcd(i32 noundef %19) #9
  %21 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  %25 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = call zeroext i8 @_bin2bcd(i32 noundef %27) #9
  %29 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  %33 = call zeroext i8 @_bin2bcd(i32 noundef %32) #9
  %34 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = srem i32 %36, 100
  %38 = call zeroext i8 @_bin2bcd(i32 noundef %37) #9
  %39 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  store i8 %38, ptr %39, align 1
  %40 = getelementptr i8, ptr %0, i32 -8
  %41 = load ptr, ptr %40, align 8
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 1) #7
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.em3027_set_time) #8
  br label %45

45:                                               ; preds = %44, %2
  %46 = phi i32 [ -5, %44 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

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
