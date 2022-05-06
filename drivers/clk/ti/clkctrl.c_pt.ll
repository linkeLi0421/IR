; ModuleID = '/llk/IR/drivers/clk/ti/clkctrl.c_pt.bc'
source_filename = "../drivers/clk/ti/clkctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_clk_is_in_standby:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_clk_is_in_standby\22\09\09\09\09\09"
module asm "__kstrtabns_ti_clk_is_in_standby:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.omap_clkctrl_provider = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.omap_clkctrl_clk = type { ptr, i16, i32, %struct.list_head }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_omap_divider = type { %struct.clk_hw, %struct.clk_omap_reg, i8, i8, i8, i16, i16, i16, ptr, i32 }
%struct.omap_clkctrl_div_data = type { ptr, i32, i32 }
%struct.clk_omap_mux = type { %struct.clk_hw, %struct.clk_omap_reg, ptr, i32, i8, i8, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_clkctrl__160_135__omap4_disable_early_timeout3 = internal global ptr @_omap4_disable_early_timeout, section ".initcall3.init", align 4
@__of_table_ti_omap4_clkctrl_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @_ti_omap4_clkctrl_setup }, section "__clk_of_table", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ti_clk_is_in_standby = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_clk_is_in_standby = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_clk_is_in_standby = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_clk_is_in_standby to i32), ptr @__kstrtab_ti_clk_is_in_standby, ptr @__kstrtabns_ti_clk_is_in_standby }, section "___ksymtab_gpl+ti_clk_is_in_standby", align 4
@_early_timeout = internal unnamed_addr global i1 false, align 1
@default_clkctrl_data = internal unnamed_addr constant [1 x %struct.omap_clkctrl_data] zeroinitializer, section ".init.rodata", align 4
@.str = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@ti_clk_features = external dso_local local_unnamed_addr global %struct.ti_clk_features, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ti,omap4\00", align 1
@omap4_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ti,omap5\00", align 1
@omap5_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ti,dra7\00", align 1
@dra7_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@dra7_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"ti,dra72\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ti,dra74\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ti,dra76\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ti,am33xx\00", align 1
@am3_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@am3_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"ti,am4372\00", align 1
@am4_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@am4_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"ti,am438x\00", align 1
@am438x_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@am438x_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"ti,dm814\00", align 1
@dm814_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"ti,dm816\00", align 1
@dm816_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"\013%pOF not found from clkctrl data.\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%s_clkdm\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%pOFnxxx\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"clkdm\00", align 1
@omap4_clkctrl_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @_omap4_clkctrl_clk_enable, ptr @_omap4_clkctrl_clk_disable, ptr @_omap4_clkctrl_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"ti,clkctrl-\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\013%s: bad subclk type: %d\0A\00", align 1
@__func__._ti_clkctrl_setup_subclks = private unnamed_addr constant [26 x i8] c"_ti_clkctrl_setup_subclks\00", align 1
@omap_gate_clk_ops = external dso_local constant %struct.clk_ops, align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"\013%s: Data parsing for %pOF:%04x:%d failed\0A\00", align 1
@__func__._ti_clkctrl_setup_div = private unnamed_addr constant [22 x i8] c"_ti_clkctrl_setup_div\00", align 1
@ti_clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@ti_clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"%s-clkctrl:%04x:%d\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"%s_cm:clk:%04x:%d\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"%pOFn:clk:%04x:%d\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"%pOFn:%04x:%d\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"drivers/clk/ti/clkctrl.c\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", align 1
@__func__._omap4_clkctrl_clk_enable = private unnamed_addr constant [26 x i8] c"_omap4_clkctrl_clk_enable\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"\013%s: failed to enable\0A\00", align 1
@timekeeping_suspended = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = private unnamed_addr constant [25 x i8] c"\013%s: failed to disable\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_clkctrl__160_135__omap4_disable_early_timeout3, ptr @__ksymtab_ti_clk_is_in_standby, ptr @__of_table_ti_omap4_clkctrl_clock], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @_omap4_disable_early_timeout() #0 section ".init.text" {
  store i1 true, ptr @_early_timeout, align 1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @_ti_omap4_clkctrl_setup(ptr noundef %0) #1 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %3 = tail call ptr @ti_clk_get_features() #12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @of_node_name_eq(ptr noundef %0, ptr noundef nonnull @.str) #12
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i32, ptr @ti_clk_features, align 4
  %11 = or i32 %10, 16
  store i32 %11, ptr @ti_clk_features, align 4
  br label %12

12:                                               ; preds = %9, %7, %1
  %13 = tail call ptr @__of_get_address(ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #12
  %14 = tail call i64 @of_translate_address(ptr noundef %0, ptr noundef %13) #12
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #12
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @default_clkctrl_data, ptr @omap4_clkctrl_data
  %19 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #12
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr %18, ptr @omap5_clkctrl_data
  %22 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = tail call ptr @ti_clk_get_features() #12
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @dra7_clkctrl_data, ptr @dra7_clkctrl_compat_data
  br label %30

30:                                               ; preds = %24, %12
  %31 = phi ptr [ %21, %12 ], [ %29, %24 ]
  %32 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #12
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i16 0, i16 512
  %35 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #12
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i16 %34, i16 1024
  %38 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #12
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i16 %37, i16 2048
  %41 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %30
  %44 = tail call ptr @ti_clk_get_features() #12
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr @am3_clkctrl_data, ptr @am3_clkctrl_compat_data
  br label %49

49:                                               ; preds = %43, %30
  %50 = phi ptr [ %31, %30 ], [ %48, %43 ]
  %51 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @ti_clk_get_features() #12
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr @am4_clkctrl_data, ptr @am4_clkctrl_compat_data
  br label %59

59:                                               ; preds = %53, %49
  %60 = phi ptr [ %50, %49 ], [ %58, %53 ]
  %61 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @ti_clk_get_features() #12
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, ptr @am438x_clkctrl_data, ptr @am438x_clkctrl_compat_data
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi ptr [ %60, %59 ], [ %68, %63 ]
  %71 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #12
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr %70, ptr @dm814_clkctrl_data
  %74 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #12
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr %73, ptr @dm816_clkctrl_data
  %77 = tail call ptr @ti_clk_get_features() #12
  %78 = load i32, ptr %77, align 4
  %79 = trunc i32 %78 to i16
  %80 = shl i16 %79, 3
  %81 = and i16 %80, 256
  br label %82

82:                                               ; preds = %82, %69
  %83 = phi ptr [ %76, %69 ], [ %88, %82 ]
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = icmp eq i32 %84, %15
  %87 = select i1 %85, i1 true, i1 %86
  %88 = getelementptr %struct.omap_clkctrl_data, ptr %83, i32 1
  br i1 %87, label %89, label %82

89:                                               ; preds = %82
  %90 = or i16 %81, %40
  br i1 %85, label %91, label %93

91:                                               ; preds = %89
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %0) #13
  br label %244

93:                                               ; preds = %89
  %94 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %95 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 16) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %244, label %97

97:                                               ; preds = %93
  %98 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #12
  store ptr %98, ptr %95, align 8
  %99 = tail call ptr @ti_clk_get_features() #12
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 16
  %102 = icmp ne i32 %101, 0
  %103 = tail call fastcc ptr @clkctrl_get_name(ptr noundef %0) #15
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef nonnull %103) #12
  %107 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %95, i32 0, i32 2
  store ptr %106, ptr %107, align 4
  br label %135

108:                                              ; preds = %97
  br i1 %102, label %109, label %116

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.14, ptr noundef %111) #12
  %113 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %95, i32 0, i32 2
  store ptr %112, ptr %113, align 4
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  tail call void @kfree(ptr noundef nonnull %95) #12
  br label %244

116:                                              ; preds = %108
  %117 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %0) #12
  %118 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %95, i32 0, i32 2
  store ptr %117, ptr %118, align 4
  %119 = icmp eq ptr %117, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  tail call void @kfree(ptr noundef nonnull %95) #12
  br label %244

121:                                              ; preds = %116, %109
  %122 = phi ptr [ %112, %109 ], [ %117, %116 ]
  %123 = phi i32 [ -2, %109 ], [ -7, %116 ]
  %124 = tail call i32 @strlen(ptr noundef nonnull %122)
  %125 = add i32 %124, %123
  %126 = getelementptr i8, ptr %122, i32 %125
  store i8 0, ptr %126, align 1
  %127 = tail call i32 @strlen(ptr nonnull %122)
  %128 = getelementptr i8, ptr %122, i32 %127
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %128, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i32 6, i1 false)
  br label %129

129:                                              ; preds = %133, %121
  %130 = phi ptr [ %122, %121 ], [ %134, %133 ]
  %131 = load i8, ptr %130, align 1
  switch i8 %131, label %133 [
    i8 0, label %135
    i8 45, label %132
  ]

132:                                              ; preds = %129
  store i8 95, ptr %130, align 1
  br label %133

133:                                              ; preds = %132, %129
  %134 = getelementptr i8, ptr %130, i32 1
  br label %129

135:                                              ; preds = %129, %105
  %136 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %95, i32 0, i32 1
  store volatile ptr %136, ptr %136, align 4
  %137 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %95, i32 0, i32 1, i32 1
  store ptr %136, ptr %137, align 8
  %138 = getelementptr inbounds %struct.omap_clkctrl_data, ptr %83, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %235, label %143

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %95, i32 0, i32 2
  %145 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %146 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  %147 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %148 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  br label %149

149:                                              ; preds = %224, %143
  %150 = phi ptr [ null, %143 ], [ %215, %224 ]
  %151 = phi ptr [ %139, %143 ], [ %231, %224 ]
  br label %152

152:                                              ; preds = %161, %149
  %153 = phi ptr [ %151, %149 ], [ %162, %161 ]
  %154 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %153, i32 0, i32 2
  %155 = load i16, ptr %154, align 4
  %156 = and i16 %155, 3840
  %157 = icmp ne i16 %156, 0
  %158 = and i16 %155, %90
  %159 = icmp eq i16 %158, 0
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = getelementptr %struct.omap_clkctrl_reg_data, ptr %153, i32 1
  %163 = getelementptr %struct.omap_clkctrl_reg_data, ptr %153, i32 1, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %235, label %152

166:                                              ; preds = %152
  %167 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %153, i32 0, i32 2
  %168 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %153, i32 0, i32 3
  %169 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %170 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %169, i32 noundef 3520, i32 noundef 76) #14
  %171 = icmp eq ptr %170, null
  br i1 %171, label %244, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %95, align 8
  %174 = load i16, ptr %153, align 4
  %175 = zext i16 %174 to i32
  %176 = getelementptr i8, ptr %173, i32 %175
  %177 = getelementptr inbounds %struct.clk_hw_omap, ptr %170, i32 0, i32 4
  store ptr %176, ptr %177, align 4
  call fastcc void @_ti_clkctrl_setup_subclks(ptr noundef nonnull %95, ptr noundef %0, ptr noundef %153, ptr noundef %176, ptr noundef %103) #15
  %178 = load i16, ptr %167, align 4
  %179 = and i16 %178, 32
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.clk_hw_omap, ptr %170, i32 0, i32 5
  store i8 2, ptr %182, align 4
  %183 = load i16, ptr %167, align 4
  br label %184

184:                                              ; preds = %181, %172
  %185 = phi i16 [ %183, %181 ], [ %178, %172 ]
  %186 = and i16 %185, 64
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.clk_hw_omap, ptr %170, i32 0, i32 5
  store i8 1, ptr %189, align 4
  %190 = load i16, ptr %167, align 4
  br label %191

191:                                              ; preds = %188, %184
  %192 = phi i16 [ %190, %188 ], [ %185, %184 ]
  %193 = and i16 %192, 128
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.clk_hw_omap, ptr %170, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %196) #12
  br label %197

197:                                              ; preds = %195, %191
  %198 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %153, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load ptr, ptr %144, align 4
  br label %203

203:                                              ; preds = %201, %197
  %204 = phi ptr [ %202, %201 ], [ %199, %197 ]
  %205 = getelementptr inbounds %struct.clk_hw_omap, ptr %170, i32 0, i32 9
  store ptr %204, ptr %205, align 8
  store ptr %168, ptr %145, align 4
  store i8 1, ptr %146, align 4
  store i32 0, ptr %147, align 4
  %206 = load i16, ptr %167, align 4
  %207 = and i16 %206, 4
  %208 = zext i16 %207 to i32
  store i32 %208, ptr %147, align 4
  %209 = load i16, ptr %153, align 4
  %210 = zext i16 %209 to i32
  %211 = call fastcc ptr @clkctrl_get_clock_name(ptr noundef %0, ptr noundef %103, i32 noundef %210, i32 noundef 0, i1 noundef zeroext %102) #15
  store ptr %211, ptr %2, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %241, label %213

213:                                              ; preds = %203
  %214 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %215 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %214, i32 noundef 3520, i32 noundef 20) #14
  %216 = icmp eq ptr %215, null
  br i1 %216, label %241, label %217

217:                                              ; preds = %213
  store ptr @omap4_clkctrl_clk_ops, ptr %148, align 4
  %218 = getelementptr inbounds %struct.clk_hw, ptr %170, i32 0, i32 2
  store ptr %2, ptr %218, align 8
  %219 = load ptr, ptr %2, align 4
  %220 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %170, ptr noundef %219) #12
  %221 = icmp eq ptr %220, null
  %222 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  %223 = or i1 %221, %222
  br i1 %223, label %241, label %224

224:                                              ; preds = %217
  %225 = load i16, ptr %153, align 4
  %226 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %215, i32 0, i32 1
  store i16 %225, ptr %226, align 4
  store ptr %170, ptr %215, align 8
  %227 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %215, i32 0, i32 3
  %228 = load ptr, ptr %136, align 4
  %229 = getelementptr inbounds %struct.list_head, ptr %228, i32 0, i32 1
  store ptr %227, ptr %229, align 4
  store ptr %228, ptr %227, align 4
  %230 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %215, i32 0, i32 3, i32 1
  store ptr %136, ptr %230, align 8
  store volatile ptr %227, ptr %136, align 4
  %231 = getelementptr %struct.omap_clkctrl_reg_data, ptr %153, i32 1
  %232 = getelementptr %struct.omap_clkctrl_reg_data, ptr %153, i32 1, i32 3
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %149

235:                                              ; preds = %224, %161, %135
  %236 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @_ti_omap4_clkctrl_xlate, ptr noundef nonnull %95) #12
  %237 = icmp eq i32 %236, -517
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i32 @ti_clk_retry_init(ptr noundef %0, ptr noundef nonnull %95, ptr noundef nonnull @_clkctrl_add_provider) #12
  br label %240

240:                                              ; preds = %238, %235
  call void @kfree(ptr noundef %103) #12
  br label %244

241:                                              ; preds = %217, %213, %203
  %242 = phi ptr [ %215, %217 ], [ null, %213 ], [ %150, %203 ]
  call void @kfree(ptr noundef nonnull %170) #12
  %243 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %243) #12
  call void @kfree(ptr noundef %103) #12
  call void @kfree(ptr noundef %242) #12
  br label %244

244:                                              ; preds = %241, %240, %166, %120, %115, %93, %91
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ti_clk_is_in_standby(ptr noundef %0) #2 {
  %2 = tail call ptr @__clk_get_hw(ptr noundef %0) #12
  %3 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %2) #12
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_hw_omap, ptr %2, i32 0, i32 4
  %8 = tail call i32 %6(ptr noundef %7) #12
  %9 = and i32 %8, 262144
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %4, %1
  %12 = phi i1 [ false, %1 ], [ %10, %4 ]
  ret i1 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @clkctrl_get_name(ptr noundef %0) unnamed_addr #1 section ".init.text" {
  %2 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef null) #12
  %3 = tail call ptr @of_prop_next_string(ptr noundef %2, ptr noundef null) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.18, ptr noundef nonnull %6, i32 noundef 11)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %6, i32 11
  %11 = tail call i32 @strnlen(ptr noundef %10, i32 noundef 16)
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %10) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @strreplace(ptr noundef nonnull %14, i8 noundef zeroext 45, i8 noundef zeroext 95) #12
  br label %21

18:                                               ; preds = %13, %9, %5
  %19 = tail call ptr @of_prop_next_string(ptr noundef %2, ptr noundef nonnull %6) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5

21:                                               ; preds = %18, %16, %1
  %22 = phi ptr [ %14, %16 ], [ null, %1 ], [ null, %18 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_subclks(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 section ".init.text" {
  %6 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %7, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %25, %9
  %13 = phi ptr [ %26, %25 ], [ %7, %9 ]
  %14 = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  switch i8 %15, label %22 [
    i8 5, label %16
    i8 2, label %18
    i8 1, label %20
  ]

16:                                               ; preds = %12
  %17 = load i16, ptr %2, align 4
  tail call fastcc void @_ti_clkctrl_setup_gate(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %17, ptr noundef %13, ptr noundef %3, ptr noundef %4) #15
  br label %25

18:                                               ; preds = %12
  %19 = load i16, ptr %2, align 4
  tail call fastcc void @_ti_clkctrl_setup_div(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %19, ptr noundef %13, ptr noundef %3, ptr noundef %4) #15
  br label %25

20:                                               ; preds = %12
  %21 = load i16, ptr %2, align 4
  tail call fastcc void @_ti_clkctrl_setup_mux(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %21, ptr noundef %13, ptr noundef %3, ptr noundef %4) #15
  br label %25

22:                                               ; preds = %12
  %23 = zext i8 %15 to i32
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._ti_clkctrl_setup_subclks, i32 noundef %23) #13
  br label %29

25:                                               ; preds = %20, %18, %16
  %26 = getelementptr %struct.omap_clkctrl_bit_data, ptr %13, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %12

29:                                               ; preds = %25, %22, %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @clkctrl_get_clock_name(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 section ".init.text" {
  %6 = icmp eq ptr %1, null
  %7 = or i1 %6, %4
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #12
  %10 = tail call ptr @strreplace(ptr noundef %9, i8 noundef zeroext 95, i8 noundef zeroext 45) #12
  br label %21

11:                                               ; preds = %5
  br i1 %6, label %14, label %12

12:                                               ; preds = %11
  %13 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #12
  br label %21

14:                                               ; preds = %11
  br i1 %4, label %15, label %19

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %17, i32 noundef %2, i32 noundef %3) #12
  br label %21

19:                                               ; preds = %14
  %20 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.25, ptr noundef %0, i32 noundef %2, i32 noundef %3) #12
  br label %21

21:                                               ; preds = %19, %15, %12, %8
  %22 = phi ptr [ %13, %12 ], [ %18, %15 ], [ %20, %19 ], [ %9, %8 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @_ti_omap4_clkctrl_xlate(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  br label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %8, %10 ], [ %26, %25 ]
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %15, i32 -4
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %13, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %14
  %26 = load ptr, ptr %15, align 4
  %27 = icmp eq ptr %26, %7
  br i1 %27, label %31, label %14

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %15, i32 -12
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %25, %6, %2
  %32 = phi ptr [ %30, %28 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %25 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @_clkctrl_add_provider(ptr noundef %0, ptr noundef %1) #1 section ".init.text" {
  %3 = tail call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @_ti_omap4_clkctrl_xlate, ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_gate(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 section ".init.text" {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 76) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %3, align 4
  %12 = getelementptr inbounds %struct.clk_hw_omap, ptr %8, i32 0, i32 5
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_hw_omap, ptr %8, i32 0, i32 4
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i16 noundef zeroext %2, i8 noundef zeroext %11, ptr noundef %15, i32 noundef 1, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef %5) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #12
  br label %19

19:                                               ; preds = %18, %10, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_div(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 section ".init.text" {
  %7 = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.clk_omap_divider, ptr %10, i32 0, i32 1
  store ptr %4, ptr %13, align 4
  %14 = load i8, ptr %3, align 4
  %15 = getelementptr inbounds %struct.clk_omap_divider, ptr %10, i32 0, i32 2
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.omap_clkctrl_div_data, ptr %8, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.clk_omap_divider, ptr %10, i32 0, i32 3
  store i8 %18, ptr %19, align 1
  %20 = lshr i8 %18, 1
  %21 = and i8 %20, 1
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.omap_clkctrl_div_data, ptr %8, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @ti_clk_parse_divider_data(ptr noundef %22, i32 noundef 0, i32 noundef %24, i8 noundef zeroext %21, ptr noundef nonnull %10) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %12
  %28 = zext i16 %2 to i32
  %29 = load i8, ptr %3, align 4
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__._ti_clkctrl_setup_div, ptr noundef %1, i32 noundef %28, i32 noundef %30) #13
  br label %38

32:                                               ; preds = %12
  %33 = load i8, ptr %3, align 4
  %34 = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %3, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i16 noundef zeroext %2, i8 noundef zeroext %33, ptr noundef %35, i32 noundef 1, ptr noundef nonnull @ti_clk_divider_ops, ptr noundef %5) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %27
  tail call void @kfree(ptr noundef nonnull %10) #12
  br label %39

39:                                               ; preds = %38, %32, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_mux(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 section ".init.text" {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %19, %15 ], [ %12, %10 ]
  %17 = phi i32 [ %18, %15 ], [ 0, %10 ]
  %18 = add i32 %17, 1
  %19 = getelementptr ptr, ptr %16, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15

22:                                               ; preds = %15, %10
  %23 = phi i32 [ 0, %10 ], [ %18, %15 ]
  %24 = getelementptr inbounds %struct.clk_omap_mux, ptr %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.clk_omap_mux, ptr %8, i32 0, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 1
  %28 = add nsw i8 %27, -1
  %29 = sext i8 %28 to i32
  %30 = add i32 %23, %29
  %31 = icmp eq i32 %30, 0
  %32 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 false) #12, !range !8
  %33 = sub nuw nsw i32 32, %32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = select i1 %31, i32 0, i32 %35
  store i32 %36, ptr %24, align 8
  %37 = load i8, ptr %3, align 4
  %38 = getelementptr inbounds %struct.clk_omap_mux, ptr %8, i32 0, i32 4
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_omap_mux, ptr %8, i32 0, i32 1
  store ptr %4, ptr %39, align 4
  %40 = tail call fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i16 noundef zeroext %2, i8 noundef zeroext %37, ptr noundef %12, i32 noundef %23, ptr noundef nonnull @ti_clk_mux_ops, ptr noundef %5) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %22
  tail call void @kfree(ptr noundef nonnull %8) #12
  br label %43

43:                                               ; preds = %42, %22, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 section ".init.text" {
  %10 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #12
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 24, i1 false)
  %12 = zext i16 %3 to i32
  %13 = zext i8 %4 to i32
  %14 = tail call ptr @ti_clk_get_features() #12
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16
  %17 = icmp ne i32 %16, 0
  %18 = tail call fastcc ptr @clkctrl_get_clock_name(ptr noundef %1, ptr noundef %8, i32 noundef %12, i32 noundef %13, i1 noundef zeroext %17) #15
  store ptr %18, ptr %10, align 4
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 20) #14
  %21 = icmp ne ptr %18, null
  %22 = icmp ne ptr %20, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %45

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.clk_hw, ptr %2, i32 0, i32 2
  store ptr %10, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %5, ptr %26, align 4
  %27 = trunc i32 %6 to i8
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 0, ptr %30, align 4
  %31 = call ptr @ti_clk_register(ptr noundef null, ptr noundef %2, ptr noundef nonnull %18) #12
  %32 = icmp eq ptr %31, null
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load ptr, ptr %10, align 4
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %20, i32 0, i32 1
  store i16 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %20, i32 0, i32 2
  store i32 %13, ptr %39, align 8
  store ptr %2, ptr %20, align 8
  %40 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %20, i32 0, i32 3
  %41 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %42, ptr %40, align 4
  %44 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %20, i32 0, i32 3, i32 1
  store ptr %41, ptr %44, align 8
  store volatile ptr %40, ptr %41, align 4
  br label %48

45:                                               ; preds = %35, %9
  %46 = phi ptr [ %18, %9 ], [ %36, %35 ]
  %47 = phi i32 [ -12, %9 ], [ -22, %35 ]
  call void @kfree(ptr noundef %46) #12
  call void @kfree(ptr noundef %20) #12
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i32 [ %47, %45 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #12
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_parse_divider_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_clkctrl_clk_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @ti_clk_ll_ops, align 4
  %7 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %8(ptr noundef nonnull %3, ptr noundef %10) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @clk_hw_get_name(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 150, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__._omap4_clkctrl_clk_enable, ptr noundef %14, ptr noundef %16, i32 noundef %11) #12
  br label %92

17:                                               ; preds = %5, %1
  %18 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %92, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @ti_clk_ll_ops, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %25 = tail call i32 %23(ptr noundef %24) #12
  %26 = and i32 %25, -4
  %27 = load i8, ptr %18, align 4
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(i32 noundef %29, ptr noundef %24) #12
  %33 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %21
  %38 = load ptr, ptr @ti_clk_ll_ops, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %24) #12
  %41 = and i32 %40, 65536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %92, label %43

43:                                               ; preds = %81, %37
  %44 = phi i32 [ %83, %81 ], [ 0, %37 ]
  %45 = phi i32 [ %82, %81 ], [ 0, %37 ]
  %46 = load i1, ptr @_early_timeout, align 1
  %47 = xor i1 %46, true
  %48 = load i32, ptr @timekeeping_suspended, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49, !prof !9
  br i1 %50, label %51, label %56, !prof !9

51:                                               ; preds = %43
  %52 = icmp ult i32 %44, 2000
  br i1 %52, label %53, label %89

53:                                               ; preds = %51
  %54 = add nuw nsw i32 %44, 1
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 429496) #12
  br label %81

56:                                               ; preds = %43
  %57 = zext i32 %45 to i64
  %58 = shl nuw i64 %57, 32
  %59 = zext i32 %44 to i64
  %60 = or i64 %58, %59
  %61 = icmp eq i64 %60, 0
  %62 = tail call i64 @ktime_get() #12
  br i1 %61, label %63, label %67

63:                                               ; preds = %56
  %64 = trunc i64 %62 to i32
  %65 = lshr i64 %62, 32
  %66 = trunc i64 %65 to i32
  br label %81

67:                                               ; preds = %56
  %68 = sub i64 %62, %60
  %69 = tail call i64 @llvm.abs.i64(i64 %68, i1 false) #12
  %70 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %69, i32 0) #16, !srcloc !10
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = extractvalue { i64, i32 } %70, 1
  %73 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %69, i64 %71, i32 %72) #16, !srcloc !11
  %74 = extractvalue { i64, i32 } %73, 0
  %75 = icmp slt i64 %68, 0
  %76 = lshr i64 %74, 9
  %77 = sub nsw i64 0, %76
  %78 = select i1 %75, i64 %77, i64 %76
  %79 = icmp slt i64 %78, 2000
  br i1 %79, label %80, label %89

80:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !13
  br label %81

81:                                               ; preds = %80, %63, %53
  %82 = phi i32 [ %45, %53 ], [ %66, %63 ], [ %45, %80 ]
  %83 = phi i32 [ %54, %53 ], [ %64, %63 ], [ %44, %80 ]
  %84 = load ptr, ptr @ti_clk_ll_ops, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %85(ptr noundef %24) #12
  %87 = and i32 %86, 65536
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %43

89:                                               ; preds = %67, %51
  %90 = tail call ptr @clk_hw_get_name(ptr noundef %0) #12
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %90) #13
  br label %92

92:                                               ; preds = %89, %81, %37, %21, %17, %13
  %93 = phi i32 [ %11, %13 ], [ -16, %89 ], [ 0, %17 ], [ 0, %21 ], [ 0, %37 ], [ 0, %81 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_omap4_clkctrl_clk_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @ti_clk_ll_ops, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %9 = tail call i32 %7(ptr noundef %8) #12
  %10 = and i32 %9, -4
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %13(i32 noundef %10, ptr noundef %8) #12
  %14 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %5
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %8) #12
  %22 = and i32 %21, 196608
  %23 = icmp eq i32 %22, 196608
  br i1 %23, label %73, label %24

24:                                               ; preds = %62, %18
  %25 = phi i32 [ %64, %62 ], [ 0, %18 ]
  %26 = phi i32 [ %63, %62 ], [ 0, %18 ]
  %27 = load i1, ptr @_early_timeout, align 1
  %28 = xor i1 %27, true
  %29 = load i32, ptr @timekeeping_suspended, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30, !prof !9
  br i1 %31, label %32, label %37, !prof !9

32:                                               ; preds = %24
  %33 = icmp ult i32 %25, 5000
  br i1 %33, label %34, label %70

34:                                               ; preds = %32
  %35 = add nuw nsw i32 %25, 1
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 429496) #12
  br label %62

37:                                               ; preds = %24
  %38 = zext i32 %26 to i64
  %39 = shl nuw i64 %38, 32
  %40 = zext i32 %25 to i64
  %41 = or i64 %39, %40
  %42 = icmp eq i64 %41, 0
  %43 = tail call i64 @ktime_get() #12
  br i1 %42, label %44, label %48

44:                                               ; preds = %37
  %45 = trunc i64 %43 to i32
  %46 = lshr i64 %43, 32
  %47 = trunc i64 %46 to i32
  br label %62

48:                                               ; preds = %37
  %49 = sub i64 %43, %41
  %50 = tail call i64 @llvm.abs.i64(i64 %49, i1 false) #12
  %51 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %50, i32 0) #16, !srcloc !10
  %52 = extractvalue { i64, i32 } %51, 0
  %53 = extractvalue { i64, i32 } %51, 1
  %54 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %50, i64 %52, i32 %53) #16, !srcloc !11
  %55 = extractvalue { i64, i32 } %54, 0
  %56 = icmp slt i64 %49, 0
  %57 = lshr i64 %55, 9
  %58 = sub nsw i64 0, %57
  %59 = select i1 %56, i64 %58, i64 %57
  %60 = icmp slt i64 %59, 5000
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !13
  br label %62

62:                                               ; preds = %61, %44, %34
  %63 = phi i32 [ %26, %34 ], [ %47, %44 ], [ %26, %61 ]
  %64 = phi i32 [ %35, %34 ], [ %45, %44 ], [ %25, %61 ]
  %65 = load ptr, ptr @ti_clk_ll_ops, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(ptr noundef %8) #12
  %68 = and i32 %67, 196608
  %69 = icmp eq i32 %68, 196608
  br i1 %69, label %73, label %24

70:                                               ; preds = %48, %32
  %71 = tail call ptr @clk_hw_get_name(ptr noundef %0) #12
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %71) #13
  br label %73

73:                                               ; preds = %70, %62, %18, %5, %1
  %74 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @ti_clk_ll_ops, align 4
  %79 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %78, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %80(ptr noundef nonnull %75, ptr noundef %82) #12
  br label %84

84:                                               ; preds = %77, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_clkctrl_clk_is_enabled(ptr noundef %0) #2 {
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %5 = tail call i32 %3(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_init_clk_clkdm(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold }
attributes #16 = { nounwind readnone }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 1183899, i64 1183926, i64 1183948, i64 1183976}
!11 = !{i64 1184307, i64 1184334, i64 1184367, i64 1184388, i64 1184415, i64 1184441}
!12 = !{i64 2151128555}
!13 = !{i64 2151128397}
