; ModuleID = '/llk/IR/drivers/clk/keystone/pll.c_pt.bc'
source_filename = "../drivers/clk/keystone/pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll_data = type { i8, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_pll = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_keystone_pll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_keystone_pll_clk_init }, section "__clk_of_table", align 4
@__of_table_keystone_main_pll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,main-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_keystone_main_pll_clk_init }, section "__clk_of_table", align 4
@__of_table_pll_divider_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,pll-divider-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_pll_div_clk_init }, section "__clk_of_table", align 4
@__of_table_pll_mux_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,pll-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_pll_mux_clk_init }, section "__clk_of_table", align 4
@__UNIQUE_ID_file112 = internal constant [34 x i8] c"pll.file=drivers/clk/keystone/pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license113 = internal constant [16 x i8] c"pll.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description114 = internal constant [54 x i8] c"pll.description=PLL clock driver for Keystone devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author115 = internal constant [50 x i8] c"pll.author=Murali Karicheri <m-karicheri2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author116 = internal constant [56 x i8] c"pll.author=Santosh Shilimkar <santosh.shilimkar@ti.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"\013%s: Out of memory\0A\00", align 1
@__func__._of_pll_clk_init = private unnamed_addr constant [17 x i8] c"_of_pll_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fixed-postdiv\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"post-divider\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\013%s: ioremap failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"multiplier\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\013%s: error initializing pll %pOFn\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clk_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllclk_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@__func__.of_pll_div_clk_init = private unnamed_addr constant [20 x i8] c"of_pll_div_clk_init\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\013%s: missing parent clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bit-shift\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"\013%s: missing 'shift' property\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"bit-mask\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\013%s: missing 'bit-mask' property\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"\013%s: error registering divider %s\0A\00", align 1
@__func__.of_pll_mux_clk_init = private unnamed_addr constant [20 x i8] c"of_pll_mux_clk_init\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\013%s: missing parent clocks\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\013%s: error registering mux %s\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author115, ptr @__UNIQUE_ID_author116, ptr @__UNIQUE_ID_description114, ptr @__UNIQUE_ID_file112, ptr @__UNIQUE_ID_license113, ptr @__of_table_keystone_main_pll_clock, ptr @__of_table_keystone_pll_clock, ptr @__of_table_pll_divider_clock, ptr @__of_table_pll_mux_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_keystone_pll_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_pll_clk_init(ptr noundef %0, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_keystone_main_pll_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_pll_clk_init(ptr noundef %0, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_pll_div_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %4, align 4
  %6 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #8
  %7 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_pll_div_clk_init) #9
  br label %39

11:                                               ; preds = %1
  %12 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.of_pll_div_clk_init) #9
  call void @iounmap(ptr noundef nonnull %7) #8
  br label %39

16:                                               ; preds = %11
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.of_pll_div_clk_init) #9
  call void @iounmap(ptr noundef nonnull %7) #8
  br label %39

21:                                               ; preds = %16
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.of_pll_div_clk_init) #9
  call void @iounmap(ptr noundef nonnull %7) #8
  br label %39

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 4
  %28 = load i32, ptr %2, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i32, ptr %3, align 4
  %31 = trunc i32 %30 to i8
  %32 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %27, ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %7, i8 noundef zeroext %29, i8 noundef zeroext %31, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %32) #8
  br label %39

36:                                               ; preds = %26
  %37 = load ptr, ptr %4, align 4
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.of_pll_div_clk_init, ptr noundef %37) #9
  call void @iounmap(ptr noundef nonnull %7) #8
  br label %39

39:                                               ; preds = %36, %34, %24, %19, %14, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_pll_mux_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x ptr], align 8
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %5, align 4
  %7 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #8
  %8 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_pll_mux_clk_init) #9
  br label %46

12:                                               ; preds = %1
  %13 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2) #8
  %14 = load ptr, ptr %4, align 8
  %15 = icmp ne ptr %14, null
  %16 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.of_pll_mux_clk_init) #9
  br label %46

22:                                               ; preds = %12
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.of_pll_mux_clk_init) #9
  br label %46

27:                                               ; preds = %22
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.of_pll_mux_clk_init) #9
  br label %46

32:                                               ; preds = %27
  %33 = load ptr, ptr %5, align 4
  %34 = load i32, ptr %2, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i32, ptr %3, align 4
  %37 = shl nsw i32 -1, %36
  %38 = xor i32 %37, -1
  %39 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %33, ptr noundef nonnull %4, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %8, i8 noundef zeroext %35, i32 noundef %38, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %39) #8
  br label %46

43:                                               ; preds = %32
  %44 = load ptr, ptr %5, align 4
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.of_pll_mux_clk_init, ptr noundef %44) #9
  br label %46

46:                                               ; preds = %43, %41, %30, %25, %20, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_of_pll_clk_init(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = zext i1 %1 to i8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 52) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._of_pll_clk_init) #9
  br label %74

11:                                               ; preds = %2
  %12 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 12
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %13, i32 noundef 1, i32 noundef 0) #8
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 10
  store i32 7864320, ptr %17, align 8
  %18 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 11
  store i32 19, ptr %18, align 4
  %19 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  %20 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 4
  store ptr %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #8
  %24 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %23) #8
  %25 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._of_pll_clk_init) #9
  %29 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  tail call void @iounmap(ptr noundef %30) #8
  br label %72

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 6
  store i32 63, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 8
  store i32 6, ptr %33, align 8
  %34 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 9
  store i32 63, ptr %34, align 4
  store i8 %5, ptr %7, align 8
  %35 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 7
  br i1 %1, label %37, label %36

36:                                               ; preds = %31
  store i32 524224, ptr %35, align 4
  br label %46

37:                                               ; preds = %31
  store i32 520192, ptr %35, align 4
  %38 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #8
  %39 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %38) #8
  %40 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load ptr, ptr %25, align 4
  tail call void @iounmap(ptr noundef %43) #8
  %44 = getelementptr inbounds %struct.clk_pll_data, ptr %7, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  tail call void @iounmap(ptr noundef %45) #8
  br label %72

46:                                               ; preds = %37, %36
  %47 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store ptr %12, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  %48 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %48, i8 0, i32 12, i1 false) #8, !annotation !8
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 16) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %69

53:                                               ; preds = %46
  store ptr %47, ptr %4, align 4
  %54 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_pll_ops, ptr %54, align 4
  %55 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 0, ptr %55, align 4
  %56 = icmp eq ptr %12, null
  %57 = select i1 %56, ptr null, ptr %3
  %58 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = icmp ne ptr %12, null
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_pll, ptr %50, i32 0, i32 1
  store ptr %7, ptr %62, align 4
  %63 = getelementptr inbounds %struct.clk_hw, ptr %50, i32 0, i32 2
  store ptr %4, ptr %63, align 8
  %64 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %50) #8
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  call void @kfree(ptr noundef nonnull %50) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %72

67:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %68 = icmp eq ptr %64, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %67, %52
  %70 = phi ptr [ inttoptr (i32 -12 to ptr), %52 ], [ %64, %67 ]
  %71 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %70) #8
  br label %74

72:                                               ; preds = %67, %66, %42, %27
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._of_pll_clk_init, ptr noundef %0) #9
  call void @kfree(ptr noundef nonnull %7) #8
  br label %74

74:                                               ; preds = %72, %69, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllclk_recalc(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %11 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %19 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = load i8, ptr %4, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %18
  %31 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %30, %32
  %34 = add i32 %33, 1
  br label %51

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %41 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %40
  %44 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %43, %45
  %47 = add i32 %46, 1
  br label %51

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.clk_pll_data, ptr %4, i32 0, i32 12
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %39, %27
  %52 = phi i32 [ %47, %39 ], [ %50, %48 ], [ %34, %27 ]
  %53 = and i32 %24, %18
  %54 = and i32 %20, %18
  %55 = lshr i32 %54, %22
  %56 = or i32 %55, %15
  %57 = add i32 %53, 1
  %58 = udiv i32 %1, %57
  %59 = add i32 %56, 1
  %60 = mul i32 %58, %59
  %61 = udiv i32 %60, %52
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!10 = !{i64 2849737}
!11 = !{i64 2150758123}
!12 = !{i64 2150758460}
!13 = !{i64 2150758788}
