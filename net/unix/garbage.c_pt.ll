; ModuleID = '/llk/IR/net/unix/garbage.c_pt.bc'
source_filename = "../net/unix/garbage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%struct.sock_common = type { %union.anon.1, %union.anon.2, %union.anon.3, i16, i8, i8, i32, %union.anon.5, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.126 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [44 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [36 x i8] }
%struct.scm_stat = type { %struct.atomic_t }
%struct.sk_buff_list = type { ptr, ptr }
%struct.scm_fp_list = type { i16, i16, ptr, [253 x ptr] }

@unix_tot_inflight = external dso_local global i32, align 4
@gc_in_progress = internal global i8 0, align 1
@unix_gc_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @unix_gc_wait, i64 4), ptr getelementptr (i8, ptr @unix_gc_wait, i64 4) } }, align 4
@unix_gc_lock = external dso_local global %struct.spinlock, align 4
@gc_inflight_list = external dso_local global %struct.list_head, align 4
@gc_candidates = internal global %struct.list_head { ptr @gc_candidates, ptr @gc_candidates }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_unix_gc() local_unnamed_addr #0 {
  %1 = alloca %struct.wait_queue_entry, align 4
  %2 = load volatile i32, ptr @unix_tot_inflight, align 4
  %3 = icmp ugt i32 %2, 16000
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load volatile i8, ptr @gc_in_progress, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  tail call void @unix_gc()
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i8, ptr @gc_in_progress, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8, %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #4
  %12 = call i32 @prepare_to_wait_event(ptr noundef nonnull @unix_gc_wait, ptr noundef nonnull %1, i32 noundef 2) #4
  %13 = load i8, ptr @gc_in_progress, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  call void @schedule() #4
  %16 = call i32 @prepare_to_wait_event(ptr noundef nonnull @unix_gc_wait, ptr noundef nonnull %1, i32 noundef 2) #4
  %17 = load i8, ptr @gc_in_progress, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  call void @finish_wait(ptr noundef nonnull @unix_gc_wait, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #4
  br label %20

20:                                               ; preds = %19, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unix_gc() local_unnamed_addr #0 {
  %1 = alloca %struct.sk_buff_head, align 4
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store i64 0, ptr %2, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #4
  %5 = load i8, ptr @gc_in_progress, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %125

7:                                                ; preds = %0
  store volatile i8 1, ptr @gc_in_progress, align 1
  %8 = load ptr, ptr @gc_inflight_list, align 4
  %9 = icmp eq ptr %8, @gc_inflight_list
  br i1 %9, label %10, label %15

10:                                               ; preds = %41, %7
  %11 = load ptr, ptr @gc_candidates, align 4
  %12 = icmp eq ptr %11, @gc_candidates
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store volatile ptr %2, ptr @gc_candidates, align 4
  br label %73

15:                                               ; preds = %41, %7
  %16 = phi ptr [ %17, %41 ], [ %8, %7 ]
  %17 = load ptr, ptr %16, align 64
  %18 = getelementptr i8, ptr %16, i32 -104
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 6
  %23 = load volatile i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %16, i32 8
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %15
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

28:                                               ; preds = %15
  %29 = icmp slt i32 %23, %25
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %28
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

31:                                               ; preds = %28
  %32 = icmp eq i32 %23, %25
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %17, ptr %35, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  store ptr %16, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  store ptr @gc_candidates, ptr %16, align 4
  store ptr %37, ptr %34, align 4
  store volatile ptr %16, ptr %37, align 4
  %38 = getelementptr i8, ptr %16, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 3
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = icmp eq ptr %17, @gc_inflight_list
  br i1 %42, label %10, label %15

43:                                               ; preds = %43, %10
  %44 = phi ptr [ %46, %43 ], [ %11, %10 ]
  %45 = getelementptr i8, ptr %44, i32 -576
  call fastcc void @scan_children(ptr noundef %45, ptr noundef nonnull @dec_inflight, ptr noundef null)
  %46 = load ptr, ptr %44, align 4
  %47 = icmp eq ptr %46, @gc_candidates
  br i1 %47, label %48, label %43

48:                                               ; preds = %43
  %49 = load ptr, ptr @gc_candidates, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %2, ptr %50, align 4
  store ptr %49, ptr %2, align 8
  %51 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr @gc_candidates, ptr %51, align 4
  store volatile ptr %2, ptr @gc_candidates, align 4
  %52 = icmp eq ptr %49, @gc_candidates
  br i1 %52, label %73, label %53

53:                                               ; preds = %69, %48
  %54 = phi ptr [ %72, %69 ], [ @gc_candidates, %48 ]
  %55 = phi ptr [ %70, %69 ], [ %49, %48 ]
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  %57 = load ptr, ptr %55, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %2, ptr %58, align 4
  store ptr %57, ptr %2, align 8
  store ptr %55, ptr %51, align 4
  store volatile ptr %2, ptr %55, align 4
  %59 = getelementptr i8, ptr %55, i32 8
  %60 = load volatile i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = getelementptr i8, ptr %55, i32 -576
  %64 = load ptr, ptr %56, align 4
  store ptr %64, ptr %51, align 4
  store volatile ptr %2, ptr %64, align 4
  %65 = load ptr, ptr %4, align 4
  store ptr %55, ptr %4, align 4
  store ptr %3, ptr %55, align 4
  store ptr %65, ptr %56, align 4
  store volatile ptr %55, ptr %65, align 4
  %66 = getelementptr i8, ptr %55, i32 16
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, -3
  store i32 %68, ptr %66, align 4
  call fastcc void @scan_children(ptr noundef %63, ptr noundef nonnull @inc_inflight_move_tail, ptr noundef null)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load ptr, ptr %2, align 8
  %71 = icmp eq ptr %70, @gc_candidates
  %72 = load ptr, ptr %51, align 4
  br i1 %71, label %73, label %53

73:                                               ; preds = %69, %48, %13
  %74 = phi ptr [ %51, %48 ], [ %14, %13 ], [ %51, %69 ]
  %75 = phi ptr [ @gc_candidates, %48 ], [ @gc_candidates, %13 ], [ %72, %69 ]
  store ptr %75, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  store volatile ptr @gc_candidates, ptr %75, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %74, align 4
  %76 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 2
  store i32 0, ptr %76, align 4
  store ptr %1, ptr %1, align 4
  %77 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 1
  store ptr %1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  store i32 0, ptr %78, align 4
  %79 = load ptr, ptr @gc_candidates, align 4
  %80 = icmp eq ptr %79, @gc_candidates
  br i1 %80, label %81, label %84

81:                                               ; preds = %84, %73
  %82 = load volatile ptr, ptr %3, align 8
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %101, label %89

84:                                               ; preds = %84, %73
  %85 = phi ptr [ %87, %84 ], [ %79, %73 ]
  %86 = getelementptr i8, ptr %85, i32 -576
  call fastcc void @scan_children(ptr noundef %86, ptr noundef nonnull @inc_inflight, ptr noundef nonnull %1)
  %87 = load ptr, ptr %85, align 4
  %88 = icmp eq ptr %87, @gc_candidates
  br i1 %88, label %81, label %84

89:                                               ; preds = %89, %81
  %90 = phi ptr [ %99, %89 ], [ %82, %81 ]
  %91 = getelementptr i8, ptr %90, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, -2
  store i32 %93, ptr %91, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %90, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %95, ptr %97, align 4
  store volatile ptr %96, ptr %95, align 4
  %98 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  store ptr %90, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  store ptr @gc_inflight_list, ptr %90, align 4
  store ptr %98, ptr %94, align 4
  store volatile ptr %90, ptr %98, align 4
  %99 = load volatile ptr, ptr %3, align 8
  %100 = icmp eq ptr %99, %3
  br i1 %100, label %101, label %89

101:                                              ; preds = %89, %81
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %102 = load i16, ptr @unix_gc_lock, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr @unix_gc_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  %104 = load ptr, ptr %1, align 4
  %105 = icmp eq ptr %104, %1
  %106 = icmp eq ptr %104, null
  %107 = or i1 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %108, %101
  %109 = phi ptr [ %116, %108 ], [ %104, %101 ]
  %110 = load i32, ptr %78, align 4
  %111 = add i32 %110, -1
  store volatile i32 %111, ptr %78, align 4
  %112 = load ptr, ptr %109, align 8
  %113 = getelementptr inbounds %struct.anon.43, ptr %109, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  store ptr null, ptr %113, align 4
  store ptr null, ptr %109, align 8
  %115 = getelementptr inbounds %struct.anon.43, ptr %112, i32 0, i32 1
  store volatile ptr %114, ptr %115, align 4
  store volatile ptr %112, ptr %114, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %109, i32 noundef 0) #4
  %116 = load ptr, ptr %1, align 4
  %117 = icmp eq ptr %116, %1
  %118 = icmp eq ptr %116, null
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %108

120:                                              ; preds = %108, %101
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #4
  %121 = load volatile ptr, ptr @gc_candidates, align 4
  %122 = icmp eq ptr %121, @gc_candidates
  br i1 %122, label %124, label %123, !prof !17

123:                                              ; preds = %120
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #4, !srcloc !18
  unreachable

124:                                              ; preds = %120
  store volatile i8 0, ptr @gc_in_progress, align 1
  call void @__wake_up(ptr noundef nonnull @unix_gc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %125

125:                                              ; preds = %124, %0
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %126 = load i16, ptr @unix_gc_lock, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr @unix_gc_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scan_children(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @scan_inflight(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %43

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store ptr %4, ptr %4, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  call void @_raw_spin_lock(ptr noundef %12) #4
  %13 = load ptr, ptr %11, align 8
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %28, label %15

15:                                               ; preds = %24, %9
  %16 = phi ptr [ %17, %24 ], [ %13, %9 ]
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.unix_sock, ptr %19, i32 0, i32 6
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %24, label %23, !prof !17

23:                                               ; preds = %15
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #4, !srcloc !19
  unreachable

24:                                               ; preds = %15
  %25 = load ptr, ptr %10, align 4
  store ptr %20, ptr %10, align 4
  store ptr %4, ptr %20, align 4
  %26 = getelementptr inbounds %struct.unix_sock, ptr %19, i32 0, i32 6, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %20, ptr %25, align 4
  %27 = icmp eq ptr %17, %11
  br i1 %27, label %28, label %15

28:                                               ; preds = %24, %9
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %29 = load i16, ptr %12, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  %31 = load volatile ptr, ptr %4, align 8
  %32 = icmp eq ptr %31, %4
  br i1 %32, label %42, label %33

33:                                               ; preds = %33, %28
  %34 = phi ptr [ %40, %33 ], [ %31, %28 ]
  %35 = getelementptr i8, ptr %34, i32 -576
  call fastcc void @scan_inflight(ptr noundef %35, ptr noundef %1, ptr noundef %2)
  %36 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %36, align 4
  %40 = load volatile ptr, ptr %4, align 8
  %41 = icmp eq ptr %40, %4
  br i1 %41, label %42, label %33

42:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dec_inflight(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !20
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inc_inflight_move_tail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !20
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #4, !srcloc !22
  %4 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  store ptr %9, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  store ptr @gc_candidates, ptr %9, align 4
  store ptr %14, ptr %10, align 4
  store volatile ptr %9, ptr %14, align 4
  br label %15

15:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inc_inflight(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !20
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #4, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scan_inflight(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %5) #4
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %57, label %8

8:                                                ; preds = %3
  %9 = icmp ne ptr %2, null
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %11 = getelementptr inbounds %struct.sk_buff_list, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  br label %13

13:                                               ; preds = %55, %8
  %14 = phi ptr [ %6, %8 ], [ %15, %55 ]
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %13
  %20 = load i16, ptr %17, align 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.scm_fp_list, ptr %17, i32 0, i32 3
  %24 = sext i16 %20 to i32
  br label %25

25:                                               ; preds = %40, %22
  %26 = phi i32 [ %29, %40 ], [ %24, %22 ]
  %27 = phi ptr [ %30, %40 ], [ %23, %22 ]
  %28 = phi i1 [ %41, %40 ], [ false, %22 ]
  %29 = add i32 %26, -1
  %30 = getelementptr ptr, ptr %27, i32 1
  %31 = load ptr, ptr %27, align 4
  %32 = tail call ptr @unix_get_socket(ptr noundef %31) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.unix_sock, ptr %32, i32 0, i32 9
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void %1(ptr noundef nonnull %32) #4, !callees !23
  br label %40

40:                                               ; preds = %39, %34, %25
  %41 = phi i1 [ %28, %25 ], [ true, %39 ], [ %28, %34 ]
  %42 = icmp eq i32 %29, 0
  br i1 %42, label %43, label %25

43:                                               ; preds = %40
  %44 = and i1 %9, %41
  br i1 %44, label %45, label %55

45:                                               ; preds = %43
  %46 = load i32, ptr %10, align 4
  %47 = add i32 %46, -1
  store volatile i32 %47, ptr %10, align 4
  %48 = load ptr, ptr %14, align 8
  %49 = getelementptr inbounds %struct.anon.43, ptr %14, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr null, ptr %49, align 4
  store ptr null, ptr %14, align 8
  %51 = getelementptr inbounds %struct.anon.43, ptr %48, i32 0, i32 1
  store volatile ptr %50, ptr %51, align 4
  store volatile ptr %48, ptr %50, align 8
  %52 = load ptr, ptr %11, align 4
  store volatile ptr %2, ptr %14, align 8
  store volatile ptr %52, ptr %49, align 4
  store volatile ptr %14, ptr %11, align 4
  store volatile ptr %14, ptr %52, align 4
  %53 = load i32, ptr %12, align 4
  %54 = add i32 %53, 1
  store volatile i32 %54, ptr %12, align 4
  br label %55

55:                                               ; preds = %45, %43, %19, %13
  %56 = icmp eq ptr %15, %4
  br i1 %56, label %57, label %13

57:                                               ; preds = %55, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %58 = load i16, ptr %5, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @unix_get_socket(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155358897, i64 2155359380, i64 2155358934, i64 2155358990, i64 2155359024, i64 2155359048, i64 2155359089, i64 2155359110, i64 2155359138, i64 2155359172}
!12 = !{i64 2155363999, i64 2155364482, i64 2155364036, i64 2155364092, i64 2155364126, i64 2155364150, i64 2155364191, i64 2155364212, i64 2155364240, i64 2155364274}
!13 = !{i64 2148899622}
!14 = !{i64 2148895446}
!15 = !{i64 2148895521, i64 2148895548, i64 2148895595, i64 2148895617, i64 2148895645, i64 2148895665}
!16 = !{i64 2148922625}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2155374094, i64 2155374577, i64 2155374131, i64 2155374187, i64 2155374221, i64 2155374245, i64 2155374286, i64 2155374307, i64 2155374335, i64 2155374369}
!19 = !{i64 2155342410, i64 2155342893, i64 2155342447, i64 2155342503, i64 2155342537, i64 2155342561, i64 2155342602, i64 2155342623, i64 2155342651, i64 2155342685}
!20 = !{i64 417739, i64 2147907710, i64 2147907736, i64 2147907783, i64 2147907805, i64 2147907833, i64 2147907853}
!21 = !{i64 2147922279, i64 2147922305, i64 2147922334, i64 2147922368, i64 2147922399, i64 2147922422}
!22 = !{i64 2147919922, i64 2147919948, i64 2147919977, i64 2147920011, i64 2147920042, i64 2147920065}
!23 = !{ptr @dec_inflight, ptr @inc_inflight, ptr @inc_inflight_move_tail}
