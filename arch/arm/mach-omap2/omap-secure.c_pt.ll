; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap-secure.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-secure.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str = private unnamed_addr constant [34 x i8] c"arch/arm/mach-omap2/omap-secure.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Secure function call 0x%08x failed\0A\00", align 1
@optee_available = dso_local local_unnamed_addr global i8 0, align 1
@omap_secure_memblock_base = internal unnamed_addr global i32 0, align 4
@__initcall__kmod_omap_secure__247_254___secure_pm_init3 = internal global ptr @__secure_pm_init, section ".initcall3.init", align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"/firmware/optee\00", align 1
@secure_notifier_block = internal global %struct.notifier_block { ptr @cpu_notifier, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_omap_secure__247_254___secure_pm_init3, ptr @__secure_pm_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_secure_dispatcher(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [5 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #6
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 1
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 2
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 3
  store i32 %5, ptr %11, align 4
  %12 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 4
  store i32 %6, ptr %12, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %13() #6
  %14 = ptrtoint ptr %8 to i32
  %15 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %14, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %16 = getelementptr inbounds i32, ptr %8, i32 5
  %17 = ptrtoint ptr %16 to i32
  %18 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %19 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  call void %19(i32 noundef %15, i32 noundef %18) #6
  br label %22

22:                                               ; preds = %21, %7
  %23 = call i32 @omap_smc2(i32 noundef %0, i32 noundef %1, i32 noundef %15) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #6
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_smc2(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_smccc_smc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %4 = and i32 %0, 65535
  %5 = or i32 %4, 33554432
  call void @__arm_smccc_smc(i32 noundef %5, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #6
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %9

9:                                                ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_smc1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  %4 = load i8, ptr @optee_available, align 1, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #6, !annotation !9
  %7 = and i32 %0, 65535
  %8 = or i32 %7, 33554432
  call void @__arm_smccc_smc(i32 noundef %8, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #6
  %9 = load i32, ptr %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %12

12:                                               ; preds = %11, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %14

13:                                               ; preds = %2
  tail call void @_omap_smc1(i32 noundef %0, i32 noundef %1) #6
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_secure_ram_reserve_memblock() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @arm_memblock_steal(i32 noundef 1048576, i32 noundef 1048576) #6
  store i32 %1, ptr @omap_secure_memblock_base, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_memblock_steal(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_secure_ram_mempool_base() local_unnamed_addr #5 {
  %1 = load i32, ptr @omap_secure_memblock_base, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_save_secure_ram(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [5 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  %4 = icmp eq i32 %1, 32831
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  store i32 4, ptr %3, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %8 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 4
  store i32 1, ptr %11, align 4
  %12 = ptrtoint ptr %3 to i32
  %13 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %12, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %14 = call i32 @save_secure_ram_context(i32 noundef %13) #6
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %14, %5 ], [ 32831, %2 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @save_secure_ram_context(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rx51_secure_dispatcher(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [5 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #6
  %10 = add i32 %3, 1
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds [5 x i32], ptr %9, i32 0, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds [5 x i32], ptr %9, i32 0, i32 2
  store i32 %5, ptr %12, align 4
  %13 = getelementptr inbounds [5 x i32], ptr %9, i32 0, i32 3
  store i32 %6, ptr %13, align 4
  %14 = getelementptr inbounds [5 x i32], ptr %9, i32 0, i32 4
  store i32 %7, ptr %14, align 4
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !12
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #6, !srcloc !13
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %15() #6
  %16 = ptrtoint ptr %9 to i32
  %17 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %16, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %18 = getelementptr inbounds i32, ptr %9, i32 5
  %19 = ptrtoint ptr %18 to i32
  %20 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %19, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %21 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  call void %21(i32 noundef %17, i32 noundef %20) #6
  br label %24

24:                                               ; preds = %23, %8
  %25 = call i32 @omap_smc3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %17) #6
  %26 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  call void %26() #6
  call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #6, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #6
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_smc3(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rx51_secure_update_aux_cr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [5 x i32], align 4
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 1", "=r"() #6, !srcloc !16
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  %7 = or i32 %6, %0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  store i32 2, ptr %3, align 4
  %8 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 4
  store i32 0, ptr %11, align 4
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !12
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #6, !srcloc !13
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %12() #6
  %13 = ptrtoint ptr %3 to i32
  %14 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %13, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %15 = getelementptr inbounds i32, ptr %3, i32 5
  %16 = ptrtoint ptr %15 to i32
  %17 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %16, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %18 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  call void %18(i32 noundef %14, i32 noundef %17) #6
  br label %21

21:                                               ; preds = %20, %2
  %22 = call i32 @omap_smc3(i32 noundef 42, i32 noundef 0, i32 noundef 4, i32 noundef %14) #6
  %23 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  call void %23() #6
  call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #6, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rx51_secure_rng_call(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [5 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  store i32 4, ptr %4, align 4
  %5 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 1
  store i32 %0, ptr %5, align 4
  %6 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 2
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 3
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 4
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !12
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #6, !srcloc !13
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %9() #6
  %10 = ptrtoint ptr %4 to i32
  %11 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %12 = getelementptr inbounds i32, ptr %4, i32 5
  %13 = ptrtoint ptr %12 to i32
  %14 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %13, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %15 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  call void %15(i32 noundef %11, i32 noundef %14) #6
  br label %18

18:                                               ; preds = %17, %3
  %19 = call i32 @omap_smc3(i32 noundef 29, i32 noundef 0, i32 noundef 0, i32 noundef %11) #6
  %20 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  call void %20() #6
  call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #6, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_secure_init() local_unnamed_addr #4 section ".init.text" {
  tail call fastcc void @omap_optee_init_check() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_optee_init_check() unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.2, ptr noundef null) #6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #6
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i8 1, ptr @optee_available, align 1
  br label %6

6:                                                ; preds = %5, %3, %0
  tail call void @of_node_put(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__secure_pm_init() #4 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @secure_pm_init() #8
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @secure_pm_init() unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @omap_type() #6
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @omap_rev() #6
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 68
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @secure_notifier_block) #6
  br label %9

9:                                                ; preds = %7, %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca [5 x i32], align 4
  %5 = icmp eq i32 %1, 5
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %7() #6
  %8 = ptrtoint ptr %4 to i32
  %9 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %8, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %10 = getelementptr inbounds i32, ptr %4, i32 5
  %11 = ptrtoint ptr %10 to i32
  %12 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %11, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %13 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  call void %13(i32 noundef %9, i32 noundef %12) #6
  br label %16

16:                                               ; preds = %15, %6
  %17 = call i32 @omap_smc2(i32 noundef 33, i32 noundef 4, i32 noundef %9) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %18

18:                                               ; preds = %16, %3
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { cold }

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
!8 = !{i64 2148805156, i64 2148805179, i64 2148805211, i64 2148805243, i64 2148805281, i64 2148805311}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{i64 367071}
!13 = !{i64 2154293039}
!14 = !{i64 2154293469}
!15 = !{i64 366881}
!16 = !{i64 4626}
