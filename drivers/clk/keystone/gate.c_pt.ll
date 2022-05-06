; ModuleID = '/llk/IR/drivers/clk/keystone/gate.c_pt.bc'
source_filename = "../drivers/clk/keystone/gate.c"
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
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_psc_data = type { ptr, ptr, i32 }
%struct.clk_psc = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_keystone_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,psc-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_keystone_psc_clk_init }, section "__clk_of_table", align 4
@__UNIQUE_ID_file112 = internal constant [36 x i8] c"gate.file=drivers/clk/keystone/gate\00", section ".modinfo", align 1
@__UNIQUE_ID_license113 = internal constant [17 x i8] c"gate.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description114 = internal constant [59 x i8] c"gate.description=Clock driver for Keystone 2 based devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author115 = internal constant [51 x i8] c"gate.author=Murali Karicheri <m-karicheri2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author116 = internal constant [57 x i8] c"gate.author=Santosh Shilimkar <santosh.shilimkar@ti.com>\00", section ".modinfo", align 1
@psc_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"\013%s: Out of memory\0A\00", align 1
@__func__.of_psc_clk_init = private unnamed_addr constant [16 x i8] c"of_psc_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013%s: control ioremap failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\013%s: domain ioremap failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"domain-id\00", align 1
@domain_transition_base = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\013%s: Parent clock not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\013%s: error registering clk %pOFn\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clk_psc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @keystone_clk_enable, ptr @keystone_clk_disable, ptr @keystone_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author115, ptr @__UNIQUE_ID_author116, ptr @__UNIQUE_ID_description114, ptr @__UNIQUE_ID_file112, ptr @__UNIQUE_ID_license113, ptr @__of_table_keystone_gate_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_keystone_psc_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_psc_clk_init(ptr noundef %0) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_psc_clk_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_psc_clk_init) #10
  br label %68

11:                                               ; preds = %1
  %12 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  %13 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %12) #8
  store ptr %13, ptr %7, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.of_psc_clk_init) #10
  br label %67

17:                                               ; preds = %11
  %18 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #8
  %19 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %18) #8
  %20 = getelementptr inbounds %struct.clk_psc_data, ptr %7, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_psc_clk_init) #10
  br label %65

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.clk_psc_data, ptr %7, i32 0, i32 2
  %26 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %25, i32 noundef 1, i32 noundef 0) #8
  %27 = load ptr, ptr @domain_transition_base, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, ptr %25, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load ptr, ptr %20, align 4
  store ptr %33, ptr @domain_transition_base, align 4
  br label %34

34:                                               ; preds = %32, %29, %24
  %35 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #8
  %36 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.of_psc_clk_init) #10
  br label %62

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr %36, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %42 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %42, i8 0, i32 12, i1 false) #8, !annotation !8
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 20) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %60

47:                                               ; preds = %40
  store ptr %41, ptr %3, align 4
  %48 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @clk_psc_ops, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.clk_psc, ptr %44, i32 0, i32 1
  store ptr %7, ptr %52, align 4
  %53 = getelementptr inbounds %struct.clk_psc, ptr %44, i32 0, i32 2
  store ptr @psc_lock, ptr %53, align 8
  %54 = getelementptr inbounds %struct.clk_hw, ptr %44, i32 0, i32 2
  store ptr %3, ptr %54, align 8
  %55 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %44) #8
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  call void @kfree(ptr noundef nonnull %44) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %60

58:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %59 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %55) #8
  br label %68

60:                                               ; preds = %57, %46
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.of_psc_clk_init, ptr noundef %0) #10
  br label %62

62:                                               ; preds = %60, %38
  %63 = load ptr, ptr %20, align 4
  call void @iounmap(ptr noundef %63) #8
  %64 = load ptr, ptr %7, align 8
  br label %65

65:                                               ; preds = %62, %22
  %66 = phi ptr [ %64, %62 ], [ %13, %22 ]
  call void @iounmap(ptr noundef %66) #8
  br label %67

67:                                               ; preds = %65, %15
  call void @kfree(ptr noundef nonnull %7) #8
  br label %68

68:                                               ; preds = %67, %58, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

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
define internal i32 @keystone_clk_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_psc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_psc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.clk_psc_data, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_psc_data, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call fastcc void @psc_config(ptr noundef %11, ptr noundef %13, i32 noundef 3, i32 noundef %15)
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %16, i32 noundef %10) #8
  br label %19

19:                                               ; preds = %18, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keystone_clk_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_psc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_psc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.clk_psc_data, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_psc_data, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call fastcc void @psc_config(ptr noundef %11, ptr noundef %13, i32 noundef 2, i32 noundef %15)
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %16, i32 noundef %10) #8
  br label %19

19:                                               ; preds = %18, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keystone_clk_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_psc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %7 = lshr i32 %6, 12
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @psc_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr i8, ptr %0, i32 2560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %7 = and i32 %6, -64
  %8 = or i32 %7, %2
  %9 = icmp eq i32 %2, 2
  %10 = and i32 %8, -257
  %11 = select i1 %9, i32 %10, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %11) #8, !srcloc !13
  %12 = getelementptr i8, ptr %1, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %14 = and i32 %13, 31
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = getelementptr i8, ptr %1, i32 768
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %19 = or i32 %18, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #8, !srcloc !13
  br label %20

20:                                               ; preds = %16, %4
  %21 = shl nuw i32 1, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr @domain_transition_base, align 4
  %23 = getelementptr i8, ptr %22, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !13
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i32 [ 65535, %20 ], [ %31, %24 ]
  %26 = load ptr, ptr @domain_transition_base, align 4
  %27 = getelementptr i8, ptr %26, i32 296
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %29 = and i32 %28, %21
  %30 = icmp eq i32 %29, 0
  %31 = add nsw i32 %25, -1
  %32 = icmp eq i32 %25, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %24

34:                                               ; preds = %24
  %35 = getelementptr i8, ptr %0, i32 2048
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %41, %36 ], [ 65535, %34 ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %39 = and i32 %38, 63
  %40 = icmp eq i32 %39, %2
  %41 = add nsw i32 %37, -1
  %42 = icmp eq i32 %37, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %36

44:                                               ; preds = %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2847378}
!10 = !{i64 2150759097}
!11 = !{i64 2150754975}
!12 = !{i64 2150755260}
!13 = !{i64 2846960}
!14 = !{i64 2150755742}
!15 = !{i64 2150756093}
!16 = !{i64 2150756370}
!17 = !{i64 2150756711}
!18 = !{i64 2150757236}
!19 = !{i64 2150757592}
