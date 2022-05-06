; ModuleID = '/llk/IR/drivers/of/resolver.c_pt.bc'
source_filename = "../drivers/of/resolver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_resolve_phandles:\09\09\09\09\09"
module asm "\09.asciz \09\22of_resolve_phandles\22\09\09\09\09\09"
module asm "__kstrtabns_of_resolve_phandles:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@.str = private unnamed_addr constant [30 x i8] c"\013OF: resolver: null overlay\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\013OF: resolver: overlay not detached\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"__local_fixups__\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__fixups__\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/__symbols__\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\013OF: resolver: no symbols in root of device tree.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"\013OF: resolver: node label '%s' not found in live devicetree symbols table\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013OF: resolver: overlay phandle fixup failed: %d\0A\00", align 1
@__kstrtab_of_resolve_phandles = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_resolve_phandles = external dso_local constant [0 x i8], align 1
@__ksymtab_of_resolve_phandles = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_resolve_phandles to i32), ptr @__kstrtab_of_resolve_phandles, ptr @__kstrtabns_of_resolve_phandles }, section "___ksymtab_gpl+of_resolve_phandles", align 4
@devtree_lock = external dso_local global %struct.raw_spinlock, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_of_resolve_phandles], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_resolve_phandles(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %151

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %151

14:                                               ; preds = %7
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #7
  %16 = tail call ptr @__of_find_all_nodes(ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %27, %18 ], [ %16, %14 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, -559038737
  %24 = icmp ugt i32 %22, %20
  %25 = select i1 %23, i1 %24, i1 false
  %26 = select i1 %25, i32 %22, i32 %20
  %27 = tail call ptr @__of_find_all_nodes(ptr noundef nonnull %19) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18

29:                                               ; preds = %18
  %30 = add i32 %26, 1
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i32 [ 1, %14 ], [ %30, %29 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %15) #7
  tail call fastcc void @adjust_overlay_phandles(ptr noundef nonnull %0, i32 noundef %32)
  %33 = tail call ptr @of_get_next_child(ptr noundef nonnull %0, ptr noundef null) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %38, %31
  %36 = phi ptr [ %39, %38 ], [ %33, %31 ]
  %37 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %36, ptr noundef nonnull @.str.2) #7
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call ptr @of_get_next_child(ptr noundef nonnull %0, ptr noundef nonnull %36) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35

41:                                               ; preds = %38, %35, %31
  %42 = phi ptr [ null, %31 ], [ %36, %35 ], [ null, %38 ]
  %43 = tail call fastcc i32 @adjust_local_phandle_references(ptr noundef %42, ptr noundef nonnull %0, i32 noundef %32)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %151

45:                                               ; preds = %41
  %46 = tail call ptr @of_get_next_child(ptr noundef nonnull %0, ptr noundef null) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %155, label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %53, %48 ], [ %46, %45 ]
  %50 = phi ptr [ %52, %48 ], [ null, %45 ]
  %51 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %49, ptr noundef nonnull @.str.3) #7
  %52 = select i1 %51, ptr %49, ptr %50
  %53 = tail call ptr @of_get_next_child(ptr noundef nonnull %0, ptr noundef nonnull %49) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %48

55:                                               ; preds = %48
  %56 = icmp eq ptr %52, null
  br i1 %56, label %155, label %57

57:                                               ; preds = %55
  %58 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.4, ptr noundef null) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %151

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.device_node, ptr %52, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %155, label %66

66:                                               ; preds = %147, %62
  %67 = phi ptr [ %149, %147 ], [ %64, %62 ]
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(5) @.str.6)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %147, label %71

71:                                               ; preds = %66
  %72 = call i32 @of_property_read_string(ptr noundef nonnull %58, ptr noundef %68, ptr noundef nonnull %3) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %67, align 4
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %75) #8
  br label %151

77:                                               ; preds = %71
  %78 = load ptr, ptr %3, align 4
  %79 = call ptr @of_find_node_opts_by_path(ptr noundef %78, ptr noundef null) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %151, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.device_node, ptr %79, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  call void @of_node_put(ptr noundef nonnull %79) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %84 = getelementptr inbounds %struct.property, ptr %67, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.property, ptr %67, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = call ptr @kmemdup(ptr noundef %85, i32 noundef %87, i32 noundef 3264) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %151

91:                                               ; preds = %81
  %92 = load i32, ptr %86, align 4
  %93 = getelementptr i8, ptr %88, i32 %92
  %94 = icmp ult ptr %88, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %91
  %96 = call i32 @llvm.bswap.i32(i32 %83) #7
  br label %97

97:                                               ; preds = %140, %95
  %98 = phi ptr [ %88, %95 ], [ %142, %140 ]
  %99 = call i32 @strlen(ptr noundef %98) #7
  %100 = call ptr @strchr(ptr noundef %98, i32 noundef 58) #7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %144, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %100, i32 1
  store i8 0, ptr %100, align 1
  %104 = call ptr @strchr(ptr noundef %103, i32 noundef 58) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %144, label %106

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %104, i32 1
  store i8 0, ptr %104, align 1
  %108 = call i32 @kstrtoint(ptr noundef %107, i32 noundef 10, ptr noundef nonnull %2) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %106
  %111 = call ptr @of_node_get(ptr noundef nonnull %0) #7
  %112 = call ptr @__of_find_node_by_full_path(ptr noundef %111, ptr noundef %98) #7
  %113 = icmp eq ptr %112, null
  br i1 %113, label %140, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.device_node, ptr %112, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %123, %114
  %119 = phi ptr [ %125, %123 ], [ %116, %114 ]
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @strcmp(ptr noundef %120, ptr noundef %103) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.property, ptr %119, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %118

127:                                              ; preds = %123, %114
  call void @of_node_put(ptr noundef nonnull %112) #7
  br label %144

128:                                              ; preds = %118
  call void @of_node_put(ptr noundef nonnull %112) #7
  %129 = load i32, ptr %2, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %128
  %132 = add nuw i32 %129, 4
  %133 = getelementptr inbounds %struct.property, ptr %119, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp ugt i32 %132, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.property, ptr %119, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 %129
  store i32 %96, ptr %139, align 4
  br label %140

140:                                              ; preds = %136, %110
  %141 = add i32 %99, 1
  %142 = getelementptr i8, ptr %98, i32 %141
  %143 = icmp ult ptr %142, %93
  br i1 %143, label %97, label %146

144:                                              ; preds = %131, %128, %127, %106, %102, %97
  %145 = phi i32 [ -2, %127 ], [ %108, %106 ], [ -22, %97 ], [ -22, %102 ], [ -22, %131 ], [ -22, %128 ]
  call void @kfree(ptr noundef nonnull %88) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %151

146:                                              ; preds = %140, %91
  call void @kfree(ptr noundef nonnull %88) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %147

147:                                              ; preds = %146, %66
  %148 = getelementptr inbounds %struct.property, ptr %67, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %66

151:                                              ; preds = %144, %90, %77, %74, %60, %41, %12, %5
  %152 = phi i32 [ %145, %144 ], [ -12, %90 ], [ -22, %5 ], [ -22, %12 ], [ -22, %60 ], [ %72, %74 ], [ %43, %41 ], [ -2, %77 ]
  %153 = phi ptr [ %58, %144 ], [ %58, %90 ], [ null, %5 ], [ null, %12 ], [ null, %60 ], [ %58, %74 ], [ null, %41 ], [ %58, %77 ]
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %152) #8
  br label %155

155:                                              ; preds = %151, %147, %62, %55, %45
  %156 = phi ptr [ %153, %151 ], [ null, %55 ], [ %58, %62 ], [ null, %45 ], [ %58, %147 ]
  %157 = phi i32 [ %152, %151 ], [ 0, %55 ], [ 0, %62 ], [ 0, %45 ], [ 0, %147 ]
  call void @of_node_put(ptr noundef %156) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %157
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adjust_overlay_phandles(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %5 [
    i32 0, label %7
    i32 -559038737, label %7
  ]

5:                                                ; preds = %2
  %6 = add i32 %4, %1
  store i32 %6, ptr %3, align 4
  br label %7

7:                                                ; preds = %5, %2, %2
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %31, %7
  %12 = phi ptr [ %33, %31 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(8) @.str.9)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(14) @.str.10)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -272716322
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %3, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  store i32 %30, ptr %25, align 4
  br label %31

31:                                               ; preds = %28, %23, %19, %16
  %32 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %11

35:                                               ; preds = %31, %7
  %36 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %40, %38 ], [ %36, %35 ]
  tail call fastcc void @adjust_overlay_phandles(ptr noundef nonnull %39, i32 noundef %1)
  %40 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %39) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %38

42:                                               ; preds = %38, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adjust_local_phandle_references(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 4
  br label %11

11:                                               ; preds = %67, %9
  %12 = phi ptr [ %7, %9 ], [ %69, %67 ]
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(5) @.str.6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %67, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(8) @.str.9)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(14) @.str.10)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %67, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq i32 %24, 0
  %28 = or i1 %27, %26
  br i1 %28, label %106, label %29

29:                                               ; preds = %22
  %30 = lshr i32 %24, 2
  %31 = load ptr, ptr %10, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %106, label %33

33:                                               ; preds = %45, %29
  %34 = phi ptr [ %47, %45 ], [ %31, %29 ]
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @strcmp(ptr noundef %35, ptr noundef %13)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = icmp ult i32 %24, 4
  br i1 %39, label %67, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 2
  %42 = getelementptr inbounds %struct.property, ptr %34, i32 0, i32 1
  %43 = getelementptr inbounds %struct.property, ptr %34, i32 0, i32 2
  %44 = call i32 @llvm.umax.i32(i32 %30, i32 1)
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.property, ptr %34, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %106, label %33

49:                                               ; preds = %58, %40
  %50 = phi i32 [ 0, %40 ], [ %65, %58 ]
  %51 = load ptr, ptr %41, align 4
  %52 = getelementptr i32, ptr %51, i32 %50
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = add i32 %54, 4
  %56 = load i32, ptr %42, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %106, label %58

58:                                               ; preds = %49
  %59 = load ptr, ptr %43, align 4
  %60 = getelementptr i8, ptr %59, i32 %54
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %63 = add i32 %62, %2
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  store i32 %64, ptr %60, align 4
  %65 = add nuw nsw i32 %50, 1
  %66 = icmp eq i32 %65, %44
  br i1 %66, label %67, label %49

67:                                               ; preds = %58, %38, %19, %16, %11
  %68 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %11

71:                                               ; preds = %67, %5
  %72 = tail call ptr @of_get_next_child(ptr noundef nonnull %0, ptr noundef null) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %106, label %74

74:                                               ; preds = %101, %71
  %75 = phi ptr [ %102, %101 ], [ %72, %71 ]
  %76 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %104, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.device_node, ptr %75, i32 0, i32 2
  br label %80

80:                                               ; preds = %98, %78
  %81 = phi ptr [ %76, %78 ], [ %99, %98 ]
  %82 = load ptr, ptr %79, align 4
  %83 = tail call ptr @strrchr(ptr noundef %82, i32 noundef 47) #7
  %84 = icmp eq ptr %83, null
  %85 = getelementptr i8, ptr %83, i32 1
  %86 = select i1 %84, ptr %82, ptr %85
  %87 = getelementptr inbounds %struct.device_node, ptr %81, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = tail call ptr @strrchr(ptr noundef %88, i32 noundef 47) #7
  %90 = icmp eq ptr %89, null
  %91 = getelementptr i8, ptr %89, i32 1
  %92 = select i1 %90, ptr %88, ptr %91
  %93 = tail call i32 @strcasecmp(ptr noundef %86, ptr noundef %92) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %80
  tail call void @of_node_put(ptr noundef nonnull %81) #7
  %96 = tail call fastcc i32 @adjust_local_phandle_references(ptr noundef nonnull %75, ptr noundef nonnull %81, i32 noundef %2)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %104

98:                                               ; preds = %80
  %99 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %81) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %80

101:                                              ; preds = %95
  %102 = tail call ptr @of_get_next_child(ptr noundef nonnull %0, ptr noundef nonnull %75) #7
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %74

104:                                              ; preds = %98, %95, %74
  %105 = phi i32 [ -22, %98 ], [ -22, %74 ], [ %96, %95 ]
  tail call void @of_node_put(ptr noundef nonnull %75) #7
  br label %106

106:                                              ; preds = %104, %101, %71, %49, %45, %29, %22, %3
  %107 = phi i32 [ 0, %3 ], [ 0, %71 ], [ %105, %104 ], [ 0, %101 ], [ -22, %49 ], [ -22, %45 ], [ -22, %29 ], [ -22, %22 ]
  ret i32 %107
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_find_all_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_find_node_by_full_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
