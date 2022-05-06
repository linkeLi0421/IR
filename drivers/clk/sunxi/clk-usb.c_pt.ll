; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-usb.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usb_clk_data = type { i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.usb_reset_data = type { ptr, ptr, ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__of_table_sun4i_a10_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_h3_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_usb_mod = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-usb-mod-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_usb_mod_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_usb_phy = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-usb-phy-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_usb_phy_setup }, section "__clk_of_table", align 4
@sun4i_a10_usb_clk_data = internal constant %struct.usb_clk_data { i32 448, i32 7, i8 0 }, section ".init.rodata", align 4
@sun4i_a10_usb_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/clk/sunxi/clk-usb.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013Could not get clock for reset controls\0A\00", align 1
@sunxi_usb_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @sunxi_usb_reset_assert, ptr @sunxi_usb_reset_deassert, ptr null }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sun5i_a13_usb_clk_data = internal constant %struct.usb_clk_data { i32 320, i32 3, i8 0 }, section ".init.rodata", align 4
@sun6i_a31_usb_clk_data = internal constant %struct.usb_clk_data { i32 460544, i32 7, i8 0 }, section ".init.rodata", align 4
@sun8i_a23_usb_clk_data = internal constant %struct.usb_clk_data { i32 69376, i32 7, i8 0 }, section ".init.rodata", align 4
@sun8i_h3_usb_clk_data = internal constant %struct.usb_clk_data { i32 986880, i32 15, i8 0 }, section ".init.rodata", align 4
@sun9i_a80_usb_mod_data = internal constant %struct.usb_clk_data { i32 126, i32 917504, i8 1 }, section ".init.rodata", align 4
@a80_usb_mod_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun9i_a80_usb_phy_data = internal constant %struct.usb_clk_data { i32 1086, i32 4063232, i8 1 }, section ".init.rodata", align 4
@a80_usb_phy_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__of_table_sun4i_a10_usb, ptr @__of_table_sun5i_a13_usb, ptr @__of_table_sun6i_a31_usb, ptr @__of_table_sun8i_a23_usb, ptr @__of_table_sun8i_h3_usb, ptr @__of_table_sun9i_a80_usb_mod, ptr @__of_table_sun9i_a80_usb_phy], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_a10_usb_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_a10_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_a13_usb_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun5i_a13_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_a31_usb_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun6i_a31_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_a23_usb_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun8i_a23_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_h3_usb_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun8i_h3_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_usb_mod_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun9i_a80_usb_mod_data, ptr noundef nonnull @a80_usb_mod_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_usb_phy_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef nonnull @sun9i_a80_usb_phy_data, ptr noundef nonnull @a80_usb_phy_lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sunxi_usb_clk_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ @.str.3, %3 ]
  %11 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %10) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %82, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %82, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 8) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %17, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #9, !range !9
  %24 = mul nsw i32 %23, -4
  %25 = add nsw i32 %24, 128
  %26 = select i1 %22, i32 132, i32 %25
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #11
  store ptr %27, ptr %19, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %19) #9
  br label %82

30:                                               ; preds = %21
  %31 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef 32, i32 noundef 0) #9
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %52

33:                                               ; preds = %47, %30
  %34 = phi ptr [ %42, %47 ], [ %27, %30 ]
  %35 = phi i32 [ %48, %47 ], [ 0, %30 ]
  %36 = phi i32 [ %50, %47 ], [ %31, %30 ]
  %37 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %35) #9
  %38 = load ptr, ptr %4, align 4
  %39 = trunc i32 %36 to i8
  %40 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %38, ptr noundef nonnull %14, i32 noundef 0, ptr noundef %11, i8 noundef zeroext %39, i8 noundef zeroext 0, ptr noundef %2) #9
  %41 = getelementptr ptr, ptr %34, i32 %36
  store ptr %40, ptr %41, align 4
  %42 = load ptr, ptr %19, align 8
  %43 = getelementptr ptr, ptr %42, i32 %36
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %47, !prof !10

46:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 130, i32 noundef 9, ptr noundef null) #9
  br label %47

47:                                               ; preds = %46, %33
  %48 = add i32 %35, 1
  %49 = add nsw i32 %36, 1
  %50 = call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef 32, i32 noundef %49) #9
  %51 = icmp slt i32 %50, 32
  br i1 %51, label %33, label %52

52:                                               ; preds = %47, %30
  %53 = phi i32 [ %31, %30 ], [ %50, %47 ]
  %54 = getelementptr inbounds %struct.clk_onecell_data, ptr %19, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  %55 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %19) #9
  %56 = getelementptr inbounds %struct.usb_clk_data, ptr %1, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %61 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 56) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.usb_clk_data, ptr %1, i32 0, i32 2
  %65 = load i8, ptr %64, align 4, !range !11
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #9
  %69 = getelementptr inbounds %struct.usb_reset_data, ptr %61, i32 0, i32 2
  store ptr %68, ptr %69, align 8
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  call void @kfree(ptr noundef nonnull %61) #9
  br label %82

73:                                               ; preds = %67, %63
  store ptr %11, ptr %61, align 8
  %74 = getelementptr inbounds %struct.usb_reset_data, ptr %61, i32 0, i32 1
  store ptr %2, ptr %74, align 4
  %75 = load i32, ptr %56, align 4
  %76 = call i32 @llvm.ctlz.i32(i32 %75, i1 false) #9, !range !9
  %77 = sub nuw nsw i32 32, %76
  %78 = getelementptr inbounds %struct.usb_reset_data, ptr %61, i32 0, i32 3
  %79 = getelementptr inbounds %struct.usb_reset_data, ptr %61, i32 0, i32 3, i32 8
  store i32 %77, ptr %79, align 4
  store ptr @sunxi_usb_reset_ops, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_reset_data, ptr %61, i32 0, i32 3, i32 5
  store ptr %0, ptr %80, align 8
  %81 = call i32 @reset_controller_register(ptr noundef %78) #9
  br label %82

82:                                               ; preds = %73, %71, %59, %52, %29, %16, %13, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_usb_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %4) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #9
  br label %11

11:                                               ; preds = %10, %7, %2
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #9
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %18 = shl nuw i32 1, %1
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #9, !srcloc !15
  %22 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %15) #9
  %23 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_usb_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %4) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #9
  br label %11

11:                                               ; preds = %10, %7, %2
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #9
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %18 = shl nuw i32 1, %1
  %19 = or i32 %17, %18
  %20 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #9, !srcloc !15
  %21 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %15) #9
  %22 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold }
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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 2878869}
!13 = !{i64 2150607982}
!14 = !{i64 2150608268}
!15 = !{i64 2878451}
!16 = !{i64 2150610329}
!17 = !{i64 2150610613}
