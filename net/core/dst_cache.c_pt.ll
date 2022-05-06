; ModuleID = '/llk/IR/net/core/dst_cache.c_pt.bc'
source_filename = "../net/core/dst_cache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_get:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_get\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_get_ip4:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_get_ip4\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_get_ip4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_set_ip4:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_set_ip4\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_set_ip4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_set_ip6:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_set_ip6\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_set_ip6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_get_ip6:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_get_ip6\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_get_ip6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_init\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cache_reset_now:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cache_reset_now\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cache_reset_now:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.dst_cache_pcpu = type { i32, ptr, i32, %union.anon.138 }
%union.anon.138 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.netdevice_tracker = type {}
%struct.dst_cache = type { ptr, i32 }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.52, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.52 = type { %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.53, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.53 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }

@__kstrtab_dst_cache_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_get = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_get to i32), ptr @__kstrtab_dst_cache_get, ptr @__kstrtabns_dst_cache_get }, section "___ksymtab_gpl+dst_cache_get", align 4
@__kstrtab_dst_cache_get_ip4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_get_ip4 = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_get_ip4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_get_ip4 to i32), ptr @__kstrtab_dst_cache_get_ip4, ptr @__kstrtabns_dst_cache_get_ip4 }, section "___ksymtab_gpl+dst_cache_get_ip4", align 4
@__kstrtab_dst_cache_set_ip4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_set_ip4 = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_set_ip4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_set_ip4 to i32), ptr @__kstrtab_dst_cache_set_ip4, ptr @__kstrtabns_dst_cache_set_ip4 }, section "___ksymtab_gpl+dst_cache_set_ip4", align 4
@__kstrtab_dst_cache_set_ip6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_set_ip6 = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_set_ip6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_set_ip6 to i32), ptr @__kstrtab_dst_cache_set_ip6, ptr @__kstrtabns_dst_cache_set_ip6 }, section "___ksymtab_gpl+dst_cache_set_ip6", align 4
@__kstrtab_dst_cache_get_ip6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_get_ip6 = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_get_ip6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_get_ip6 to i32), ptr @__kstrtab_dst_cache_get_ip6, ptr @__kstrtabns_dst_cache_get_ip6 }, section "___ksymtab_gpl+dst_cache_get_ip6", align 4
@__kstrtab_dst_cache_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_init to i32), ptr @__kstrtab_dst_cache_init, ptr @__kstrtabns_dst_cache_init }, section "___ksymtab_gpl+dst_cache_init", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_dst_cache_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_destroy to i32), ptr @__kstrtab_dst_cache_destroy, ptr @__kstrtabns_dst_cache_destroy }, section "___ksymtab_gpl+dst_cache_destroy", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_dst_cache_reset_now = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cache_reset_now = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cache_reset_now = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cache_reset_now to i32), ptr @__kstrtab_dst_cache_reset_now, ptr @__kstrtabns_dst_cache_reset_now }, section "___ksymtab_gpl+dst_cache_reset_now", align 4
@.str = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_dst_cache_destroy, ptr @__ksymtab_dst_cache_get, ptr @__ksymtab_dst_cache_get_ip4, ptr @__ksymtab_dst_cache_get_ip6, ptr @__ksymtab_dst_cache_init, ptr @__ksymtab_dst_cache_reset_now, ptr @__ksymtab_dst_cache_set_ip4, ptr @__ksymtab_dst_cache_set_ip6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dst_cache_get(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #5, !srcloc !9
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call fastcc ptr @dst_cache_per_cpu_get(ptr noundef %0, ptr noundef %10)
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi ptr [ %11, %4 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dst_cache_per_cpu_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #6, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #6, !srcloc !12
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  br label %13

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %struct.dst_cache, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = sub i32 %15, %16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %32, !prof !14

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 8
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dst_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr %27(ptr noundef nonnull %4, i32 noundef %29) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37, !prof !15

32:                                               ; preds = %23, %13
  %33 = load ptr, ptr %3, align 4
  tail call void @dst_release(ptr noundef %33) #6
  %34 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %1, i32 0, i32 2
  store i32 0, ptr %34, align 4
  store ptr null, ptr %3, align 4
  tail call void @dst_release(ptr noundef nonnull %4) #6
  br label %35

35:                                               ; preds = %32, %2
  %36 = load volatile i32, ptr @jiffies, align 64
  store i32 %36, ptr %1, align 4
  br label %37

37:                                               ; preds = %35, %23, %19
  %38 = phi ptr [ null, %35 ], [ %4, %19 ], [ %4, %23 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dst_cache_get_ip4(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #5, !srcloc !9
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call fastcc ptr @dst_cache_per_cpu_get(ptr noundef %0, ptr noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %11, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %1, align 4
  br label %17

17:                                               ; preds = %14, %5, %2
  %18 = phi ptr [ %12, %14 ], [ null, %2 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_cache_set_ip4(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !9
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @dst_release(ptr noundef %14) #6
  %15 = icmp eq ptr %1, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #6, !srcloc !11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 1, ptr elementtype(i32) %17) #6, !srcloc !12
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  br label %23

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #6
  br label %23

23:                                               ; preds = %22, %21, %6
  %24 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %12, i32 0, i32 2
  store i32 0, ptr %24, align 4
  store ptr %1, ptr %13, align 4
  %25 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %12, i32 0, i32 3
  store i32 %2, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_cache_set_ip6(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !9
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %17 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fib6_info, ptr %18, i32 0, i32 2
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.fib6_node, ptr %22, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  br label %27

27:                                               ; preds = %24, %20, %16
  %28 = phi i32 [ 0, %16 ], [ 0, %20 ], [ %26, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  br label %29

29:                                               ; preds = %27, %6
  %30 = phi i32 [ %28, %27 ], [ %14, %6 ]
  %31 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %12, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @dst_release(ptr noundef %32) #6
  %33 = icmp eq ptr %1, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #6, !srcloc !11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 0, i32 1, ptr elementtype(i32) %35) #6, !srcloc !12
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  br label %41

40:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #6
  br label %41

41:                                               ; preds = %40, %39, %29
  %42 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %12, i32 0, i32 2
  store i32 %30, ptr %42, align 4
  store ptr %1, ptr %31, align 4
  %43 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %12, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  br label %44

44:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dst_cache_get_ip6(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #5, !srcloc !9
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call fastcc ptr @dst_cache_per_cpu_get(ptr noundef %0, ptr noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %11, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %15, i32 16, i1 false)
  br label %16

16:                                               ; preds = %14, %5, %2
  %17 = phi ptr [ %12, %14 ], [ null, %2 ], [ null, %5 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dst_cache_init(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = or i32 %1, 256
  %4 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 28, i32 noundef 4, i32 noundef %3) #7
  store ptr %4, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.dst_cache, ptr %0, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_cache_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %21, %8 ], [ %2, %4 ]
  %10 = phi i32 [ %18, %8 ], [ %5, %4 ]
  %11 = ptrtoint ptr %9 to i32
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @dst_release(ptr noundef %17) #6
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #8
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  %21 = load ptr, ptr %0, align 4
  br i1 %20, label %8, label %22

22:                                               ; preds = %8, %4
  %23 = phi ptr [ %2, %4 ], [ %21, %8 ]
  tail call void @free_percpu(ptr noundef %23) #6
  br label %24

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_cache_reset_now(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.dst_cache, ptr %0, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = ptrtoint ptr %2 to i32
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %15, i32 0, i32 2
  store i32 0, ptr %18, align 4
  store ptr null, ptr %16, align 4
  tail call void @dst_release(ptr noundef %17) #6
  %19 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #8
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %22, %10
  %23 = phi i32 [ %33, %22 ], [ %19, %10 ]
  %24 = load ptr, ptr %0, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dst_cache_pcpu, ptr %29, i32 0, i32 2
  store i32 0, ptr %32, align 4
  store ptr null, ptr %30, align 4
  tail call void @dst_release(ptr noundef %31) #6
  %33 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #8
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %22, label %36

36:                                               ; preds = %22, %10, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind readonly willreturn }

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
!9 = !{i64 326268}
!10 = !{i64 2147914019}
!11 = !{i64 412329, i64 2147902300, i64 2147902326, i64 2147902373, i64 2147902395, i64 2147902423, i64 2147902443}
!12 = !{i64 398898, i64 398923, i64 398945, i64 398961, i64 398973, i64 398993, i64 399017, i64 399033, i64 399045}
!13 = !{i64 2147914145}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2149376455}
!17 = !{i64 2155931045}
!18 = !{i64 2149376672}
