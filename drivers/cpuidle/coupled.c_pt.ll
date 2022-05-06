; ModuleID = '/llk/IR/drivers/cpuidle/coupled.c_pt.bc'
source_filename = "../drivers/cpuidle/coupled.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_coupled = type { %struct.cpumask, [16 x i32], %struct.atomic_t, %struct.atomic_t, i32, i32, i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cpuidle_coupled_poked = internal global %struct.cpumask zeroinitializer, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [26 x i8] c"drivers/cpuidle/coupled.c\00", align 1
@cpuidle_coupled_poke_cb = internal global %struct.__call_single_data zeroinitializer, section ".data..percpu", align 16
@__initcall__kmod_coupled__166_791_cpuidle_coupled_init1 = internal global ptr @cpuidle_coupled_init, section ".initcall1.init", align 4
@cpuidle_coupled_poke_pending = internal global %struct.cpumask zeroinitializer, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cpuidle/coupled:prepare\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cpuidle/coupled:online\00", align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_coupled__166_791_cpuidle_coupled_init1], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_coupled_parallel_barrier(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpuidle_coupled, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !10
  %8 = load volatile i32, ptr %1, align 4
  %9 = icmp slt i32 %8, %6
  br i1 %9, label %10, label %13

10:                                               ; preds = %10, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !12
  %11 = load volatile i32, ptr %1, align 4
  %12 = icmp slt i32 %11, %6
  br i1 %12, label %10, label %13

13:                                               ; preds = %10, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !14
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %16 = shl i32 %6, 1
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load volatile i32, ptr %1, align 4
  %20 = icmp sgt i32 %19, %6
  br i1 %20, label %22, label %25

21:                                               ; preds = %13
  store volatile i32 0, ptr %1, align 4
  br label %25

22:                                               ; preds = %22, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  %23 = load volatile i32, ptr %1, align 4
  %24 = icmp sgt i32 %23, %6
  br i1 %24, label %22, label %25

25:                                               ; preds = %22, %21, %18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpuidle_state_is_coupled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %1, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cpuidle_coupled_state_verify(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -1
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi i32 [ %4, %6 ], [ %22, %21 ]
  %10 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %9, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %7, align 4
  %16 = icmp ne i32 %15, %9
  %17 = icmp sgt i32 %15, -1
  %18 = and i1 %16, %17
  %19 = icmp slt i32 %15, %3
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %8
  %22 = add i32 %9, -1
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %8, label %24

24:                                               ; preds = %21, %14, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %21 ], [ -22, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_enter_state_coupled(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %212, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpuidle_coupled, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 5
  br label %14

14:                                               ; preds = %39, %11
  %15 = phi i32 [ -1, %11 ], [ %41, %39 ]
  %16 = load i32, ptr %12, align 4
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @cpuidle_coupled_poke_pending, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !18
  %25 = load volatile i32, ptr %18, align 4
  %26 = and i32 %25, %21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !20
  %29 = load volatile i32, ptr %18, align 4
  %30 = and i32 %29, %21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %24
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !21
  br label %33

33:                                               ; preds = %32, %14
  %34 = tail call ptr @llvm.thread.pointer() #10
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !18
  br label %212

39:                                               ; preds = %33
  %40 = load i32, ptr %13, align 4
  %41 = tail call i32 @cpuidle_enter_state(ptr noundef %0, ptr noundef %1, i32 noundef %40) #10
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !21
  %42 = load i32, ptr %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %14

44:                                               ; preds = %39, %7
  %45 = phi i32 [ -1, %7 ], [ %41, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %46 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %47 = getelementptr inbounds %struct.cpuidle_coupled, ptr %5, i32 0, i32 2
  %48 = getelementptr inbounds %struct.cpuidle_coupled, ptr %5, i32 0, i32 4
  %49 = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 5
  %50 = getelementptr inbounds %struct.cpuidle_coupled, ptr %5, i32 0, i32 3
  br label %51

51:                                               ; preds = %193, %44
  %52 = phi i32 [ %45, %44 ], [ %66, %193 ]
  %53 = load i32, ptr %46, align 4
  tail call void @_clear_bit(i32 noundef %53, ptr noundef nonnull @cpuidle_coupled_poked) #10
  %54 = load i32, ptr %46, align 4
  %55 = getelementptr %struct.cpuidle_coupled, ptr %5, i32 0, i32 1, i32 %54
  store i32 %2, ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !14
  %57 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %58 = and i32 %57, 65535
  %59 = load i32, ptr %48, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, ptr %46, align 4
  tail call void @_set_bit(i32 noundef %62, ptr noundef nonnull @cpuidle_coupled_poked) #10
  %63 = load i32, ptr %46, align 4
  tail call fastcc void @cpuidle_coupled_poke_others(i32 noundef %63, ptr noundef nonnull %5)
  br label %64

64:                                               ; preds = %61, %51
  br label %65

65:                                               ; preds = %114, %64
  %66 = phi i32 [ %52, %64 ], [ %116, %114 ]
  br label %67

67:                                               ; preds = %157, %65
  br label %68

68:                                               ; preds = %99, %67
  %69 = load volatile i32, ptr %47, align 4
  %70 = and i32 %69, 65535
  %71 = load i32, ptr %48, align 4
  %72 = icmp eq i32 %70, %71
  %73 = load i32, ptr %46, align 4
  %74 = lshr i32 %73, 5
  br i1 %72, label %78, label %75

75:                                               ; preds = %68
  %76 = and i32 %73, 31
  %77 = shl nuw i32 1, %76
  br label %85

78:                                               ; preds = %68
  %79 = getelementptr i32, ptr @cpuidle_coupled_poked, i32 %74
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %73, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %78, %75
  %86 = phi i32 [ %77, %75 ], [ %82, %78 ]
  %87 = getelementptr i32, ptr @cpuidle_coupled_poke_pending, i32 %74
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %86, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !18
  %92 = load volatile i32, ptr %87, align 4
  %93 = and i32 %92, %86
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %95, %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !20
  %96 = load volatile i32, ptr %87, align 4
  %97 = and i32 %96, %86
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %95

99:                                               ; preds = %95, %91
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !21
  br label %68

100:                                              ; preds = %85
  %101 = tail call ptr @llvm.thread.pointer() #10
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !23
  %107 = getelementptr %struct.cpuidle_coupled, ptr %5, i32 0, i32 1, i32 %73
  store i32 -1, ptr %107, align 4
  br label %205

108:                                              ; preds = %100
  %109 = load i32, ptr %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !23
  %113 = getelementptr %struct.cpuidle_coupled, ptr %5, i32 0, i32 1, i32 %73
  store i32 -1, ptr %113, align 4
  br label %205

114:                                              ; preds = %108
  %115 = load i32, ptr %49, align 4
  %116 = tail call i32 @cpuidle_enter_state(ptr noundef %0, ptr noundef %1, i32 noundef %115) #10
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !21
  br label %65

117:                                              ; preds = %78
  %118 = getelementptr i32, ptr @cpuidle_coupled_poke_pending, i32 %74
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, %82
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %117
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !18
  %123 = load volatile i32, ptr %118, align 4
  %124 = and i32 %123, %82
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %126, %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !20
  %127 = load volatile i32, ptr %118, align 4
  %128 = and i32 %127, %82
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %126

130:                                              ; preds = %126, %122
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !21
  br label %131

131:                                              ; preds = %130, %117
  %132 = tail call ptr @llvm.thread.pointer() #10
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %46, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !23
  %139 = getelementptr %struct.cpuidle_coupled, ptr %5, i32 0, i32 1, i32 %137
  store i32 -1, ptr %139, align 4
  br label %205

140:                                              ; preds = %131
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 65536, ptr elementtype(i32) %47) #10, !srcloc !10
  %142 = load volatile i32, ptr %47, align 4
  %143 = ashr i32 %142, 16
  %144 = load i32, ptr %48, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %163, label %146

146:                                              ; preds = %158, %140
  %147 = phi i32 [ %161, %158 ], [ %144, %140 ]
  %148 = load volatile i32, ptr %47, align 4
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, %147
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = shl i32 %147, 16
  %153 = or i32 %152, %147
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %154 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 %153, i32 -65536, ptr elementtype(i32) %47) #10, !srcloc !26
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, %153
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %67

158:                                              ; preds = %151, %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !29
  %159 = load volatile i32, ptr %47, align 4
  %160 = ashr i32 %159, 16
  %161 = load i32, ptr %48, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %146

163:                                              ; preds = %158, %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  %164 = load i32, ptr @__cpu_online_mask, align 4
  %165 = load i32, ptr %5, align 4
  %166 = and i32 %164, 65535
  %167 = and i32 %166, %165
  %168 = load i32, ptr @cpuidle_coupled_poke_pending, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %163
  %172 = load i32, ptr %46, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %173 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !23
  %174 = getelementptr %struct.cpuidle_coupled, ptr %5, i32 0, i32 1, i32 %172
  store i32 -1, ptr %174, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 65536, ptr elementtype(i32) %47) #10, !srcloc !23
  %176 = load ptr, ptr %4, align 4
  %177 = getelementptr inbounds %struct.cpuidle_coupled, ptr %176, i32 0, i32 4
  %178 = load i32, ptr %177, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %179 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !10
  %180 = load volatile i32, ptr %50, align 4
  %181 = icmp slt i32 %180, %178
  br i1 %181, label %182, label %185

182:                                              ; preds = %182, %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !12
  %183 = load volatile i32, ptr %50, align 4
  %184 = icmp slt i32 %183, %178
  br i1 %184, label %182, label %185

185:                                              ; preds = %182, %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %186 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !14
  %187 = extractvalue { i32, i32 } %186, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %188 = shl i32 %178, 1
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load volatile i32, ptr %50, align 4
  %192 = icmp sgt i32 %191, %178
  br i1 %192, label %195, label %193

193:                                              ; preds = %195, %194, %190
  br label %51

194:                                              ; preds = %185
  store volatile i32 0, ptr %50, align 4
  br label %193

195:                                              ; preds = %195, %190
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  %196 = load volatile i32, ptr %50, align 4
  %197 = icmp sgt i32 %196, %178
  br i1 %197, label %195, label %193

198:                                              ; preds = %163
  %199 = tail call fastcc i32 @cpuidle_coupled_get_state(ptr noundef nonnull %5)
  %200 = tail call i32 @cpuidle_enter_state(ptr noundef %0, ptr noundef %1, i32 noundef %199) #10
  %201 = load i32, ptr %46, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %202 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !23
  %203 = getelementptr %struct.cpuidle_coupled, ptr %5, i32 0, i32 1, i32 %201
  store i32 -1, ptr %203, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !9
  %204 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 65536, ptr elementtype(i32) %47) #10, !srcloc !23
  br label %205

205:                                              ; preds = %198, %136, %111, %105
  %206 = phi i32 [ %66, %105 ], [ %66, %111 ], [ %66, %136 ], [ %200, %198 ]
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !18
  %207 = load volatile i32, ptr %47, align 4
  %208 = icmp ugt i32 %207, 65535
  br i1 %208, label %209, label %212

209:                                              ; preds = %209, %205
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !32
  %210 = load volatile i32, ptr %47, align 4
  %211 = icmp ugt i32 %210, 65535
  br i1 %211, label %209, label %212

212:                                              ; preds = %209, %205, %38, %3
  %213 = phi i32 [ %15, %38 ], [ -22, %3 ], [ %206, %205 ], [ %206, %209 ]
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpuidle_coupled_poke_others(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #11
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %26, %2
  %7 = phi i32 [ %27, %26 ], [ %3, %2 ]
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = lshr i32 %7, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %7, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %9
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @_test_and_set_bit(i32 noundef %7, ptr noundef nonnull @cpuidle_coupled_poke_pending) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = add i32 %19, ptrtoint (ptr @cpuidle_coupled_poke_cb to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 @smp_call_function_single_async(i32 noundef %7, ptr noundef %24) #10
  br label %26

26:                                               ; preds = %22, %17, %9, %6
  %27 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef %1) #11
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %6, label %30

30:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpuidle_coupled_get_state(ptr noundef %0) unnamed_addr #4 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !33
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #11
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %23

5:                                                ; preds = %19, %1
  %6 = phi i32 [ %21, %19 ], [ %3, %1 ]
  %7 = phi i32 [ %20, %19 ], [ 2147483647, %1 ]
  %8 = lshr i32 %6, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %6, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr %struct.cpuidle_coupled, ptr %0, i32 0, i32 1, i32 %6
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %7)
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i32 [ %7, %5 ], [ %18, %15 ]
  %21 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef %0) #11
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %5, label %23

23:                                               ; preds = %19, %1
  %24 = phi i32 [ 2147483647, %1 ], [ %20, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_coupled_register_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %2) #11
  %9 = icmp ult i32 %8, %7
  br i1 %9, label %10, label %25

10:                                               ; preds = %22, %6
  %11 = phi i32 [ %23, %22 ], [ %8, %6 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @cpuidle_devices to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.cpuidle_device, ptr %16, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %10
  %23 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef %2) #11
  %24 = icmp ult i32 %23, %7
  br i1 %24, label %10, label %25

25:                                               ; preds = %22, %6
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 88) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %63, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %2, align 8
  store i32 %30, ptr %27, align 8
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i32 [ %30, %29 ], [ %3, %18 ]
  %33 = phi ptr [ %27, %29 ], [ %20, %18 ]
  %34 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 13
  store ptr %33, ptr %34, align 4
  %35 = load i32, ptr %33, align 4
  %36 = xor i32 %35, %32
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39, !prof !34

39:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 9, ptr noundef null) #10
  %40 = getelementptr inbounds %struct.cpuidle_coupled, ptr %33, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = load i32, ptr %33, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i32 [ %35, %31 ], [ %43, %39 ]
  %46 = load i32, ptr @__cpu_online_mask, align 4
  %47 = and i32 %46, 65535
  %48 = and i32 %47, %45
  %49 = tail call i32 @__sw_hweight32(i32 noundef %48) #10
  %50 = getelementptr inbounds %struct.cpuidle_coupled, ptr %33, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.cpuidle_coupled, ptr %33, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, ptrtoint (ptr @cpuidle_coupled_poke_cb to i32)
  %59 = inttoptr i32 %58 to ptr
  %60 = inttoptr i32 %55 to ptr
  store i64 0, ptr %59, align 16
  %61 = getelementptr inbounds i8, ptr %59, i32 8
  store ptr @cpuidle_coupled_handle_poke, ptr %61, align 8
  %62 = getelementptr inbounds i8, ptr %59, i32 12
  store ptr %60, ptr %62, align 4
  br label %63

63:                                               ; preds = %44, %25, %1
  %64 = phi i32 [ 0, %44 ], [ 0, %1 ], [ -12, %25 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuidle_coupled_handle_poke(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  tail call void @_set_bit(i32 noundef %2, ptr noundef nonnull @cpuidle_coupled_poked) #10
  tail call void @_clear_bit(i32 noundef %2, ptr noundef nonnull @cpuidle_coupled_poke_pending) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_coupled_unregister_device(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpuidle_coupled, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @kfree(ptr noundef %3) #10
  br label %14

14:                                               ; preds = %13, %8
  store ptr null, ptr %2, align 4
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpuidle_coupled_init() #6 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 51, ptr noundef nonnull @.str.1, i1 noundef zeroext false, ptr noundef nonnull @coupled_cpu_up_prepare, ptr noundef nonnull @coupled_cpu_online, i1 noundef zeroext false) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.2, i1 noundef zeroext false, ptr noundef nonnull @coupled_cpu_online, ptr noundef nonnull @coupled_cpu_up_prepare, i1 noundef zeroext false) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @__cpuhp_remove_state(i32 noundef 51, i1 noundef zeroext false) #10
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ %4, %3 ]
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coupled_cpu_up_prepare(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpuidle_devices to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.cpuidle_coupled, ptr %10, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call fastcc void @cpuidle_coupled_poke_others(i32 noundef %15, ptr noundef nonnull %10) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %19 = getelementptr inbounds %struct.cpuidle_coupled, ptr %10, i32 0, i32 2
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !38
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %12, %8, %1
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coupled_cpu_online(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpuidle_devices to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr @__cpu_online_mask, align 4
  %14 = and i32 %13, 65535
  %15 = load i32, ptr %10, align 4
  %16 = and i32 %14, %15
  %17 = tail call i32 @__sw_hweight32(i32 noundef %16) #10
  %18 = getelementptr inbounds %struct.cpuidle_coupled, ptr %10, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !40
  %23 = getelementptr inbounds %struct.cpuidle_coupled, ptr %19, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  tail call fastcc void @cpuidle_coupled_poke_others(i32 noundef %22, ptr noundef %19) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  br label %26

26:                                               ; preds = %12, %8, %1
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2151272412}
!9 = !{i64 434159, i64 2147924130, i64 2147924156, i64 2147924203, i64 2147924225, i64 2147924253, i64 2147924273}
!10 = !{i64 2147936342, i64 2147936368, i64 2147936397, i64 2147936431, i64 2147936462, i64 2147936485}
!11 = !{i64 2151272661}
!12 = !{i64 2151272503}
!13 = !{i64 2148034164}
!14 = !{i64 2147937026, i64 2147937058, i64 2147937087, i64 2147937121, i64 2147937152, i64 2147937175}
!15 = !{i64 2148034367}
!16 = !{i64 2151272910}
!17 = !{i64 2151272752}
!18 = !{i64 329643}
!19 = !{i64 2151276060}
!20 = !{i64 2151275902}
!21 = !{i64 329833}
!22 = !{i64 2151276514}
!23 = !{i64 2147938699, i64 2147938725, i64 2147938754, i64 2147938788, i64 2147938819, i64 2147938842}
!24 = !{i64 2151276734}
!25 = !{i64 2147935849}
!26 = !{i64 420728, i64 420753, i64 420775, i64 420791, i64 420803, i64 420823, i64 420847, i64 420863, i64 420875}
!27 = !{i64 2147935975}
!28 = !{i64 2151276985}
!29 = !{i64 2151276827}
!30 = !{i64 2151277124}
!31 = !{i64 2151277460}
!32 = !{i64 2151277302}
!33 = !{i64 2151274485}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2151280539}
!36 = !{i64 2151280703}
!37 = !{i64 2151280932}
!38 = !{i64 2151280774}
!39 = !{i64 2151281047}
!40 = !{i64 2151281256}
!41 = !{i64 2151281343}
