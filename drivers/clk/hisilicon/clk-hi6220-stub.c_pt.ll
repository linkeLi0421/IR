; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi6220-stub.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi6220-stub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hi6220_stub_clk = type { i32, ptr, %struct.clk_hw, ptr, %struct.mbox_client, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%union.hi6220_mbox_data = type { [8 x i32] }
%struct.hi6220_mbox_msg = type { i8, i8, i8, i8, [4 x i8] }

@__initcall__kmod_clk_hi6220_stub__164_272_hi6220_stub_clk_init4 = internal global ptr @hi6220_stub_clk_init, section ".initcall4.init", align 4
@hi6220_stub_clk_driver = internal global %struct.platform_driver { ptr @hi6220_stub_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi6220_stub_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"hi6220-stub-clk\00", align 1
@hi6220_stub_clk_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-stub-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hisilicon,hi6220-clk-sram\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get sram regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed get mailbox channel\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"acpu0\00", align 1
@hi6220_stub_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6220_stub_clk_recalc_rate, ptr @hi6220_stub_clk_round_rate, ptr null, ptr null, ptr null, ptr @hi6220_stub_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to register OF clock provider\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: un-supported clock id %d\0A\00", align 1
@__func__.hi6220_stub_clk_recalc_rate = private unnamed_addr constant [28 x i8] c"hi6220_stub_clk_recalc_rate\00", align 1
@__func__.hi6220_stub_clk_round_rate = private unnamed_addr constant [27 x i8] c"hi6220_stub_clk_round_rate\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"drivers/clk/hisilicon/clk-hi6220-stub.c\00", align 1
@__func__.hi6220_stub_clk_set_rate = private unnamed_addr constant [25 x i8] c"hi6220_stub_clk_set_rate\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_hi6220_stub__164_272_hi6220_stub_clk_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6220_stub_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 56, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %10 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %13 = ptrtoint ptr %9 to i32
  br label %48

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 2, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 1
  store ptr %3, ptr %16, align 4
  store i32 0, ptr %6, align 4
  %17 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 4
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 4, i32 6
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 4, i32 1
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 4, i32 2
  store i32 500, ptr %20, align 4
  %21 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 4, i32 3
  store i8 0, ptr %21, align 4
  %22 = call ptr @mbox_request_channel(ptr noundef %17, i32 noundef 0) #7
  %23 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 5
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %26 = load ptr, ptr %23, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %48

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %6, i32 0, i32 2
  store ptr @.str.4, ptr %2, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @hi6220_stub_clk_ops, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %32, align 4
  %33 = call ptr @devm_clk_register(ptr noundef %3, ptr noundef %29) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = ptrtoint ptr %33 to i32
  br label %48

37:                                               ; preds = %28
  %38 = call i32 @of_clk_add_provider(ptr noundef %5, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %33) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %48

41:                                               ; preds = %37
  %42 = load ptr, ptr %10, align 4
  %43 = call i32 @regmap_write(ptr noundef %42, i32 noundef 6960, i32 noundef 0) #7
  %44 = load ptr, ptr %10, align 4
  %45 = call i32 @regmap_write(ptr noundef %44, i32 noundef 6964, i32 noundef 0) #7
  %46 = load ptr, ptr %10, align 4
  %47 = call i32 @regmap_write(ptr noundef %46, i32 noundef 6968, i32 noundef 0) #7
  br label %48

48:                                               ; preds = %41, %40, %35, %25, %12, %1
  %49 = phi i32 [ %13, %12 ], [ %27, %25 ], [ %36, %35 ], [ %38, %40 ], [ 0, %41 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 6092, ptr noundef nonnull %3) #7
  %11 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %12 = mul i32 %11, 1000
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.hi6220_stub_clk_recalc_rate, i32 noundef %5) #8
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ %12, %7 ], [ 0, %13 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = udiv i32 %1, 1000
  %9 = load i32, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 -1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %12 = getelementptr i8, ptr %0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 6960, ptr noundef nonnull %4) #7
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, -1364283730
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 6968, ptr noundef nonnull %5) #7
  br label %20

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %12, align 4
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 5924, ptr noundef nonnull %6) #7
  %23 = load i32, ptr %6, align 4
  %24 = load i32, ptr %5, align 4
  %25 = call i32 @llvm.umin.i32(i32 %23, i32 %24) #7
  store i32 %25, ptr %6, align 4
  %26 = icmp ult i32 %25, %8
  br i1 %26, label %27, label %29, !prof !9

27:                                               ; preds = %20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  %28 = load i32, ptr %6, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ %8, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %31 = mul i32 %30, 1000
  br label %35

32:                                               ; preds = %3
  %33 = getelementptr i8, ptr %0, i32 -4
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.hi6220_stub_clk_round_rate, i32 noundef %9) #8
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %8, %32 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %union.hi6220_mbox_data, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = udiv i32 %1, 1000
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 28, i1 false) #7, !annotation !8
  %11 = getelementptr i8, ptr %0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 6964, i32 noundef %9) #7
  store i8 10, ptr %4, align 4
  %14 = getelementptr inbounds %struct.hi6220_mbox_msg, ptr %4, i32 0, i32 1
  store i8 3, ptr %14, align 1
  %15 = getelementptr inbounds %struct.hi6220_mbox_msg, ptr %4, i32 0, i32 2
  store i8 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.hi6220_mbox_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %16, align 1
  %17 = getelementptr i8, ptr %0, i32 44
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @mbox_send_message(ptr noundef %18, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  br label %23

20:                                               ; preds = %3
  %21 = getelementptr i8, ptr %0, i32 -4
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.hi6220_stub_clk_set_rate, i32 noundef %6) #8
  br label %23

23:                                               ; preds = %20, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
