; ModuleID = '/llk/IR/drivers/crypto/exynos-rng.c_pt.bc'
source_filename = "../drivers/crypto/exynos-rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rng_alg = type { ptr, ptr, ptr, i32, [48 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.5, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.5 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exynos_rng_dev = type { ptr, i32, ptr, ptr, %struct.mutex, [20 x i8], i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@exynos_rng_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-prng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description168 = internal constant [54 x i8] c"description=Exynos H/W Random Number Generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [45 x i8] c"author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@exynos_rng_driver = internal global %struct.platform_driver { ptr @exynos_rng_probe, ptr @exynos_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_rng_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_rng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"exynos-rng\00", align 1
@exynos_rng_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_rng_suspend, ptr @exynos_rng_resume, ptr @exynos_rng_suspend, ptr @exynos_rng_resume, ptr @exynos_rng_suspend, ptr @exynos_rng_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@exynos_rng_dev = internal unnamed_addr global ptr null, align 4
@exynos_rng_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&rng->lock\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"secss\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Couldn't get clock.\0A\00", align 1
@exynos_rng_alg = internal global %struct.rng_alg { ptr @exynos_rng_generate, ptr @exynos_rng_seed, ptr null, i32 20, [48 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"stdrng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.5 zeroinitializer, ptr @exynos_rng_kcapi_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@.str.4 = private unnamed_addr constant [38 x i8] c"Couldn't register rng crypto alg: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [27 x i8] c"Seed setting not finished\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_license170], section "llvm.metadata"

@__mod_of__exynos_rng_dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @exynos_rng_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_rng_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_rng_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_rng_probe(ptr noundef %0) #2 {
  %2 = load ptr, ptr @exynos_rng_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 68, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %5) #8
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr inbounds %struct.exynos_rng_dev, ptr %6, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.exynos_rng_dev, ptr %6, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_rng_probe.__key) #8
  store ptr %5, ptr %6, align 4
  %13 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  %14 = getelementptr inbounds %struct.exynos_rng_dev, ptr %6, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #9
  %17 = load ptr, ptr %14, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %30

19:                                               ; preds = %8
  %20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.exynos_rng_dev, ptr %6, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %26, align 8
  store ptr %6, ptr @exynos_rng_dev, align 4
  %27 = tail call i32 @crypto_register_rng(ptr noundef nonnull @exynos_rng_alg) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %27) #9
  store ptr null, ptr @exynos_rng_dev, align 4
  br label %30

30:                                               ; preds = %29, %25, %23, %16, %4, %1
  %31 = phi i32 [ %18, %16 ], [ %24, %23 ], [ -17, %1 ], [ -12, %4 ], [ %27, %29 ], [ 0, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_rng_remove(ptr nocapture noundef readnone %0) #2 {
  tail call void @crypto_unregister_rng(ptr noundef nonnull @exynos_rng_alg) #8
  store ptr null, ptr @exynos_rng_dev, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_rng_generate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca [20 x i8], align 1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos_rng_dev, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %209

13:                                               ; preds = %5
  %14 = tail call i32 @clk_enable(ptr noundef %10) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %209

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.exynos_rng_dev, ptr %8, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.exynos_rng_dev, ptr %8, i32 0, i32 1
  %20 = getelementptr inbounds %struct.exynos_rng_dev, ptr %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.exynos_rng_dev, ptr %8, i32 0, i32 8
  %22 = getelementptr inbounds %struct.exynos_rng_dev, ptr %8, i32 0, i32 7
  %23 = getelementptr inbounds i8, ptr %6, i32 1
  %24 = getelementptr inbounds i8, ptr %6, i32 2
  %25 = getelementptr inbounds i8, ptr %6, i32 3
  %26 = getelementptr inbounds i8, ptr %6, i32 4
  %27 = getelementptr inbounds i8, ptr %6, i32 5
  %28 = getelementptr inbounds i8, ptr %6, i32 6
  %29 = getelementptr inbounds i8, ptr %6, i32 7
  %30 = getelementptr inbounds i8, ptr %6, i32 8
  %31 = getelementptr inbounds i8, ptr %6, i32 9
  %32 = getelementptr inbounds i8, ptr %6, i32 10
  %33 = getelementptr inbounds i8, ptr %6, i32 11
  %34 = getelementptr inbounds i8, ptr %6, i32 12
  %35 = getelementptr inbounds i8, ptr %6, i32 13
  %36 = getelementptr inbounds i8, ptr %6, i32 14
  %37 = getelementptr inbounds i8, ptr %6, i32 15
  %38 = getelementptr inbounds i8, ptr %6, i32 16
  %39 = getelementptr inbounds i8, ptr %6, i32 17
  %40 = getelementptr inbounds i8, ptr %6, i32 18
  %41 = getelementptr inbounds i8, ptr %6, i32 19
  br label %42

42:                                               ; preds = %204, %17
  %43 = phi ptr [ %3, %17 ], [ %76, %204 ]
  %44 = phi i32 [ %4, %17 ], [ %75, %204 ]
  %45 = load i32, ptr %19, align 4
  switch i32 %45, label %51 [
    i32 1, label %46
    i32 2, label %48
  ]

46:                                               ; preds = %42
  %47 = load ptr, ptr %20, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 24) #8, !srcloc !8
  br label %51

48:                                               ; preds = %42
  %49 = load ptr, ptr %20, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 2) #8, !srcloc !8
  br label %51

51:                                               ; preds = %48, %46, %42
  %52 = load ptr, ptr %20, align 4
  %53 = getelementptr i8, ptr %52, i32 16
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !9
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %61, %51
  %58 = phi i32 [ %59, %61 ], [ 100, %51 ]
  %59 = add nsw i32 %58, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %206, label %61

61:                                               ; preds = %57
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !11
  %62 = load ptr, ptr %20, align 4
  %63 = getelementptr i8, ptr %62, i32 16
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !9
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %57, label %67

67:                                               ; preds = %61, %51
  %68 = load ptr, ptr %20, align 4
  %69 = getelementptr i8, ptr %68, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 32) #8, !srcloc !8
  %70 = call i32 @llvm.umin.i32(i32 %44, i32 20) #8
  %71 = load ptr, ptr %20, align 4
  %72 = getelementptr i8, ptr %71, i32 352
  call void @mmiocpy(ptr noundef %43, ptr noundef %72, i32 noundef %70) #8
  %73 = load i32, ptr %21, align 4
  %74 = add i32 %73, %70
  store i32 %74, ptr %21, align 4
  %75 = sub i32 %44, %70
  %76 = getelementptr i8, ptr %43, i32 %70
  %77 = load i32, ptr %22, align 4
  %78 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %6, i8 0, i32 20, i1 false) #8, !annotation !12
  %79 = sub i32 -100, %77
  %80 = add i32 %79, %78
  %81 = icmp slt i32 %80, 0
  %82 = icmp ult i32 %74, 65536
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %204, label %84

84:                                               ; preds = %67
  %85 = load i32, ptr %19, align 4
  switch i32 %85, label %91 [
    i32 1, label %86
    i32 2, label %88
  ]

86:                                               ; preds = %84
  %87 = load ptr, ptr %20, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 24) #8, !srcloc !8
  br label %91

88:                                               ; preds = %84
  %89 = load ptr, ptr %20, align 4
  %90 = getelementptr i8, ptr %89, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 2) #8, !srcloc !8
  br label %91

91:                                               ; preds = %88, %86, %84
  %92 = load ptr, ptr %20, align 4
  %93 = getelementptr i8, ptr %92, i32 16
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #8, !srcloc !9
  %95 = and i32 %94, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %101, %91
  %98 = phi i32 [ %99, %101 ], [ 100, %91 ]
  %99 = add nsw i32 %98, -1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %204, label %101

101:                                              ; preds = %97
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !11
  %102 = load ptr, ptr %20, align 4
  %103 = getelementptr i8, ptr %102, i32 16
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #8, !srcloc !9
  %105 = and i32 %104, 32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %97, label %107

107:                                              ; preds = %101, %91
  %108 = load ptr, ptr %20, align 4
  %109 = getelementptr i8, ptr %108, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 32) #8, !srcloc !8
  %110 = load ptr, ptr %20, align 4
  %111 = getelementptr i8, ptr %110, i32 352
  call void @mmiocpy(ptr noundef nonnull %6, ptr noundef %111, i32 noundef 20) #8
  %112 = load i32, ptr %21, align 4
  %113 = add i32 %112, 20
  store i32 %113, ptr %21, align 4
  %114 = load i8, ptr %6, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw i32 %115, 24
  %117 = load i8, ptr %23, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 16
  %120 = or i32 %119, %116
  %121 = load i8, ptr %24, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = or i32 %120, %123
  %125 = load i8, ptr %25, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %124, %126
  %128 = load ptr, ptr %20, align 4
  %129 = getelementptr i8, ptr %128, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #8, !srcloc !8
  %130 = load i8, ptr %26, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw i32 %131, 24
  %133 = load i8, ptr %27, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or i32 %135, %132
  %137 = load i8, ptr %28, align 1
  %138 = zext i8 %137 to i32
  %139 = shl nuw nsw i32 %138, 8
  %140 = or i32 %136, %139
  %141 = load i8, ptr %29, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %140, %142
  %144 = load ptr, ptr %20, align 4
  %145 = getelementptr i8, ptr %144, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #8, !srcloc !8
  %146 = load i8, ptr %30, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw i32 %147, 24
  %149 = load i8, ptr %31, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 16
  %152 = or i32 %151, %148
  %153 = load i8, ptr %32, align 1
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 8
  %156 = or i32 %152, %155
  %157 = load i8, ptr %33, align 1
  %158 = zext i8 %157 to i32
  %159 = or i32 %156, %158
  %160 = load ptr, ptr %20, align 4
  %161 = getelementptr i8, ptr %160, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #8, !srcloc !8
  %162 = load i8, ptr %34, align 1
  %163 = zext i8 %162 to i32
  %164 = shl nuw i32 %163, 24
  %165 = load i8, ptr %35, align 1
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 16
  %168 = or i32 %167, %164
  %169 = load i8, ptr %36, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 8
  %172 = or i32 %168, %171
  %173 = load i8, ptr %37, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %172, %174
  %176 = load ptr, ptr %20, align 4
  %177 = getelementptr i8, ptr %176, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #8, !srcloc !8
  %178 = load i8, ptr %38, align 1
  %179 = zext i8 %178 to i32
  %180 = shl nuw i32 %179, 24
  %181 = load i8, ptr %39, align 1
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 16
  %184 = or i32 %183, %180
  %185 = load i8, ptr %40, align 1
  %186 = zext i8 %185 to i32
  %187 = shl nuw nsw i32 %186, 8
  %188 = or i32 %184, %187
  %189 = load i8, ptr %41, align 1
  %190 = zext i8 %189 to i32
  %191 = or i32 %188, %190
  %192 = load ptr, ptr %20, align 4
  %193 = getelementptr i8, ptr %192, i32 336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #8, !srcloc !8
  %194 = load ptr, ptr %20, align 4
  %195 = getelementptr i8, ptr %194, i32 16
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #8, !srcloc !9
  %197 = and i32 %196, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %107
  %200 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %200, ptr noundef nonnull @.str.5) #9
  br label %203

201:                                              ; preds = %107
  %202 = load volatile i32, ptr @jiffies, align 64
  store i32 %202, ptr %22, align 4
  store i32 0, ptr %21, align 4
  br label %203

203:                                              ; preds = %201, %199
  call void @mutex_unlock(ptr noundef %18) #8
  call void @mutex_lock(ptr noundef %18) #8
  br label %204

204:                                              ; preds = %203, %97, %67
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  %205 = icmp eq i32 %75, 0
  br i1 %205, label %206, label %42

206:                                              ; preds = %204, %57
  %207 = phi i32 [ -110, %57 ], [ 0, %204 ]
  call void @mutex_unlock(ptr noundef %18) #8
  %208 = load ptr, ptr %9, align 4
  call void @clk_disable(ptr noundef %208) #8
  call void @clk_unprepare(ptr noundef %208) #8
  br label %209

209:                                              ; preds = %206, %16, %5
  %210 = phi i32 [ %207, %206 ], [ %14, %16 ], [ %11, %5 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_rng_seed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_rng_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %3
  %11 = tail call i32 @clk_enable(ptr noundef %7) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.exynos_rng_dev, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %14) #8
  %15 = load ptr, ptr %4, align 4
  %16 = and i32 %2, -4
  %17 = icmp ult i32 %16, 20
  br i1 %17, label %63, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.exynos_rng_dev, ptr %15, i32 0, i32 2
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %49, %20 ], [ 0, %18 ]
  %22 = sdiv i32 %21, 4
  %23 = srem i32 %22, 5
  %24 = getelementptr i8, ptr %1, i32 %21
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = or i32 %21, 1
  %29 = getelementptr i8, ptr %1, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %27
  %34 = or i32 %21, 2
  %35 = getelementptr i8, ptr %1, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %33, %38
  %40 = or i32 %21, 3
  %41 = getelementptr i8, ptr %1, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %39, %43
  %45 = shl nsw i32 %23, 2
  %46 = add nsw i32 %45, 320
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %44) #8, !srcloc !8
  %49 = add nuw i32 %21, 4
  %50 = icmp ult i32 %49, %16
  br i1 %50, label %20, label %51

51:                                               ; preds = %20
  %52 = load ptr, ptr %19, align 4
  %53 = getelementptr i8, ptr %52, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !9
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.5) #9
  br label %63

59:                                               ; preds = %51
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.exynos_rng_dev, ptr %15, i32 0, i32 7
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.exynos_rng_dev, ptr %15, i32 0, i32 8
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %57, %13
  %64 = phi i32 [ 0, %59 ], [ -5, %57 ], [ -22, %13 ]
  tail call void @mutex_unlock(ptr noundef %14) #8
  %65 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %65) #8
  br label %66

66:                                               ; preds = %63, %10
  %67 = phi ptr [ %65, %63 ], [ %7, %10 ]
  %68 = phi i32 [ %64, %63 ], [ %11, %10 ]
  tail call void @clk_unprepare(ptr noundef %67) #8
  br label %69

69:                                               ; preds = %66, %3
  %70 = phi i32 [ %8, %3 ], [ %68, %66 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @exynos_rng_kcapi_init(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr @exynos_rng_dev, align 4
  store ptr %3, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_rng_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 6
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %7
  %14 = tail call i32 @clk_enable(ptr noundef %10) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 5
  %19 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %28 [
    i32 1, label %21
    i32 2, label %24
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 24) #8, !srcloc !8
  br label %28

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 2) #8, !srcloc !8
  br label %28

28:                                               ; preds = %24, %21, %16
  %29 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !9
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %39, %28
  %36 = phi i32 [ %37, %39 ], [ 100, %28 ]
  %37 = add nsw i32 %36, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !11
  %40 = load ptr, ptr %29, align 4
  %41 = getelementptr i8, ptr %40, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !9
  %43 = and i32 %42, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %35, label %45

45:                                               ; preds = %39, %28
  %46 = load ptr, ptr %29, align 4
  %47 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 32) #8, !srcloc !8
  store i32 20, ptr %8, align 4
  %48 = load ptr, ptr %29, align 4
  %49 = getelementptr i8, ptr %48, i32 352
  tail call void @mmiocpy(ptr noundef %18, ptr noundef %49, i32 noundef 20) #8
  %50 = load i32, ptr %8, align 4
  %51 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %50
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %45, %35
  tail call void @mutex_unlock(ptr noundef %17) #8
  %55 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %55) #8
  br label %56

56:                                               ; preds = %54, %13
  %57 = phi ptr [ %55, %54 ], [ %10, %13 ]
  %58 = phi i32 [ 0, %54 ], [ %14, %13 ]
  tail call void @clk_unprepare(ptr noundef %57) #8
  br label %59

59:                                               ; preds = %56, %7, %1
  %60 = phi i32 [ 0, %1 ], [ %11, %7 ], [ %58, %56 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_rng_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 5
  %18 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -4
  %21 = icmp ult i32 %20, 20
  br i1 %21, label %66, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 2
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %53, %24 ], [ 0, %22 ]
  %26 = sdiv i32 %25, 4
  %27 = srem i32 %26, 5
  %28 = getelementptr i8, ptr %17, i32 %25
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = or i32 %25, 1
  %33 = getelementptr i8, ptr %17, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %36, %31
  %38 = or i32 %25, 2
  %39 = getelementptr i8, ptr %17, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %37, %42
  %44 = or i32 %25, 3
  %45 = getelementptr i8, ptr %17, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %43, %47
  %49 = shl nsw i32 %27, 2
  %50 = add nsw i32 %49, 320
  %51 = load ptr, ptr %23, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #8, !srcloc !8
  %53 = add nuw i32 %25, 4
  %54 = icmp ult i32 %53, %20
  br i1 %54, label %24, label %55

55:                                               ; preds = %24
  %56 = load ptr, ptr %23, align 4
  %57 = getelementptr i8, ptr %56, i32 16
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !9
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.5) #9
  br label %66

63:                                               ; preds = %55
  %64 = load volatile i32, ptr @jiffies, align 64
  store i32 %64, ptr %4, align 4
  %65 = getelementptr inbounds %struct.exynos_rng_dev, ptr %3, i32 0, i32 8
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %61, %15
  %67 = phi i32 [ 0, %63 ], [ -5, %61 ], [ -22, %15 ]
  tail call void @mutex_unlock(ptr noundef %16) #8
  %68 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %68) #8
  br label %69

69:                                               ; preds = %66, %12
  %70 = phi ptr [ %68, %66 ], [ %9, %12 ]
  %71 = phi i32 [ %67, %66 ], [ %13, %12 ]
  tail call void @clk_unprepare(ptr noundef %70) #8
  br label %72

72:                                               ; preds = %69, %7, %1
  %73 = phi i32 [ 0, %1 ], [ %10, %7 ], [ %71, %69 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2669831}
!9 = !{i64 2670249}
!10 = !{i64 2151542255}
!11 = !{i64 2151542097}
!12 = !{!"auto-init"}
