; ModuleID = '/llk/IR/lib/random32.c_pt.bc'
source_filename = "../lib/random32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_u32_state:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_u32_state\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_u32_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_bytes_state:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_bytes_state\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_bytes_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_seed_full_state:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_seed_full_state\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_seed_full_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_rand_noise:\09\09\09\09\09"
module asm "\09.asciz \09\22net_rand_noise\22\09\09\09\09\09"
module asm "__kstrtabns_net_rand_noise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_u32\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_seed:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_seed\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_seed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.siprand_state = type { i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.random_ready_callback = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_prandom_u32_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_u32_state = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_u32_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_u32_state to i32), ptr @__kstrtab_prandom_u32_state, ptr @__kstrtabns_prandom_u32_state }, section "___ksymtab+prandom_u32_state", align 4
@__kstrtab_prandom_bytes_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_bytes_state = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_bytes_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_bytes_state to i32), ptr @__kstrtab_prandom_bytes_state, ptr @__kstrtabns_prandom_bytes_state }, section "___ksymtab+prandom_bytes_state", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_prandom_seed_full_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_seed_full_state = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_seed_full_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_seed_full_state to i32), ptr @__kstrtab_prandom_seed_full_state, ptr @__kstrtabns_prandom_seed_full_state }, section "___ksymtab+prandom_seed_full_state", align 4
@net_rand_noise = dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_net_rand_noise = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_rand_noise = external dso_local constant [0 x i8], align 1
@__ksymtab_net_rand_noise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_rand_noise to i32), ptr @__kstrtab_net_rand_noise, ptr @__kstrtabns_net_rand_noise }, section "___ksymtab+net_rand_noise", align 4
@net_rand_state = internal global %struct.siprand_state zeroinitializer, section ".data..percpu", align 4
@__kstrtab_prandom_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_u32 to i32), ptr @__kstrtab_prandom_u32, ptr @__kstrtabns_prandom_u32 }, section "___ksymtab+prandom_u32", align 4
@__kstrtab_prandom_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_bytes to i32), ptr @__kstrtab_prandom_bytes, ptr @__kstrtabns_prandom_bytes }, section "___ksymtab+prandom_bytes", align 4
@__kstrtab_prandom_seed = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_seed = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_seed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_seed to i32), ptr @__kstrtab_prandom_seed, ptr @__kstrtabns_prandom_seed }, section "___ksymtab+prandom_seed", align 4
@__initcall__kmod_random32__263_490_prandom_init_early1 = internal global ptr @prandom_init_early, section ".initcall1.init", align 4
@__initcall__kmod_random32__268_633_prandom_init_late7 = internal global ptr @prandom_init_late, section ".initcall7.init", align 4
@__tracepoint_prandom_u32 = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@prandom_init_late.random_ready = internal global %struct.random_ready_callback { %struct.list_head zeroinitializer, ptr @prandom_timer_start, ptr null }, align 4
@seed_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @prandom_reseed, i32 0 }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_random32__263_490_prandom_init_early1, ptr @__initcall__kmod_random32__268_633_prandom_init_late7, ptr @__ksymtab_net_rand_noise, ptr @__ksymtab_prandom_bytes, ptr @__ksymtab_prandom_bytes_state, ptr @__ksymtab_prandom_seed, ptr @__ksymtab_prandom_seed_full_state, ptr @__ksymtab_prandom_u32, ptr @__ksymtab_prandom_u32_state], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @prandom_u32_state(ptr nocapture noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = shl i32 %2, 18
  %4 = and i32 %3, -524288
  %5 = shl i32 %2, 6
  %6 = xor i32 %5, %2
  %7 = lshr i32 %6, 13
  %8 = or i32 %7, %4
  store i32 %8, ptr %0, align 4
  %9 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = and i32 %11, -32
  %13 = xor i32 %11, %10
  %14 = lshr i32 %13, 27
  %15 = or i32 %14, %12
  store i32 %15, ptr %9, align 4
  %16 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 7
  %19 = and i32 %18, -2048
  %20 = shl i32 %17, 13
  %21 = xor i32 %20, %17
  %22 = lshr i32 %21, 21
  %23 = or i32 %22, %19
  store i32 %23, ptr %16, align 4
  %24 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 13
  %27 = and i32 %26, -1048576
  %28 = shl i32 %25, 3
  %29 = xor i32 %28, %25
  %30 = lshr i32 %29, 12
  %31 = or i32 %30, %27
  store i32 %31, ptr %24, align 4
  %32 = xor i32 %15, %8
  %33 = xor i32 %32, %23
  %34 = xor i32 %33, %31
  ret i32 %34
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prandom_bytes_state(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #1 {
  %4 = icmp ugt i32 %2, 3
  br i1 %4, label %5, label %45

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %2, %5 ], [ %43, %9 ]
  %11 = phi ptr [ %1, %5 ], [ %42, %9 ]
  %12 = load i32, ptr %0, align 4
  %13 = shl i32 %12, 18
  %14 = and i32 %13, -524288
  %15 = shl i32 %12, 6
  %16 = xor i32 %15, %12
  %17 = lshr i32 %16, 13
  %18 = or i32 %17, %14
  store i32 %18, ptr %0, align 4
  %19 = load i32, ptr %6, align 4
  %20 = shl i32 %19, 2
  %21 = and i32 %20, -32
  %22 = xor i32 %20, %19
  %23 = lshr i32 %22, 27
  %24 = or i32 %23, %21
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %7, align 4
  %26 = shl i32 %25, 7
  %27 = and i32 %26, -2048
  %28 = shl i32 %25, 13
  %29 = xor i32 %28, %25
  %30 = lshr i32 %29, 21
  %31 = or i32 %30, %27
  store i32 %31, ptr %7, align 4
  %32 = load i32, ptr %8, align 4
  %33 = shl i32 %32, 13
  %34 = and i32 %33, -1048576
  %35 = shl i32 %32, 3
  %36 = xor i32 %35, %32
  %37 = lshr i32 %36, 12
  %38 = or i32 %37, %34
  store i32 %38, ptr %8, align 4
  %39 = xor i32 %24, %18
  %40 = xor i32 %39, %31
  %41 = xor i32 %40, %38
  store i32 %41, ptr %11, align 1
  %42 = getelementptr i8, ptr %11, i32 4
  %43 = add i32 %10, -4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %9, label %45

45:                                               ; preds = %9, %3
  %46 = phi ptr [ %1, %3 ], [ %42, %9 ]
  %47 = phi i32 [ %2, %3 ], [ %43, %9 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %0, align 4
  %51 = shl i32 %50, 18
  %52 = and i32 %51, -524288
  %53 = shl i32 %50, 6
  %54 = xor i32 %53, %50
  %55 = lshr i32 %54, 13
  %56 = or i32 %55, %52
  store i32 %56, ptr %0, align 4
  %57 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 2
  %60 = and i32 %59, -32
  %61 = xor i32 %59, %58
  %62 = lshr i32 %61, 27
  %63 = or i32 %62, %60
  store i32 %63, ptr %57, align 4
  %64 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 7
  %67 = and i32 %66, -2048
  %68 = shl i32 %65, 13
  %69 = xor i32 %68, %65
  %70 = lshr i32 %69, 21
  %71 = or i32 %70, %67
  store i32 %71, ptr %64, align 4
  %72 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 13
  %75 = and i32 %74, -1048576
  %76 = shl i32 %73, 3
  %77 = xor i32 %76, %73
  %78 = lshr i32 %77, 12
  %79 = or i32 %78, %75
  store i32 %79, ptr %72, align 4
  %80 = xor i32 %63, %56
  %81 = xor i32 %80, %71
  %82 = xor i32 %81, %79
  br label %83

83:                                               ; preds = %83, %49
  %84 = phi ptr [ %46, %49 ], [ %88, %83 ]
  %85 = phi i32 [ %47, %49 ], [ %89, %83 ]
  %86 = phi i32 [ %82, %49 ], [ %90, %83 ]
  %87 = trunc i32 %86 to i8
  %88 = getelementptr i8, ptr %84, i32 1
  store i8 %87, ptr %84, align 1
  %89 = add i32 %85, -1
  %90 = lshr i32 %86, 8
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %92, label %83

92:                                               ; preds = %83, %45
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prandom_seed_full_state(ptr noundef %0) #3 {
  %2 = alloca [4 x i32], align 4
  %3 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %269

6:                                                ; preds = %1
  %7 = ptrtoint ptr %0 to i32
  %8 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %3, %6 ], [ %266, %11 ]
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %7
  %16 = inttoptr i32 %15 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 16) #12
  %17 = load i32, ptr %2, align 4
  %18 = icmp ult i32 %17, 2
  %19 = select i1 %18, i32 2, i32 0
  %20 = add i32 %19, %17
  store i32 %20, ptr %16, align 4
  %21 = load i32, ptr %8, align 4
  %22 = icmp ult i32 %21, 8
  %23 = select i1 %22, i32 8, i32 0
  %24 = add i32 %23, %21
  %25 = getelementptr inbounds %struct.rnd_state, ptr %16, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %9, align 4
  %27 = icmp ult i32 %26, 16
  %28 = select i1 %27, i32 16, i32 0
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds %struct.rnd_state, ptr %16, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %10, align 4
  %32 = icmp ult i32 %31, 128
  %33 = select i1 %32, i32 128, i32 0
  %34 = add i32 %33, %31
  %35 = getelementptr inbounds %struct.rnd_state, ptr %16, i32 0, i32 3
  %36 = shl i32 %20, 18
  %37 = and i32 %36, -524288
  %38 = shl i32 %20, 6
  %39 = xor i32 %38, %20
  %40 = lshr i32 %39, 13
  %41 = or i32 %40, %37
  %42 = shl i32 %24, 2
  %43 = and i32 %42, 1073741792
  %44 = xor i32 %42, %24
  %45 = lshr i32 %44, 27
  %46 = or i32 %45, %43
  %47 = shl i32 %29, 7
  %48 = and i32 %47, -2048
  %49 = shl i32 %29, 13
  %50 = xor i32 %49, %29
  %51 = lshr i32 %50, 21
  %52 = or i32 %51, %48
  %53 = shl i32 %34, 13
  %54 = and i32 %53, -1048576
  %55 = shl i32 %34, 3
  %56 = xor i32 %55, %34
  %57 = lshr i32 %56, 12
  %58 = or i32 %57, %54
  %59 = shl i32 %40, 18
  %60 = and i32 %59, -524288
  %61 = shl i32 %41, 6
  %62 = xor i32 %61, %41
  %63 = lshr i32 %62, 13
  %64 = or i32 %63, %60
  %65 = shl nuw i32 %46, 2
  %66 = and i32 %65, 1073741792
  %67 = xor i32 %65, %42
  %68 = lshr i32 %67, 27
  %69 = or i32 %68, %66
  %70 = shl i32 %52, 7
  %71 = and i32 %70, -2048
  %72 = shl i32 %52, 13
  %73 = xor i32 %72, %47
  %74 = lshr i32 %73, 21
  %75 = or i32 %74, %71
  %76 = shl i32 %57, 13
  %77 = and i32 %76, -1048576
  %78 = shl i32 %58, 3
  %79 = xor i32 %78, %58
  %80 = lshr i32 %79, 12
  %81 = or i32 %80, %77
  %82 = shl i32 %63, 18
  %83 = and i32 %82, -524288
  %84 = shl i32 %64, 6
  %85 = xor i32 %84, %64
  %86 = lshr i32 %85, 13
  %87 = or i32 %86, %83
  %88 = shl nuw i32 %69, 2
  %89 = and i32 %88, 1073741792
  %90 = xor i32 %88, %65
  %91 = lshr i32 %90, 27
  %92 = or i32 %91, %89
  %93 = shl i32 %75, 7
  %94 = and i32 %93, -2048
  %95 = shl i32 %75, 13
  %96 = xor i32 %95, %70
  %97 = lshr i32 %96, 21
  %98 = or i32 %97, %94
  %99 = shl i32 %80, 13
  %100 = and i32 %99, -1048576
  %101 = shl i32 %81, 3
  %102 = xor i32 %101, %81
  %103 = lshr i32 %102, 12
  %104 = or i32 %103, %100
  %105 = shl i32 %86, 18
  %106 = and i32 %105, -524288
  %107 = shl i32 %87, 6
  %108 = xor i32 %107, %87
  %109 = lshr i32 %108, 13
  %110 = or i32 %109, %106
  %111 = shl nuw i32 %92, 2
  %112 = and i32 %111, 1073741792
  %113 = xor i32 %111, %88
  %114 = lshr i32 %113, 27
  %115 = or i32 %114, %112
  %116 = shl i32 %98, 7
  %117 = and i32 %116, -2048
  %118 = shl i32 %98, 13
  %119 = xor i32 %118, %93
  %120 = lshr i32 %119, 21
  %121 = or i32 %120, %117
  %122 = shl i32 %103, 13
  %123 = and i32 %122, -1048576
  %124 = shl i32 %104, 3
  %125 = xor i32 %124, %104
  %126 = lshr i32 %125, 12
  %127 = or i32 %126, %123
  %128 = shl i32 %109, 18
  %129 = and i32 %128, -524288
  %130 = shl i32 %110, 6
  %131 = xor i32 %130, %110
  %132 = lshr i32 %131, 13
  %133 = or i32 %132, %129
  %134 = shl nuw i32 %115, 2
  %135 = and i32 %134, 1073741792
  %136 = xor i32 %134, %111
  %137 = lshr i32 %136, 27
  %138 = or i32 %137, %135
  %139 = shl i32 %121, 7
  %140 = and i32 %139, -2048
  %141 = shl i32 %121, 13
  %142 = xor i32 %141, %116
  %143 = lshr i32 %142, 21
  %144 = or i32 %143, %140
  %145 = shl i32 %126, 13
  %146 = and i32 %145, -1048576
  %147 = shl i32 %127, 3
  %148 = xor i32 %147, %127
  %149 = lshr i32 %148, 12
  %150 = or i32 %149, %146
  %151 = shl i32 %132, 18
  %152 = and i32 %151, -524288
  %153 = shl i32 %133, 6
  %154 = xor i32 %153, %133
  %155 = lshr i32 %154, 13
  %156 = or i32 %155, %152
  %157 = shl nuw i32 %138, 2
  %158 = and i32 %157, 1073741792
  %159 = xor i32 %157, %134
  %160 = lshr i32 %159, 27
  %161 = or i32 %160, %158
  %162 = shl i32 %144, 7
  %163 = and i32 %162, -2048
  %164 = shl i32 %144, 13
  %165 = xor i32 %164, %139
  %166 = lshr i32 %165, 21
  %167 = or i32 %166, %163
  %168 = shl i32 %149, 13
  %169 = and i32 %168, -1048576
  %170 = shl i32 %150, 3
  %171 = xor i32 %170, %150
  %172 = lshr i32 %171, 12
  %173 = or i32 %172, %169
  %174 = shl i32 %155, 18
  %175 = and i32 %174, -524288
  %176 = shl i32 %156, 6
  %177 = xor i32 %176, %156
  %178 = lshr i32 %177, 13
  %179 = or i32 %178, %175
  %180 = shl nuw i32 %161, 2
  %181 = and i32 %180, 1073741792
  %182 = xor i32 %180, %157
  %183 = lshr i32 %182, 27
  %184 = or i32 %183, %181
  %185 = shl i32 %167, 7
  %186 = and i32 %185, -2048
  %187 = shl i32 %167, 13
  %188 = xor i32 %187, %162
  %189 = lshr i32 %188, 21
  %190 = or i32 %189, %186
  %191 = shl i32 %172, 13
  %192 = and i32 %191, -1048576
  %193 = shl i32 %173, 3
  %194 = xor i32 %193, %173
  %195 = lshr i32 %194, 12
  %196 = or i32 %195, %192
  %197 = shl i32 %178, 18
  %198 = and i32 %197, -524288
  %199 = shl i32 %179, 6
  %200 = xor i32 %199, %179
  %201 = lshr i32 %200, 13
  %202 = or i32 %201, %198
  %203 = shl nuw i32 %184, 2
  %204 = and i32 %203, 1073741792
  %205 = xor i32 %203, %180
  %206 = lshr i32 %205, 27
  %207 = or i32 %206, %204
  %208 = shl i32 %190, 7
  %209 = and i32 %208, -2048
  %210 = shl i32 %190, 13
  %211 = xor i32 %210, %185
  %212 = lshr i32 %211, 21
  %213 = or i32 %212, %209
  %214 = shl i32 %195, 13
  %215 = and i32 %214, -1048576
  %216 = shl i32 %196, 3
  %217 = xor i32 %216, %196
  %218 = lshr i32 %217, 12
  %219 = or i32 %218, %215
  %220 = shl i32 %201, 18
  %221 = and i32 %220, -524288
  %222 = shl i32 %202, 6
  %223 = xor i32 %222, %202
  %224 = lshr i32 %223, 13
  %225 = or i32 %224, %221
  %226 = shl nuw i32 %207, 2
  %227 = and i32 %226, 1073741792
  %228 = xor i32 %226, %203
  %229 = lshr i32 %228, 27
  %230 = or i32 %229, %227
  %231 = shl i32 %213, 7
  %232 = and i32 %231, -2048
  %233 = shl i32 %213, 13
  %234 = xor i32 %233, %208
  %235 = lshr i32 %234, 21
  %236 = or i32 %235, %232
  %237 = shl i32 %218, 13
  %238 = and i32 %237, -1048576
  %239 = shl i32 %219, 3
  %240 = xor i32 %239, %219
  %241 = lshr i32 %240, 12
  %242 = or i32 %241, %238
  %243 = shl i32 %224, 18
  %244 = and i32 %243, -524288
  %245 = shl i32 %225, 6
  %246 = xor i32 %245, %225
  %247 = lshr i32 %246, 13
  %248 = or i32 %247, %244
  store i32 %248, ptr %16, align 4
  %249 = shl nuw i32 %230, 2
  %250 = and i32 %249, -32
  %251 = xor i32 %249, %226
  %252 = lshr i32 %251, 27
  %253 = or i32 %252, %250
  store i32 %253, ptr %25, align 4
  %254 = shl i32 %236, 7
  %255 = and i32 %254, -2048
  %256 = shl i32 %236, 13
  %257 = xor i32 %256, %231
  %258 = lshr i32 %257, 21
  %259 = or i32 %258, %255
  store i32 %259, ptr %30, align 4
  %260 = shl i32 %241, 13
  %261 = and i32 %260, -1048576
  %262 = shl i32 %242, 3
  %263 = xor i32 %262, %242
  %264 = lshr i32 %263, 12
  %265 = or i32 %264, %261
  store i32 %265, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %266 = call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #11
  %267 = load i32, ptr @nr_cpu_ids, align 4
  %268 = icmp ult i32 %266, %267
  br i1 %268, label %11, label %269

269:                                              ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prandom_u32() #3 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !11
  %4 = add i32 %3, ptrtoint (ptr @net_rand_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.siprand_state, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.siprand_state, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.siprand_state, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %3, ptrtoint (ptr @net_rand_noise to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, %12
  %17 = add i32 %8, %6
  %18 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 5) #12
  %19 = add i32 %16, %10
  %20 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 8) #12
  %21 = xor i32 %18, %17
  %22 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 16) #12
  %23 = xor i32 %20, %19
  %24 = add i32 %23, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 7) #12
  %26 = add i32 %19, %21
  %27 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13) #12
  %28 = xor i32 %25, %24
  %29 = xor i32 %26, %27
  %30 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 16) #12
  %31 = add i32 %24, %29
  %32 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 5) #12
  %33 = add i32 %28, %30
  %34 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 8) #12
  %35 = xor i32 %32, %31
  %36 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 16) #12
  %37 = xor i32 %34, %33
  %38 = add i32 %37, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 7) #12
  %40 = add i32 %33, %35
  %41 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13) #12
  %42 = xor i32 %39, %38
  %43 = xor i32 %41, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 16) #12
  %45 = xor i32 %38, %15
  store i32 %45, ptr %5, align 4
  store i32 %43, ptr %7, align 4
  store i32 %44, ptr %9, align 4
  store i32 %42, ptr %11, align 4
  %46 = add i32 %42, %43
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_prandom_u32, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %0
  %50 = tail call ptr @llvm.thread.pointer() #12
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %61 = tail call i32 @__traceiter_prandom_u32(ptr noundef null, i32 noundef %46) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %62

62:                                               ; preds = %60, %49, %0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prandom_bytes(ptr nocapture noundef writeonly %0, i32 noundef %1) #3 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #8, !srcloc !11
  %6 = add i32 %5, ptrtoint (ptr @net_rand_state to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp ugt i32 %1, 3
  br i1 %8, label %9, label %60

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 3
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %1, %9 ], [ %58, %13 ]
  %15 = phi ptr [ %0, %9 ], [ %57, %13 ]
  %16 = load i32, ptr %7, align 4
  %17 = load i32, ptr %10, align 4
  %18 = load i32, ptr %11, align 4
  %19 = load i32, ptr %12, align 4
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #8, !srcloc !11
  %23 = add i32 %22, ptrtoint (ptr @net_rand_noise to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, %19
  %27 = add i32 %17, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 5) #12
  %29 = add i32 %26, %18
  %30 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 8) #12
  %31 = xor i32 %28, %27
  %32 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 16) #12
  %33 = xor i32 %30, %29
  %34 = add i32 %33, %32
  %35 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7) #12
  %36 = add i32 %29, %31
  %37 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13) #12
  %38 = xor i32 %35, %34
  %39 = xor i32 %36, %37
  %40 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 16) #12
  %41 = add i32 %34, %39
  %42 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 5) #12
  %43 = add i32 %38, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 8) #12
  %45 = xor i32 %42, %41
  %46 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 16) #12
  %47 = xor i32 %44, %43
  %48 = add i32 %47, %46
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 7) #12
  %50 = add i32 %43, %45
  %51 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13) #12
  %52 = xor i32 %49, %48
  %53 = xor i32 %51, %50
  %54 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 16) #12
  %55 = xor i32 %48, %25
  store i32 %55, ptr %7, align 4
  store i32 %53, ptr %10, align 4
  store i32 %54, ptr %11, align 4
  store i32 %52, ptr %12, align 4
  %56 = add i32 %52, %53
  store i32 %56, ptr %15, align 1
  %57 = getelementptr i8, ptr %15, i32 4
  %58 = add i32 %14, -4
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %13, label %60

60:                                               ; preds = %13, %2
  %61 = phi ptr [ %0, %2 ], [ %57, %13 ]
  %62 = phi i32 [ %1, %2 ], [ %58, %13 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %118, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %7, align 4
  %66 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %73 = inttoptr i32 %72 to ptr
  %74 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %73) #8, !srcloc !11
  %75 = add i32 %74, ptrtoint (ptr @net_rand_noise to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = load i32, ptr %76, align 4
  %78 = xor i32 %77, %71
  %79 = add i32 %67, %65
  %80 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 5) #12
  %81 = add i32 %78, %69
  %82 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 8) #12
  %83 = xor i32 %80, %79
  %84 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 16) #12
  %85 = xor i32 %82, %81
  %86 = add i32 %85, %84
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 7) #12
  %88 = add i32 %81, %83
  %89 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13) #12
  %90 = xor i32 %87, %86
  %91 = xor i32 %88, %89
  %92 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 16) #12
  %93 = add i32 %86, %91
  %94 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 5) #12
  %95 = add i32 %90, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 8) #12
  %97 = xor i32 %94, %93
  %98 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 16) #12
  %99 = xor i32 %96, %95
  %100 = add i32 %99, %98
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 7) #12
  %102 = add i32 %95, %97
  %103 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13) #12
  %104 = xor i32 %101, %100
  %105 = xor i32 %103, %102
  %106 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 16) #12
  %107 = xor i32 %100, %77
  store i32 %107, ptr %7, align 4
  store i32 %105, ptr %66, align 4
  store i32 %106, ptr %68, align 4
  store i32 %104, ptr %70, align 4
  %108 = add i32 %104, %105
  br label %109

109:                                              ; preds = %109, %64
  %110 = phi ptr [ %61, %64 ], [ %114, %109 ]
  %111 = phi i32 [ %62, %64 ], [ %116, %109 ]
  %112 = phi i32 [ %108, %64 ], [ %115, %109 ]
  %113 = trunc i32 %112 to i8
  %114 = getelementptr i8, ptr %110, i32 1
  store i8 %113, ptr %110, align 1
  %115 = lshr i32 %112, 8
  %116 = add i32 %111, -1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %109

118:                                              ; preds = %109, %60
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prandom_seed(i32 noundef %0) #3 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @add_device_randomness(ptr noundef nonnull %2, i32 noundef 4) #12
  %3 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %66

6:                                                ; preds = %62, %1
  %7 = phi i32 [ %63, %62 ], [ %3, %1 ]
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @net_rand_state to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.siprand_state, ptr %11, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.siprand_state, ptr %11, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.siprand_state, ptr %11, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %2, align 4
  br label %20

20:                                               ; preds = %20, %6
  %21 = phi i32 [ %12, %6 ], [ %54, %20 ]
  %22 = phi i32 [ %14, %6 ], [ %52, %20 ]
  %23 = phi i32 [ %16, %6 ], [ %53, %20 ]
  %24 = phi i32 [ %18, %6 ], [ %51, %20 ]
  %25 = xor i32 %19, %24
  %26 = add i32 %22, %21
  %27 = call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 5) #12
  %28 = add i32 %25, %23
  %29 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 8) #12
  %30 = xor i32 %27, %26
  %31 = call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 16) #12
  %32 = xor i32 %29, %28
  %33 = add i32 %32, %31
  %34 = call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 7) #12
  %35 = add i32 %28, %30
  %36 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13) #12
  %37 = xor i32 %34, %33
  %38 = xor i32 %35, %36
  %39 = call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 16) #12
  %40 = add i32 %33, %38
  %41 = call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 5) #12
  %42 = add i32 %37, %39
  %43 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 8) #12
  %44 = xor i32 %41, %40
  %45 = call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 16) #12
  %46 = xor i32 %43, %42
  %47 = add i32 %46, %45
  %48 = call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 7) #12
  %49 = add i32 %42, %44
  %50 = call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13) #12
  %51 = xor i32 %48, %47
  %52 = xor i32 %50, %49
  %53 = call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 16) #12
  %54 = xor i32 %47, %19
  %55 = icmp eq i32 %54, 0
  %56 = icmp eq i32 %52, 0
  %57 = select i1 %55, i1 true, i1 %56
  %58 = icmp eq i32 %49, 0
  %59 = select i1 %57, i1 true, i1 %58
  %60 = icmp eq i32 %51, 0
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %20, label %62, !prof !17

62:                                               ; preds = %20
  store volatile i32 %54, ptr %11, align 4
  store volatile i32 %52, ptr %13, align 4
  store volatile i32 %53, ptr %15, align 4
  store volatile i32 %51, ptr %17, align 4
  %63 = call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #11
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %6, label %66

66:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @prandom_init_early() #7 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  store i32 0, ptr %1, align 4, !annotation !9
  %3 = call i32 @read_current_timer(ptr noundef nonnull %1) #12
  %4 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  %5 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %0
  %9 = icmp eq i32 %3, 0
  %10 = select i1 %9, i32 %4, i32 0
  %11 = xor i32 %10, 1952801890
  %12 = xor i32 %2, 1819895653
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %56, %13 ], [ %5, %8 ]
  %15 = phi i32 [ %47, %13 ], [ %12, %8 ]
  %16 = phi i32 [ %45, %13 ], [ %11, %8 ]
  %17 = phi i32 [ %46, %13 ], [ %10, %8 ]
  %18 = phi i32 [ %48, %13 ], [ %2, %8 ]
  %19 = xor i32 %14, %16
  %20 = add i32 %17, %18
  %21 = call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 5) #12
  %22 = add i32 %19, %15
  %23 = call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 8) #12
  %24 = xor i32 %21, %20
  %25 = call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 16) #12
  %26 = xor i32 %23, %22
  %27 = add i32 %26, %25
  %28 = call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 7) #12
  %29 = add i32 %22, %24
  %30 = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13) #12
  %31 = xor i32 %28, %27
  %32 = xor i32 %29, %30
  %33 = call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 16) #12
  %34 = add i32 %27, %32
  %35 = call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 5) #12
  %36 = add i32 %31, %33
  %37 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 8) #12
  %38 = xor i32 %35, %34
  %39 = call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16) #12
  %40 = xor i32 %37, %36
  %41 = add i32 %40, %39
  %42 = call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 7) #12
  %43 = add i32 %36, %38
  %44 = call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13) #12
  %45 = xor i32 %42, %41
  %46 = xor i32 %44, %43
  %47 = call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 16) #12
  %48 = xor i32 %41, %14
  %49 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, ptrtoint (ptr @net_rand_state to i32)
  %52 = inttoptr i32 %51 to ptr
  store i32 %48, ptr %52, align 4
  %53 = getelementptr inbounds %struct.siprand_state, ptr %52, i32 0, i32 1
  store i32 %46, ptr %53, align 4
  %54 = getelementptr inbounds %struct.siprand_state, ptr %52, i32 0, i32 2
  store i32 %47, ptr %54, align 4
  %55 = getelementptr inbounds %struct.siprand_state, ptr %52, i32 0, i32 3
  store i32 %45, ptr %55, align 4
  %56 = call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask) #11
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %13, label %59

59:                                               ; preds = %13, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @prandom_init_late() #7 section ".init.text" {
  %1 = tail call i32 @add_random_ready_callback(ptr noundef nonnull @prandom_init_late.random_ready) #12
  %2 = icmp eq i32 %1, -114
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = tail call i32 @mod_timer(ptr noundef nonnull @seed_timer, i32 noundef %4) #12
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ 0, %3 ], [ %1, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_prandom_u32(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prandom_timer_start(ptr nocapture noundef readnone %0) #3 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = tail call i32 @mod_timer(ptr noundef nonnull @seed_timer, i32 noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_random_ready_callback(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prandom_reseed(ptr nocapture noundef readnone %0) #3 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %91

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %88, %5 ], [ %2, %1 ]
  %7 = tail call i32 @get_random_u32() #12
  %8 = xor i32 %7, 1819895653
  %9 = tail call i32 @get_random_u32() #12
  %10 = tail call i32 @get_random_u32() #12
  %11 = xor i32 %9, %10
  %12 = xor i32 %11, 1952801890
  %13 = add i32 %7, %9
  %14 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 5) #12
  %15 = add i32 %12, %8
  %16 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 8) #12
  %17 = xor i32 %13, %14
  %18 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 16) #12
  %19 = xor i32 %16, %15
  %20 = add i32 %19, %18
  %21 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 7) #12
  %22 = add i32 %15, %17
  %23 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13) #12
  %24 = xor i32 %21, %20
  %25 = xor i32 %22, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 16) #12
  %27 = add i32 %20, %25
  %28 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 5) #12
  %29 = add i32 %24, %26
  %30 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 8) #12
  %31 = xor i32 %28, %27
  %32 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 16) #12
  %33 = xor i32 %30, %29
  %34 = add i32 %33, %32
  %35 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7) #12
  %36 = add i32 %29, %31
  %37 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13) #12
  %38 = xor i32 %35, %34
  %39 = xor i32 %37, %36
  %40 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 16) #12
  %41 = xor i32 %34, %10
  %42 = tail call i32 @get_random_u32() #12
  %43 = xor i32 %42, %38
  %44 = add i32 %41, %39
  %45 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 5) #12
  %46 = add i32 %43, %40
  %47 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 8) #12
  %48 = xor i32 %44, %45
  %49 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 16) #12
  %50 = xor i32 %47, %46
  %51 = add i32 %50, %49
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 7) #12
  %53 = add i32 %46, %48
  %54 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13) #12
  %55 = xor i32 %52, %51
  %56 = xor i32 %53, %54
  %57 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 16) #12
  %58 = add i32 %51, %56
  %59 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 5) #12
  %60 = add i32 %55, %57
  %61 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 8) #12
  %62 = xor i32 %59, %58
  %63 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 16) #12
  %64 = xor i32 %61, %60
  %65 = add i32 %64, %63
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 7) #12
  %67 = add i32 %60, %62
  %68 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13) #12
  %69 = xor i32 %66, %65
  %70 = xor i32 %68, %67
  %71 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 16) #12
  %72 = xor i32 %65, %42
  %73 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, ptrtoint (ptr @net_rand_state to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = icmp eq i32 %72, 0
  %78 = select i1 %77, i32 -1, i32 %72
  store volatile i32 %78, ptr %76, align 4
  %79 = icmp eq i32 %70, 0
  %80 = select i1 %79, i32 -1, i32 %70
  %81 = getelementptr inbounds %struct.siprand_state, ptr %76, i32 0, i32 1
  store volatile i32 %80, ptr %81, align 4
  %82 = icmp eq i32 %67, 0
  %83 = select i1 %82, i32 -1, i32 %71
  %84 = getelementptr inbounds %struct.siprand_state, ptr %76, i32 0, i32 2
  store volatile i32 %83, ptr %84, align 4
  %85 = icmp eq i32 %69, 0
  %86 = select i1 %85, i32 -1, i32 %69
  %87 = getelementptr inbounds %struct.siprand_state, ptr %76, i32 0, i32 3
  store volatile i32 %86, ptr %87, align 4
  %88 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #11
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %5, label %91

91:                                               ; preds = %5, %1
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %92, 4000
  %94 = tail call i32 @prandom_u32() #12
  %95 = zext i32 %94 to i64
  %96 = mul nuw nsw i64 %95, 4000
  %97 = lshr i64 %96, 32
  %98 = trunc i64 %97 to i32
  %99 = add i32 %93, %98
  %100 = tail call i32 @round_jiffies(i32 noundef %99) #12
  %101 = tail call i32 @mod_timer(ptr noundef nonnull @seed_timer, i32 noundef %100) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i64 2153133458}
!11 = !{i64 587469}
!12 = !{i64 2153107429}
!13 = !{i64 2153107569}
!14 = !{i64 2153134351}
!15 = !{i64 2153135600}
!16 = !{i64 2153136790}
!17 = !{!"branch_weights", i32 1, i32 2000}
