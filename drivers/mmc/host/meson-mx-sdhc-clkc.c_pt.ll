; ModuleID = '/llk/IR/drivers/mmc/host/meson-mx-sdhc-clkc.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-mx-sdhc-clkc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
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
%struct.meson_mx_sdhc_clkc = type { %struct.clk_mux, %struct.clk_divider, %struct.clk_gate, %struct.clk_gate, %struct.clk_gate, %struct.clk_gate }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"src_sel\00", align 1
@meson_mx_sdhc_src_sel_parents = internal constant [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr null, i32 0 }], align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@meson_mx_sdhc_div_table = internal constant [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 33, i32 34 }, %struct.clk_div_table { i32 141, i32 142 }, %struct.clk_div_table { i32 849, i32 850 }, %struct.clk_div_table { i32 2125, i32 2126 }, %struct.clk_div_table { i32 4095, i32 4096 }, %struct.clk_div_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"mod_clk_on\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tx_clk_on\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"rx_clk_on\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sd_clk_on\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"clkin0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"clkin1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"clkin2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"clkin3\00", align 1
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_mx_sdhc_register_clkc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.clk_parent_data, align 4
  %7 = alloca %struct.clk_init_data, align 4
  %8 = alloca [32 x i8], align 1
  %9 = alloca %struct.clk_parent_data, align 4
  %10 = alloca %struct.clk_init_data, align 4
  %11 = alloca [32 x i8], align 1
  %12 = alloca %struct.clk_init_data, align 4
  %13 = alloca [32 x i8], align 1
  %14 = alloca %struct.clk_parent_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i32 16, i1 false)
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 156, i32 noundef 3520) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %128, label %17

17:                                               ; preds = %3
  %18 = getelementptr i8, ptr %1, i32 16
  %19 = getelementptr inbounds %struct.clk_mux, ptr %15, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_mux, ptr %15, i32 0, i32 3
  store i32 3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_mux, ptr %15, i32 0, i32 4
  store i8 16, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #5
  %22 = getelementptr inbounds i8, ptr %12, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %22, i8 0, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %13, i8 0, i32 32, i1 false) #5, !annotation !8
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load ptr, ptr %0, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi ptr [ %27, %26 ], [ %24, %17 ]
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %13, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %29, ptr noundef nonnull @.str) #5
  store ptr %13, ptr %12, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr @clk_mux_ops, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  store i32 4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 3
  store ptr @meson_mx_sdhc_src_sel_parents, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %12, ptr %35, align 4
  %36 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %128

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 1
  %40 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 1, i32 1
  store ptr %18, ptr %40, align 4
  %41 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 1, i32 2
  store i8 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 1, i32 3
  store i8 12, ptr %42, align 1
  %43 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 1, i32 5
  store ptr @meson_mx_sdhc_div_table, ptr %43, align 4
  store ptr %15, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #5
  %44 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %44, i8 0, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %11, i8 0, i32 32, i1 false) #5, !annotation !8
  %45 = load ptr, ptr %23, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load ptr, ptr %0, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi ptr [ %48, %47 ], [ %45, %38 ]
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %11, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %50, ptr noundef nonnull @.str.1) #5
  store ptr %11, ptr %10, align 4
  %52 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @clk_divider_ops, ptr %52, align 4
  %53 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 4, ptr %53, align 4
  %54 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 3
  store ptr %14, ptr %54, align 4
  %55 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 1, i32 0, i32 2
  store ptr %10, ptr %56, align 4
  %57 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef %39) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %128

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 2
  %61 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 2, i32 1
  store ptr %18, ptr %61, align 4
  %62 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 2, i32 2
  store i8 15, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  store ptr %39, ptr %9, align 4
  %63 = getelementptr inbounds %struct.clk_parent_data, ptr %9, i32 0, i32 1
  store ptr null, ptr %63, align 4
  %64 = getelementptr inbounds %struct.clk_parent_data, ptr %9, i32 0, i32 2
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.clk_parent_data, ptr %9, i32 0, i32 3
  store i32 0, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #5
  %66 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %66, i8 0, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %8, i8 0, i32 32, i1 false) #5, !annotation !8
  %67 = load ptr, ptr %23, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load ptr, ptr %0, align 4
  br label %71

71:                                               ; preds = %69, %59
  %72 = phi ptr [ %70, %69 ], [ %67, %59 ]
  %73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %72, ptr noundef nonnull @.str.2) #5
  store ptr %8, ptr %7, align 4
  %74 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @clk_gate_ops, ptr %74, align 4
  %75 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 4, ptr %75, align 4
  %76 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 3
  store ptr %9, ptr %76, align 4
  %77 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 2, i32 0, i32 2
  store ptr %7, ptr %78, align 4
  %79 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef %60) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 3
  %83 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 3, i32 1
  store ptr %18, ptr %83, align 4
  %84 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 3, i32 2
  store i8 14, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  store ptr %39, ptr %6, align 4
  %85 = getelementptr inbounds %struct.clk_parent_data, ptr %6, i32 0, i32 1
  store ptr null, ptr %85, align 4
  %86 = getelementptr inbounds %struct.clk_parent_data, ptr %6, i32 0, i32 2
  store ptr null, ptr %86, align 4
  %87 = getelementptr inbounds %struct.clk_parent_data, ptr %6, i32 0, i32 3
  store i32 0, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #5
  %88 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %88, i8 0, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #5, !annotation !8
  %89 = load ptr, ptr %23, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load ptr, ptr %0, align 4
  br label %93

93:                                               ; preds = %91, %81
  %94 = phi ptr [ %92, %91 ], [ %89, %81 ]
  %95 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %94, ptr noundef nonnull @.str.3) #5
  store ptr %5, ptr %4, align 4
  %96 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_gate_ops, ptr %96, align 4
  %97 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 4, ptr %97, align 4
  %98 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 3
  store ptr %6, ptr %98, align 4
  %99 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 3, i32 0, i32 2
  store ptr %4, ptr %100, align 4
  %101 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef %82) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 4
  %105 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 4, i32 1
  store ptr %18, ptr %105, align 4
  %106 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 4, i32 2
  store i8 13, ptr %106, align 4
  %107 = call fastcc i32 @meson_mx_sdhc_gate_clk_hw_register(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %39, ptr noundef %104)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 5
  %111 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 5, i32 1
  store ptr %18, ptr %111, align 4
  %112 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 5, i32 2
  store i8 12, ptr %112, align 4
  %113 = call fastcc i32 @meson_mx_sdhc_gate_clk_hw_register(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %39, ptr noundef %110)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 2, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 0, i32 1
  store ptr %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 5, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr %struct.clk_bulk_data, ptr %2, i32 1, i32 1
  store ptr %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 3, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr %struct.clk_bulk_data, ptr %2, i32 2, i32 1
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %15, i32 0, i32 4, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr %struct.clk_bulk_data, ptr %2, i32 3, i32 1
  store ptr %126, ptr %127, align 4
  br label %128

128:                                              ; preds = %115, %109, %103, %93, %71, %49, %28, %3
  %129 = phi i32 [ 0, %115 ], [ -12, %3 ], [ %36, %28 ], [ %57, %49 ], [ %79, %71 ], [ %101, %93 ], [ %107, %103 ], [ %113, %109 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #5
  ret i32 %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_mx_sdhc_gate_clk_hw_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca [32 x i8], align 1
  %7 = alloca %struct.clk_parent_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.clk_parent_data, ptr %7, i32 0, i32 1
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.clk_parent_data, ptr %7, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_parent_data, ptr %7, i32 0, i32 3
  store i32 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #5
  %11 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #5, !annotation !8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi ptr [ %16, %15 ], [ %13, %4 ]
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %18, ptr noundef %1) #5
  store ptr %6, ptr %5, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @clk_gate_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 3
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 2
  store ptr %5, ptr %24, align 4
  %25 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef %3) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
