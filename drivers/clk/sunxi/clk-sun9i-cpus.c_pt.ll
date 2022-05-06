; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sun9i-cpus.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun9i-cpus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sun9i_a80_cpus_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__of_table_sun9i_a80_cpus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-cpus-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_cpus_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@sun9i_a80_cpus_lock = internal global %struct.spinlock zeroinitializer, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@sun9i_a80_cpus_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun9i_a80_cpus_clk_recalc_rate, ptr null, ptr @sun9i_a80_cpus_clk_determine_rate, ptr null, ptr null, ptr @sun9i_a80_cpus_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sun9i_a80_cpus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun9i_a80_cpus_setup(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [4 x ptr], align 4
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %13, %11 ], [ @.str.1, %9 ]
  %16 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %15) #5
  %17 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, ptr %7, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %47, label %19

19:                                               ; preds = %14
  %20 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2) #5
  %21 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4) #5
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 32) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.clk_mux, ptr %23, i32 0, i32 1
  store ptr %16, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_mux, ptr %23, i32 0, i32 4
  store i8 16, ptr %27, align 8
  %28 = getelementptr inbounds %struct.clk_mux, ptr %23, i32 0, i32 3
  store i32 3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_mux, ptr %23, i32 0, i32 6
  store ptr @sun9i_a80_cpus_lock, ptr %29, align 4
  %30 = load ptr, ptr %2, align 4
  %31 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %30, ptr noundef nonnull %3, i32 noundef %21, ptr noundef nonnull %23, ptr noundef nonnull @clk_mux_ops, ptr noundef nonnull %7, ptr noundef nonnull @sun9i_a80_cpus_clk_ops, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %31) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  call void @clk_unregister(ptr noundef %31) #5
  br label %37

37:                                               ; preds = %36, %25
  call void @kfree(ptr noundef nonnull %23) #5
  %38 = load ptr, ptr %17, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = phi ptr [ %16, %19 ], [ %38, %37 ]
  call void @iounmap(ptr noundef %40) #5
  %41 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #5
  %42 = load i32, ptr %4, align 4
  %43 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 1, %42
  %46 = add i32 %45, %44
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %42, i32 noundef %46) #5
  br label %47

47:                                               ; preds = %39, %14
  call void @kfree(ptr noundef nonnull %7) #5
  br label %48

48:                                               ; preds = %47, %33, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_cpus_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %6 = and i32 %5, 196608
  %7 = icmp eq i32 %6, 196608
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = lshr i32 %5, 8
  %10 = and i32 %9, 31
  %11 = add nuw nsw i32 %10, 1
  %12 = udiv i32 %1, %11
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ %1, %2 ]
  %15 = lshr i32 %5, 4
  %16 = and i32 %15, 3
  %17 = add nuw nsw i32 %16, 1
  %18 = udiv i32 %14, %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_cpus_clk_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %75

6:                                                ; preds = %64, %2
  %7 = phi i32 [ %67, %64 ], [ 0, %2 ]
  %8 = phi i32 [ %66, %64 ], [ 0, %2 ]
  %9 = phi i32 [ %68, %64 ], [ 0, %2 ]
  %10 = phi ptr [ %65, %64 ], [ null, %2 ]
  %11 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %9) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #5
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %11, i32 noundef %3) #5
  br label %21

19:                                               ; preds = %13
  %20 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %11) #5
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = trunc i32 %9 to i8
  %24 = icmp ne i32 %22, 0
  %25 = icmp ugt i32 %3, %22
  %26 = and i1 %24, %25
  %27 = select i1 %26, i32 %22, i32 %3
  %28 = add i32 %22, -1
  %29 = add i32 %28, %27
  %30 = udiv i32 %29, %27
  %31 = trunc i32 %30 to i8
  %32 = icmp eq i8 %23, 3
  %33 = and i32 %30, 255
  %34 = icmp ugt i32 %33, 4
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %21
  %37 = icmp ult i32 %33, 32
  br i1 %37, label %53, label %38

38:                                               ; preds = %36
  %39 = icmp ult i32 %33, 64
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = add nuw nsw i32 %33, 1
  %42 = lshr i32 %41, 1
  %43 = trunc i32 %42 to i8
  br label %53

44:                                               ; preds = %38
  %45 = icmp ult i32 %33, 96
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = add i8 %31, 2
  %48 = udiv i8 %47, 3
  br label %53

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %33, 3
  %51 = lshr i32 %50, 2
  %52 = trunc i32 %51 to i8
  br label %53

53:                                               ; preds = %49, %46, %40, %36, %21
  %54 = phi i32 [ 2, %40 ], [ 3, %46 ], [ 4, %49 ], [ %30, %21 ], [ 1, %36 ]
  %55 = phi i8 [ %43, %40 ], [ %48, %46 ], [ %52, %49 ], [ 1, %21 ], [ %31, %36 ]
  %56 = zext i8 %55 to i32
  %57 = udiv i32 %22, %56
  %58 = and i32 %54, 255
  %59 = udiv i32 %57, %58
  %60 = icmp ule i32 %59, %3
  %61 = icmp ugt i32 %59, %7
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %53, %6
  %65 = phi ptr [ %11, %63 ], [ %10, %53 ], [ %10, %6 ]
  %66 = phi i32 [ %22, %63 ], [ %8, %53 ], [ %8, %6 ]
  %67 = phi i32 [ %59, %63 ], [ %7, %53 ], [ %7, %6 ]
  %68 = add nuw nsw i32 %9, 1
  %69 = icmp eq i32 %68, %4
  br i1 %69, label %70, label %6

70:                                               ; preds = %64
  %71 = icmp eq ptr %65, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %65, ptr %73, align 4
  %74 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %66, ptr %74, align 4
  store i32 %67, ptr %1, align 4
  br label %75

75:                                               ; preds = %72, %70, %2
  %76 = phi i32 [ 0, %72 ], [ -22, %70 ], [ -22, %2 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_cpus_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sun9i_a80_cpus_lock) #5
  %5 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %8 = icmp ne i32 %2, 0
  %9 = icmp ugt i32 %1, %2
  %10 = and i1 %8, %9
  %11 = select i1 %10, i32 %2, i32 %1
  %12 = add i32 %2, -1
  %13 = add i32 %12, %11
  %14 = udiv i32 %13, %11
  %15 = trunc i32 %14 to i8
  %16 = and i32 %7, 196608
  %17 = icmp eq i32 %16, 196608
  %18 = and i32 %14, 255
  %19 = icmp ugt i32 %18, 4
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = icmp ult i32 %18, 32
  br i1 %22, label %38, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %18, 64
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %18, 1
  %27 = lshr i32 %26, 1
  %28 = trunc i32 %27 to i8
  br label %38

29:                                               ; preds = %23
  %30 = icmp ult i32 %18, 96
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = add i8 %15, 2
  %33 = udiv i8 %32, 3
  br label %38

34:                                               ; preds = %29
  %35 = add nuw nsw i32 %18, 3
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i8
  br label %38

38:                                               ; preds = %34, %31, %25, %21, %3
  %39 = phi i32 [ 2, %25 ], [ 3, %31 ], [ 4, %34 ], [ %14, %3 ], [ 1, %21 ]
  %40 = phi i8 [ %28, %25 ], [ %33, %31 ], [ %37, %34 ], [ 1, %3 ], [ %15, %21 ]
  %41 = add i8 %40, -1
  %42 = and i32 %7, -7985
  %43 = shl i32 %39, 4
  %44 = add i32 %43, 240
  %45 = and i32 %44, 240
  %46 = or i32 %45, %42
  %47 = zext i8 %41 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %46, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %50 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #5, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sun9i_a80_cpus_lock, i32 noundef %4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 2878480}
!10 = !{i64 2150603463}
!11 = !{i64 2150608007}
!12 = !{i64 2150610478}
!13 = !{i64 2878062}
