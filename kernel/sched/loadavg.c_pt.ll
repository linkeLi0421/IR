; ModuleID = '/llk/IR/kernel/sched/loadavg.c_pt.bc'
source_filename = "../kernel/sched/loadavg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_avenrun:\09\09\09\09\09"
module asm "\09.asciz \09\22avenrun\22\09\09\09\09\09"
module asm "__kstrtabns_avenrun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.1, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.1 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.2, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.2 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }

@avenrun = dso_local global [3 x i32] zeroinitializer, align 4
@__kstrtab_avenrun = external dso_local constant [0 x i8], align 1
@__kstrtabns_avenrun = external dso_local constant [0 x i8], align 1
@__ksymtab_avenrun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @avenrun to i32), ptr @__kstrtab_avenrun, ptr @__kstrtabns_avenrun }, section "___ksymtab+avenrun", align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@calc_load_update = dso_local global i32 0, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@calc_load_tasks = dso_local global %struct.atomic_t zeroinitializer, align 4
@calc_load_nohz = internal global [2 x %struct.atomic_t] zeroinitializer, align 4
@calc_load_idx = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_avenrun], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @get_avenrun(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @avenrun, align 4
  %5 = add i32 %4, %1
  %6 = shl i32 %5, %2
  store i32 %6, ptr %0, align 4
  %7 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %8 = add i32 %7, %1
  %9 = shl i32 %8, %2
  %10 = getelementptr i32, ptr %0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %12 = add i32 %11, %1
  %13 = shl i32 %12, %2
  %14 = getelementptr i32, ptr %0, i32 2
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @calc_load_fold_active(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %4, %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %5, %7
  %9 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 54
  %10 = load i32, ptr %9, align 16
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = sub i32 %8, %10
  store i32 %8, ptr %9, align 16
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @calc_load_n(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 2097151
  %10 = select i1 %8, i32 2048, i32 %9
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %25, %12 ], [ %10, %6 ]
  %14 = phi i32 [ %16, %12 ], [ %3, %6 ]
  %15 = phi i32 [ %19, %12 ], [ %1, %6 ]
  %16 = lshr i32 %14, 1
  %17 = mul i32 %15, %15
  %18 = add i32 %17, 1024
  %19 = lshr i32 %18, 11
  %20 = and i32 %14, 2
  %21 = icmp eq i32 %20, 0
  %22 = mul i32 %19, %13
  %23 = add i32 %22, 1024
  %24 = lshr i32 %23, 11
  %25 = select i1 %21, i32 %13, i32 %24
  %26 = icmp ult i32 %14, 4
  br i1 %26, label %27, label %12

27:                                               ; preds = %12, %6, %4
  %28 = phi i32 [ 2048, %4 ], [ %10, %6 ], [ %25, %12 ]
  %29 = mul i32 %28, %0
  %30 = sub i32 2048, %28
  %31 = mul i32 %30, %2
  %32 = add i32 %31, %29
  %33 = icmp ult i32 %2, %0
  %34 = add i32 %32, 2047
  %35 = select i1 %33, i32 %32, i32 %34
  %36 = lshr i32 %35, 11
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calc_load_nohz_start() local_unnamed_addr #3 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, %7
  %11 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 54
  %12 = load i32, ptr %11, align 16
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %0
  store i32 %10, ptr %11, align 16
  %15 = sub i32 %10, %12
  %16 = load i32, ptr @calc_load_idx, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = load volatile i32, ptr @calc_load_update, align 4
  %19 = xor i32 %17, -1
  %20 = add i32 %18, %19
  %21 = lshr i32 %20, 31
  %22 = add i32 %21, %16
  %23 = and i32 %22, 1
  %24 = getelementptr [2 x %struct.atomic_t], ptr @calc_load_nohz, i32 0, i32 %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #5, !srcloc !11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %15, ptr elementtype(i32) %24) #5, !srcloc !12
  br label %26

26:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calc_load_nohz_remote(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 54
  %8 = load i32, ptr %7, align 16
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  store i32 %6, ptr %7, align 16
  %11 = sub i32 %6, %8
  %12 = load i32, ptr @calc_load_idx, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = load volatile i32, ptr @calc_load_update, align 4
  %15 = xor i32 %13, -1
  %16 = add i32 %14, %15
  %17 = lshr i32 %16, 31
  %18 = add i32 %17, %12
  %19 = and i32 %18, 1
  %20 = getelementptr [2 x %struct.atomic_t], ptr @calc_load_nohz, i32 0, i32 %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #5, !srcloc !11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 %11, ptr elementtype(i32) %20) #5, !srcloc !12
  br label %22

22:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calc_load_nohz_stop() local_unnamed_addr #3 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile i32, ptr @calc_load_update, align 4
  %7 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 53
  store i32 %6, ptr %7, align 4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = sub i32 %8, %6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 -10, %6
  %14 = add i32 %13, %12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = add i32 %6, 501
  store i32 %17, ptr %7, align 4
  br label %18

18:                                               ; preds = %16, %11, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calc_global_load() local_unnamed_addr #3 {
  %1 = load volatile i32, ptr @calc_load_update, align 4
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = sub i32 -10, %1
  %4 = add i32 %3, %2
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %172, label %6

6:                                                ; preds = %0
  %7 = load i32, ptr @calc_load_idx, align 4
  %8 = and i32 %7, 1
  %9 = getelementptr [2 x %struct.atomic_t], ptr @calc_load_nohz, i32 0, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !11
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #5, !srcloc !14
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @calc_load_tasks) #5, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @calc_load_tasks, ptr nonnull @calc_load_tasks, i32 %14, ptr nonnull elementtype(i32) @calc_load_tasks) #5, !srcloc !12
  br label %18

18:                                               ; preds = %16, %12, %6
  %19 = load volatile i32, ptr @calc_load_tasks, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = shl i32 %19, 11
  %22 = select i1 %20, i32 %21, i32 0
  %23 = load i32, ptr @avenrun, align 4
  %24 = mul i32 %23, 1884
  %25 = mul i32 %22, 164
  %26 = add i32 %25, %24
  %27 = icmp ult i32 %22, %23
  %28 = add i32 %26, 2047
  %29 = select i1 %27, i32 %26, i32 %28
  %30 = lshr i32 %29, 11
  store i32 %30, ptr @avenrun, align 4
  %31 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %32 = mul i32 %31, 2014
  %33 = mul i32 %22, 34
  %34 = add i32 %32, %33
  %35 = icmp ult i32 %22, %31
  %36 = add i32 %34, 2047
  %37 = select i1 %35, i32 %34, i32 %36
  %38 = lshr i32 %37, 11
  store i32 %38, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %39 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %40 = mul i32 %39, 2037
  %41 = mul i32 %22, 11
  %42 = add i32 %40, %41
  %43 = icmp ult i32 %22, %39
  %44 = add i32 %42, 2047
  %45 = select i1 %43, i32 %42, i32 %44
  %46 = lshr i32 %45, 11
  store i32 %46, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %47 = add i32 %1, 501
  store volatile i32 %47, ptr @calc_load_update, align 4
  %48 = load volatile i32, ptr @calc_load_update, align 4
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = sub i32 -10, %48
  %51 = add i32 %50, %49
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %169, label %53

53:                                               ; preds = %18
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = sub i32 %54, %48
  %56 = add i32 %55, -10
  %57 = sdiv i32 %56, 501
  %58 = add nsw i32 %57, 1
  %59 = load volatile i32, ptr @calc_load_tasks, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = shl i32 %59, 11
  %62 = select i1 %60, i32 %61, i32 0
  %63 = icmp eq i32 %58, 0
  br i1 %63, label %120, label %64

64:                                               ; preds = %53
  %65 = and i32 %58, 1
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 2048, i32 1884
  %68 = add i32 %55, 490
  %69 = icmp ult i32 %68, 1001
  br i1 %69, label %85, label %70

70:                                               ; preds = %70, %64
  %71 = phi i32 [ %83, %70 ], [ %67, %64 ]
  %72 = phi i32 [ %74, %70 ], [ %58, %64 ]
  %73 = phi i32 [ %77, %70 ], [ 1884, %64 ]
  %74 = lshr i32 %72, 1
  %75 = mul i32 %73, %73
  %76 = add i32 %75, 1024
  %77 = lshr i32 %76, 11
  %78 = and i32 %72, 2
  %79 = icmp eq i32 %78, 0
  %80 = mul i32 %77, %71
  %81 = add i32 %80, 1024
  %82 = lshr i32 %81, 11
  %83 = select i1 %79, i32 %71, i32 %82
  %84 = icmp ult i32 %72, 4
  br i1 %84, label %95, label %70

85:                                               ; preds = %64
  %86 = mul nuw i32 %67, %30
  %87 = sub nuw nsw i32 2048, %67
  %88 = mul i32 %87, %62
  %89 = add i32 %88, %86
  %90 = icmp ult i32 %62, %30
  %91 = add i32 %89, 2047
  %92 = select i1 %90, i32 %89, i32 %91
  %93 = lshr i32 %92, 11
  store i32 %93, ptr @avenrun, align 4
  %94 = select i1 %66, i32 2048, i32 2014
  br label %121

95:                                               ; preds = %70
  %96 = mul i32 %83, %30
  %97 = sub i32 2048, %83
  %98 = mul i32 %97, %62
  %99 = add i32 %98, %96
  %100 = icmp ult i32 %62, %30
  %101 = add i32 %99, 2047
  %102 = select i1 %100, i32 %99, i32 %101
  %103 = lshr i32 %102, 11
  store i32 %103, ptr @avenrun, align 4
  %104 = select i1 %66, i32 2048, i32 2014
  br i1 %69, label %121, label %105

105:                                              ; preds = %105, %95
  %106 = phi i32 [ %118, %105 ], [ %104, %95 ]
  %107 = phi i32 [ %109, %105 ], [ %58, %95 ]
  %108 = phi i32 [ %112, %105 ], [ 2014, %95 ]
  %109 = lshr i32 %107, 1
  %110 = mul i32 %108, %108
  %111 = add i32 %110, 1024
  %112 = lshr i32 %111, 11
  %113 = and i32 %107, 2
  %114 = icmp eq i32 %113, 0
  %115 = mul i32 %112, %106
  %116 = add i32 %115, 1024
  %117 = lshr i32 %116, 11
  %118 = select i1 %114, i32 %106, i32 %117
  %119 = icmp ult i32 %107, 4
  br i1 %119, label %132, label %105

120:                                              ; preds = %53
  store i32 %30, ptr @avenrun, align 4
  store i32 %38, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  br label %157

121:                                              ; preds = %95, %85
  %122 = phi i32 [ %94, %85 ], [ %104, %95 ]
  %123 = mul i32 %122, %38
  %124 = sub nuw nsw i32 2048, %122
  %125 = mul i32 %124, %62
  %126 = add i32 %125, %123
  %127 = icmp ult i32 %62, %38
  %128 = add i32 %126, 2047
  %129 = select i1 %127, i32 %126, i32 %128
  %130 = lshr i32 %129, 11
  store i32 %130, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %131 = select i1 %66, i32 2048, i32 2037
  br label %157

132:                                              ; preds = %105
  %133 = mul i32 %118, %38
  %134 = sub i32 2048, %118
  %135 = mul i32 %134, %62
  %136 = add i32 %135, %133
  %137 = icmp ult i32 %62, %38
  %138 = add i32 %136, 2047
  %139 = select i1 %137, i32 %136, i32 %138
  %140 = lshr i32 %139, 11
  store i32 %140, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %141 = select i1 %66, i32 2048, i32 2037
  br i1 %69, label %157, label %142

142:                                              ; preds = %142, %132
  %143 = phi i32 [ %155, %142 ], [ %141, %132 ]
  %144 = phi i32 [ %146, %142 ], [ %58, %132 ]
  %145 = phi i32 [ %149, %142 ], [ 2037, %132 ]
  %146 = lshr i32 %144, 1
  %147 = mul i32 %145, %145
  %148 = add i32 %147, 1024
  %149 = lshr i32 %148, 11
  %150 = and i32 %144, 2
  %151 = icmp eq i32 %150, 0
  %152 = mul i32 %149, %143
  %153 = add i32 %152, 1024
  %154 = lshr i32 %153, 11
  %155 = select i1 %151, i32 %143, i32 %154
  %156 = icmp ult i32 %144, 4
  br i1 %156, label %157, label %142

157:                                              ; preds = %142, %132, %121, %120
  %158 = phi i32 [ %141, %132 ], [ 2048, %120 ], [ %131, %121 ], [ %155, %142 ]
  %159 = mul i32 %158, %46
  %160 = sub i32 2048, %158
  %161 = mul i32 %160, %62
  %162 = add i32 %161, %159
  %163 = icmp ult i32 %62, %46
  %164 = add i32 %162, 2047
  %165 = select i1 %163, i32 %162, i32 %164
  %166 = lshr i32 %165, 11
  store i32 %166, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %167 = mul i32 %58, 501
  %168 = add i32 %167, %48
  store volatile i32 %168, ptr @calc_load_update, align 4
  br label %169

169:                                              ; preds = %157, %18
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !16
  %170 = load i32, ptr @calc_load_idx, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr @calc_load_idx, align 4
  br label %172

172:                                              ; preds = %169, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calc_global_load_tick(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 53
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %2, %4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %9
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 54
  %14 = load i32, ptr %13, align 16
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  store i32 %12, ptr %13, align 16
  %17 = sub i32 %12, %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @calc_load_tasks) #5, !srcloc !11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @calc_load_tasks, ptr nonnull @calc_load_tasks, i32 %17, ptr nonnull elementtype(i32) @calc_load_tasks) #5, !srcloc !12
  %19 = load i32, ptr %3, align 4
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %4, %7 ], [ %19, %16 ]
  %22 = add i32 %21, 501
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

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
!9 = !{i64 644983}
!10 = !{i64 2156329950}
!11 = !{i64 609131, i64 2148110697, i64 2148110723, i64 2148110770, i64 2148110792, i64 2148110820, i64 2148110840}
!12 = !{i64 2148173959, i64 2148173985, i64 2148174014, i64 2148174048, i64 2148174079, i64 2148174102}
!13 = !{i64 2148378282}
!14 = !{i64 681223, i64 681240, i64 681264, i64 681290, i64 681308}
!15 = !{i64 2148378626}
!16 = !{i64 2156348602}
