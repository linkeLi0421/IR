; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sun4i-tcon-ch1.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tcon_ch1_clk = type { %struct.clk_hw, %struct.spinlock, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__of_table_tcon_ch1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tcon-ch1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcon_ch1_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013%s: Could not map the clock registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%s Could not retrieve the parents\0A\00", align 1
@tcon_ch1_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @tcon_ch1_enable, ptr @tcon_ch1_disable, ptr @tcon_ch1_is_enabled, ptr null, ptr null, ptr null, ptr @tcon_ch1_recalc_rate, ptr null, ptr @tcon_ch1_determine_rate, ptr @tcon_ch1_set_parent, ptr @tcon_ch1_get_parent, ptr @tcon_ch1_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\013%s: Couldn't register the clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013%s: Couldn't register our clock provider\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_tcon_ch1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tcon_ch1_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [4 x ptr], align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %7 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ @.str.5, %1 ]
  %14 = call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %13) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 4
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %17) #8
  br label %57

19:                                               ; preds = %12
  %20 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #7
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %23) #8
  br label %50

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 4
  store ptr %30, ptr %4, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @tcon_ch1_ops, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %27, i32 0, i32 2
  store ptr %14, ptr %35, align 8
  %36 = getelementptr inbounds %struct.clk_hw, ptr %27, i32 0, i32 2
  store ptr %4, ptr %36, align 8
  %37 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %27, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %27) #7
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load ptr, ptr %3, align 4
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %41) #8
  br label %49

43:                                               ; preds = %29
  %44 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %38) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 4
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %47) #8
  call void @clk_unregister(ptr noundef %38) #7
  br label %49

49:                                               ; preds = %46, %40
  call void @kfree(ptr noundef nonnull %27) #7
  br label %50

50:                                               ; preds = %49, %25, %22
  call void @iounmap(ptr noundef %14) #7
  %51 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #7
  %52 = load i32, ptr %5, align 4
  %53 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 1, %52
  %56 = add i32 %55, %54
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %52, i32 noundef %56) #7
  br label %57

57:                                               ; preds = %50, %43, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
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
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcon_ch1_enable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %7 = or i32 %6, -2147450880
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcon_ch1_disable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %7 = and i32 %6, 2147450879
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcon_ch1_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %5 = and i32 %4, -2147450880
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcon_ch1_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %6 = and i32 %5, 15
  %7 = add nuw nsw i32 %6, 1
  %8 = udiv i32 %1, %7
  %9 = lshr i32 %5, 11
  %10 = and i32 %9, 1
  %11 = lshr i32 %8, %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcon_ch1_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #6 {
  %3 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %58, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %8

8:                                                ; preds = %50, %5
  %9 = phi i32 [ 0, %5 ], [ %52, %50 ]
  %10 = phi i32 [ -22, %5 ], [ %51, %50 ]
  %11 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %9) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %11) #7
  %15 = load i32, ptr %1, align 4
  br label %16

16:                                               ; preds = %39, %13
  %17 = phi i32 [ 1, %13 ], [ %41, %39 ]
  %18 = phi i32 [ 0, %13 ], [ %40, %39 ]
  %19 = udiv i32 %14, %17
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = sub i32 %15, %19
  %25 = sub i32 %15, %18
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %21
  br label %28

28:                                               ; preds = %27, %23, %16
  %29 = phi i32 [ %18, %16 ], [ %19, %27 ], [ %18, %23 ]
  %30 = lshr i32 %19, 1
  %31 = icmp ult i32 %15, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = sub i32 %15, %30
  %36 = sub i32 %15, %29
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %32
  br label %39

39:                                               ; preds = %38, %34, %28
  %40 = phi i32 [ %29, %28 ], [ %30, %38 ], [ %29, %34 ]
  %41 = add nuw nsw i32 %17, 1
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %16

43:                                               ; preds = %39
  %44 = icmp slt i32 %10, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = sub i32 %15, %40
  %47 = sub i32 %15, %10
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %43
  store i32 %14, ptr %6, align 4
  store ptr %11, ptr %7, align 4
  br label %50

50:                                               ; preds = %49, %45, %8
  %51 = phi i32 [ %10, %8 ], [ %40, %49 ], [ %10, %45 ]
  %52 = add nuw i32 %9, 1
  %53 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %8, label %55

55:                                               ; preds = %50
  %56 = icmp slt i32 %51, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  store i32 %51, ptr %1, align 4
  br label %58

58:                                               ; preds = %57, %55, %2
  %59 = phi i32 [ 0, %57 ], [ %51, %55 ], [ -22, %2 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcon_ch1_set_parent(ptr noundef %0, i8 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %8 = and i32 %7, -50331649
  %9 = zext i8 %1 to i32
  %10 = shl nuw i32 %9, 24
  %11 = or i32 %8, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @tcon_ch1_get_parent(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %5 = lshr i32 %4, 24
  %6 = lshr i32 %4, 27
  %7 = and i32 %5, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcon_ch1_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  br label %4

4:                                                ; preds = %33, %3
  %5 = phi i32 [ 1, %3 ], [ %37, %33 ]
  %6 = phi i1 [ false, %3 ], [ %36, %33 ]
  %7 = phi i8 [ 0, %3 ], [ %35, %33 ]
  %8 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %9 = udiv i32 %2, %5
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = sub i32 %1, %9
  %15 = sub i32 %1, %8
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %11
  %18 = trunc i32 %5 to i8
  br label %19

19:                                               ; preds = %17, %13, %4
  %20 = phi i32 [ %8, %4 ], [ %9, %17 ], [ %8, %13 ]
  %21 = phi i8 [ %7, %4 ], [ %18, %17 ], [ %7, %13 ]
  %22 = phi i1 [ %6, %4 ], [ true, %17 ], [ %6, %13 ]
  %23 = lshr i32 %9, 1
  %24 = icmp ugt i32 %23, %1
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = sub i32 %1, %23
  %29 = sub i32 %1, %20
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %25
  %32 = trunc i32 %5 to i8
  br label %33

33:                                               ; preds = %31, %27, %19
  %34 = phi i32 [ %20, %19 ], [ %23, %31 ], [ %20, %27 ]
  %35 = phi i8 [ %21, %19 ], [ %32, %31 ], [ %21, %27 ]
  %36 = phi i1 [ %22, %19 ], [ true, %31 ], [ %22, %27 ]
  %37 = add nuw nsw i32 %5, 1
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %4

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 1
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #7
  %42 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %45 = and i32 %44, -2064
  %46 = add i8 %35, 15
  %47 = and i8 %46, 15
  %48 = zext i8 %47 to i32
  %49 = or i32 %45, %48
  %50 = or i32 %49, 2048
  %51 = select i1 %36, i32 %50, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2846983}
!10 = !{i64 2150574190}
!11 = !{i64 2150574535}
!12 = !{i64 2846565}
!13 = !{i64 2150571875}
!14 = !{i64 2150572220}
!15 = !{i64 2150576151}
!16 = !{i64 2150581496}
!17 = !{i64 2150579668}
!18 = !{i64 2150579853}
!19 = !{i64 2150577814}
!20 = !{i64 2150583433}
!21 = !{i64 2150583786}
