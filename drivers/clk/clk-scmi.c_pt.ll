; ModuleID = '/llk/IR/drivers/clk/clk-scmi.c_pt.bc'
source_filename = "../drivers/clk/clk-scmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.scmi_clk_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_clk = type { i32, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.scmi_clock_info = type { [16 x i8], i8, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, [16 x i64] }

@__initcall__kmod_clk_scmi__162_213_scmi_clocks_driver_init6 = internal global ptr @scmi_clocks_driver_init, section ".initcall6.init", align 4
@scmi_clocks_driver = internal global %struct.scmi_driver { ptr @.str.1, ptr @scmi_clocks_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, align 4
@__exitcall_scmi_clocks_driver_exit = internal global ptr @scmi_clocks_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [52 x i8] c"clk_scmi.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [43 x i8] c"clk_scmi.description=ARM SCMI clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [35 x i8] c"clk_scmi.file=drivers/clk/clk-scmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [24 x i8] c"clk_scmi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"clk_scmi\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"scmi-clocks\00", align 1
@scmi_id_table = internal constant [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 20, ptr @.str.4 }, %struct.scmi_device_id zeroinitializer], align 4
@scmi_proto_clk_ops = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%pOFn: invalid clock output count\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to register clock %d\0A\00", align 1
@scmi_clk_ops = internal constant %struct.clk_ops { ptr @scmi_clk_enable, ptr @scmi_clk_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_clk_recalc_rate, ptr @scmi_clk_round_rate, ptr null, ptr null, ptr null, ptr @scmi_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_scmi_clocks_driver_exit, ptr @__initcall__kmod_clk_scmi__162_213_scmi_clocks_driver_init6, ptr @scmi_clocks_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scmi_clocks_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_clocks_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_clocks_driver_exit() #0 section ".exit.text" {
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_clocks_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clocks_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.scmi_handle, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = call ptr %12(ptr noundef %0, i8 noundef zeroext 20, ptr noundef nonnull %3) #8
  store ptr %13, ptr @scmi_proto_clk_ops, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  br label %91

17:                                               ; preds = %10
  %18 = load ptr, ptr %13, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = call i32 %18(ptr noundef %19) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %6) #9
  br label %91

23:                                               ; preds = %17
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #8
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %27 = call i32 @llvm.uadd.sat.i32(i32 %26, i32 4) #8
  %28 = select i1 %25, i32 -1, i32 %27
  %29 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %28, i32 noundef 3520) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %91, label %31

31:                                               ; preds = %23
  store i32 %20, ptr %29, align 4
  %32 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %29, i32 0, i32 1
  %33 = icmp eq i32 %20, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %2, i32 20
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  br label %39

39:                                               ; preds = %86, %34
  %40 = phi i32 [ 0, %34 ], [ %87, %86 ]
  %41 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %91, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %45 = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = call ptr %46(ptr noundef %47, i32 noundef %40) #8
  %49 = getelementptr inbounds %struct.scmi_clk, ptr %41, i32 0, i32 2
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %86, label %51

51:                                               ; preds = %43
  store i32 %40, ptr %41, align 4
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.scmi_clk, ptr %41, i32 0, i32 3
  store ptr %52, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  store i32 0, ptr %35, align 4, !annotation !8
  store ptr %48, ptr %2, align 4
  store ptr @scmi_clk_ops, ptr %36, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %37, i8 0, i64 13, i1 false) #8
  store i32 64, ptr %38, align 4
  %54 = getelementptr inbounds %struct.scmi_clk, ptr %41, i32 0, i32 1
  %55 = getelementptr inbounds %struct.scmi_clk, ptr %41, i32 0, i32 1, i32 2
  store ptr %2, ptr %55, align 4
  %56 = call i32 @devm_clk_hw_register(ptr noundef %4, ptr noundef %54) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %51
  %59 = load ptr, ptr %49, align 4
  %60 = getelementptr inbounds %struct.scmi_clock_info, ptr %59, i32 0, i32 1
  %61 = load i8, ptr %60, align 8, !range !9
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.scmi_clock_info, ptr %59, i32 0, i32 2
  br i1 %62, label %73, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %63, align 8
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.scmi_clock_info, ptr %59, i32 0, i32 2, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = add nsw i32 %65, -1
  %72 = getelementptr %struct.scmi_clock_info, ptr %59, i32 0, i32 2, i32 0, i32 1, i32 %71
  br label %78

73:                                               ; preds = %58
  %74 = load i64, ptr %63, align 8
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.scmi_clock_info, ptr %59, i32 0, i32 2, i32 0, i32 1
  br label %78

77:                                               ; preds = %64, %51
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %40) #9
  call void @devm_kfree(ptr noundef %4, ptr noundef nonnull %41) #8
  br label %83

78:                                               ; preds = %73, %67
  %79 = phi ptr [ %72, %67 ], [ %76, %73 ]
  %80 = phi i32 [ %70, %67 ], [ %75, %73 ]
  %81 = load i64, ptr %79, align 8
  %82 = trunc i64 %81 to i32
  call void @clk_hw_set_rate_range(ptr noundef %54, i32 noundef %80, i32 noundef %82) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  br label %83

83:                                               ; preds = %78, %77
  %84 = phi ptr [ %54, %78 ], [ null, %77 ]
  %85 = getelementptr ptr, ptr %32, i32 %40
  store ptr %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %83, %43
  %87 = add nuw nsw i32 %40, 1
  %88 = icmp eq i32 %87, %20
  br i1 %88, label %89, label %39

89:                                               ; preds = %86, %31
  %90 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %4, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %29) #8
  br label %91

91:                                               ; preds = %89, %39, %23, %22, %15, %1
  %92 = phi i32 [ %16, %15 ], [ -22, %22 ], [ %90, %89 ], [ -19, %1 ], [ -12, %23 ], [ -12, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %92
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clk_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %4 = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = tail call i32 %5(ptr noundef %7, i32 noundef %8) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_clk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %4 = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = tail call i32 %5(ptr noundef %7, i32 noundef %8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %6 = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 %7(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  %13 = load i64, ptr %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = select i1 %12, i32 %14, i32 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @scmi_clk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_clock_info, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 8, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.scmi_clock_info, ptr %5, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.scmi_clock_info, ptr %5, i32 0, i32 2, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = zext i32 %1 to i64
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = trunc i64 %11 to i32
  br label %42

18:                                               ; preds = %9
  %19 = icmp ugt i64 %13, %14
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = trunc i64 %13 to i32
  br label %42

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.scmi_clock_info, ptr %5, i32 0, i32 2, i32 0, i32 1, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = xor i64 %11, -1
  %26 = add i64 %25, %14
  %27 = add i64 %26, %24
  %28 = trunc i64 %24 to i32
  %29 = icmp ult i64 %27, 4294967296
  br i1 %29, label %30, label %34, !prof !10

30:                                               ; preds = %22
  %31 = trunc i64 %27 to i32
  %32 = udiv i32 %31, %28
  %33 = zext i32 %32 to i64
  br label %37

34:                                               ; preds = %22
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %27) #10, !srcloc !11
  %36 = extractvalue { i64, i64 } %35, 1
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %33, %30 ], [ %36, %34 ]
  %39 = mul i64 %38, %24
  %40 = add i64 %39, %11
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %37, %20, %16, %3
  %43 = phi i32 [ %17, %16 ], [ %21, %20 ], [ %41, %37 ], [ %1, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %6 = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = zext i32 %1 to i64
  %12 = tail call i32 %7(ptr noundef %9, i32 noundef %10, i64 noundef %11) #8
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148656516, i64 2148656796, i64 2148657130, i64 2148657464}
