; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sun4i-display.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun4i-display.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun4i_a10_display_clk_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.reset_data = type { ptr, ptr, %struct.reset_controller_dev, i8 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__of_table_sun4i_a10_tcon_ch0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tcon-ch0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_tcon_ch0_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_display = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_display_setup }, section "__clk_of_table", align 4
@sun4i_a10_tcon_ch0_data = internal constant %struct.sun4i_a10_display_clk_data { i8 0, i8 2, i8 4, i8 31, i8 0, i8 24, i8 29, i8 0, i8 2, i32 4 }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013%s: Could not map the clock registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%s: Could not retrieve the parents\0A\00", align 1
@sun4i_a10_display_lock = internal global %struct.spinlock zeroinitializer, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\013%s: Couldn't register the clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\013%s: Couldn't register DT provider\0A\00", align 1
@sun4i_a10_display_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @sun4i_a10_display_assert, ptr @sun4i_a10_display_deassert, ptr @sun4i_a10_display_status }, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"\013%s: Couldn't register the reset controller\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sun4i_a10_display_data = internal constant %struct.sun4i_a10_display_clk_data { i8 1, i8 1, i8 3, i8 31, i8 0, i8 24, i8 30, i8 4, i8 2, i32 0 }, section ".init.rodata", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_sun4i_a10_display, ptr @__of_table_sun4i_a10_tcon_ch0], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_a10_tcon_ch0_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun4i_a10_display_init(ptr noundef %0, ptr noundef nonnull @sun4i_a10_tcon_ch0_data) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_a10_display_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun4i_a10_display_init(ptr noundef %0, ptr noundef nonnull @sun4i_a10_display_data) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sun4i_a10_display_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca [4 x ptr], align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %7 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %4) #9
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ @.str.6, %2 ]
  %14 = call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %13) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %17) #10
  br label %143

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %22) #9
  %24 = load i8, ptr %20, align 2
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %4, align 4
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %28) #10
  br label %136

30:                                               ; preds = %19
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 32) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %136, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.clk_mux, ptr %32, i32 0, i32 1
  store ptr %14, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.clk_mux, ptr %32, i32 0, i32 4
  store i8 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 8
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.clk_mux, ptr %32, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.clk_mux, ptr %32, i32 0, i32 6
  store ptr @sun4i_a10_display_lock, ptr %45, align 4
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 24) #11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %135, label %49

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 1
  store ptr %14, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 2
  store i8 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 4
  store ptr @sun4i_a10_display_lock, ptr %54, align 4
  %55 = load i8, ptr %1, align 4, !range !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load ptr, ptr %4, align 4
  %59 = load i8, ptr %20, align 2
  %60 = zext i8 %59 to i32
  br label %79

61:                                               ; preds = %49
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %63 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 28) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %134, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.clk_divider, ptr %63, i32 0, i32 1
  store ptr %14, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 4
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr inbounds %struct.clk_divider, ptr %63, i32 0, i32 2
  store i8 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 7
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds %struct.clk_divider, ptr %63, i32 0, i32 3
  store i8 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.clk_divider, ptr %63, i32 0, i32 6
  store ptr @sun4i_a10_display_lock, ptr %73, align 8
  %74 = load i8, ptr %1, align 4, !range !9
  %75 = icmp eq i8 %74, 0
  %76 = load ptr, ptr %4, align 4
  %77 = load i8, ptr %20, align 2
  %78 = zext i8 %77 to i32
  br i1 %75, label %79, label %83

79:                                               ; preds = %65, %57
  %80 = phi i32 [ %60, %57 ], [ %78, %65 ]
  %81 = phi ptr [ %58, %57 ], [ %76, %65 ]
  %82 = phi ptr [ null, %57 ], [ %63, %65 ]
  br label %83

83:                                               ; preds = %79, %65
  %84 = phi ptr [ null, %79 ], [ %63, %65 ]
  %85 = phi ptr [ %82, %79 ], [ %63, %65 ]
  %86 = phi ptr [ %81, %79 ], [ %76, %65 ]
  %87 = phi i32 [ %80, %79 ], [ %78, %65 ]
  %88 = phi ptr [ null, %79 ], [ @clk_divider_ops, %65 ]
  %89 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 9
  %90 = load i32, ptr %89, align 4
  %91 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %86, ptr noundef nonnull %3, i32 noundef %87, ptr noundef nonnull %32, ptr noundef nonnull @clk_mux_ops, ptr noundef %84, ptr noundef %88, ptr noundef nonnull %47, ptr noundef nonnull @clk_gate_ops, i32 noundef %90) #9
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load ptr, ptr %4, align 4
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %94) #10
  br label %133

96:                                               ; preds = %83
  %97 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %91) #9
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %4, align 4
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %100) #10
  br label %132

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %143, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %108 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3520, i32 noundef 56) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %131, label %110

110:                                              ; preds = %106
  store ptr %14, ptr %108, align 8
  %111 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %1, i32 0, i32 6
  %112 = load i8, ptr %111, align 2
  %113 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 3
  store i8 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 1
  store ptr @sun4i_a10_display_lock, ptr %114, align 4
  %115 = load i8, ptr %103, align 1
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 2
  %118 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 2, i32 8
  store i32 %116, ptr %118, align 8
  store ptr @sun4i_a10_display_reset_ops, ptr %117, align 8
  %119 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 2, i32 5
  store ptr %0, ptr %119, align 4
  %120 = icmp eq i8 %115, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 2, i32 7
  store ptr @sun4i_a10_display_reset_xlate, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %110
  %124 = phi i32 [ 0, %121 ], [ 1, %110 ]
  %125 = getelementptr inbounds %struct.reset_data, ptr %108, i32 0, i32 2, i32 6
  store i32 %124, ptr %125, align 8
  %126 = call i32 @reset_controller_register(ptr noundef %117) #9
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %4, align 4
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %129) #10
  call void @kfree(ptr noundef nonnull %108) #9
  br label %131

131:                                              ; preds = %128, %106
  call void @of_clk_del_provider(ptr noundef %0) #9
  br label %132

132:                                              ; preds = %131, %99
  call void @clk_unregister_composite(ptr noundef %91) #9
  br label %133

133:                                              ; preds = %132, %93
  call void @kfree(ptr noundef %85) #9
  br label %134

134:                                              ; preds = %133, %61
  call void @kfree(ptr noundef nonnull %47) #9
  br label %135

135:                                              ; preds = %134, %34
  call void @kfree(ptr noundef nonnull %32) #9
  br label %136

136:                                              ; preds = %135, %30, %27
  call void @iounmap(ptr noundef %14) #9
  %137 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #9
  %138 = load i32, ptr %5, align 4
  %139 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = sub i32 1, %138
  %142 = add i32 %141, %140
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %138, i32 noundef %142) #9
  br label %143

143:                                              ; preds = %136, %123, %102, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_a10_display_reset_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_composite(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_a10_display_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, %1
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %8, %14
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #9, !srcloc !13
  %17 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_a10_display_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, %1
  %13 = shl nuw i32 1, %12
  %14 = or i32 %13, %8
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #9, !srcloc !13
  %16 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_a10_display_status(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %6 = getelementptr i8, ptr %0, i32 44
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = add i32 %8, %1
  %10 = xor i32 %5, -1
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!10 = !{i64 2846599}
!11 = !{i64 2150576242}
!12 = !{i64 2150576558}
!13 = !{i64 2846181}
!14 = !{i64 2150577437}
!15 = !{i64 2150577751}
!16 = !{i64 2150578274}
