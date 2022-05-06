; ModuleID = '/llk/IR/kernel/uid16.c_pt.bc'
source_filename = "../kernel/uid16.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.12 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }

@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

@sys_chown16 = dso_local alias i32 (ptr, i16, i16), ptr @__se_sys_chown16
@sys_lchown16 = dso_local alias i32 (ptr, i16, i16), ptr @__se_sys_lchown16
@sys_fchown16 = dso_local alias i32 (i32, i16, i16), ptr @__se_sys_fchown16
@sys_setregid16 = dso_local alias i32 (i16, i16), ptr @__se_sys_setregid16
@sys_setgid16 = dso_local alias i32 (i16), ptr @__se_sys_setgid16
@sys_setreuid16 = dso_local alias i32 (i16, i16), ptr @__se_sys_setreuid16
@sys_setuid16 = dso_local alias i32 (i16), ptr @__se_sys_setuid16
@sys_setresuid16 = dso_local alias i32 (i16, i16, i16), ptr @__se_sys_setresuid16
@sys_getresuid16 = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresuid16
@sys_setresgid16 = dso_local alias i32 (i16, i16, i16), ptr @__se_sys_setresgid16
@sys_getresgid16 = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresgid16
@sys_setfsuid16 = dso_local alias i32 (i16), ptr @__se_sys_setfsuid16
@sys_setfsgid16 = dso_local alias i32 (i16), ptr @__se_sys_setfsgid16
@sys_getgroups16 = dso_local alias i32 (i32, ptr), ptr @__se_sys_getgroups16
@sys_setgroups16 = dso_local alias i32 (i32, ptr), ptr @__se_sys_setgroups16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chown16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = trunc i32 %1 to i16
  %6 = trunc i32 %2 to i16
  %7 = and i32 %1, 65535
  %8 = icmp eq i16 %5, -1
  %9 = select i1 %8, i32 -1, i32 %7
  %10 = and i32 %2, 65535
  %11 = icmp eq i16 %6, -1
  %12 = select i1 %11, i32 -1, i32 %10
  %13 = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %4, i32 noundef %9, i32 noundef %12, i32 noundef 0) #4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lchown16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = trunc i32 %1 to i16
  %6 = trunc i32 %2 to i16
  %7 = and i32 %1, 65535
  %8 = icmp eq i16 %5, -1
  %9 = select i1 %8, i32 -1, i32 %7
  %10 = and i32 %2, 65535
  %11 = icmp eq i16 %6, -1
  %12 = select i1 %11, i32 -1, i32 %10
  %13 = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %4, i32 noundef %9, i32 noundef %12, i32 noundef 256) #4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchown16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %1 to i16
  %5 = trunc i32 %2 to i16
  %6 = and i32 %1, 65535
  %7 = icmp eq i16 %4, -1
  %8 = select i1 %7, i32 -1, i32 %6
  %9 = and i32 %2, 65535
  %10 = icmp eq i16 %5, -1
  %11 = select i1 %10, i32 -1, i32 %9
  %12 = tail call i32 @ksys_fchown(i32 noundef %0, i32 noundef %8, i32 noundef %11) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setregid16(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i16
  %4 = trunc i32 %1 to i16
  %5 = and i32 %0, 65535
  %6 = icmp eq i16 %3, -1
  %7 = select i1 %6, i32 -1, i32 %5
  %8 = and i32 %1, 65535
  %9 = icmp eq i16 %4, -1
  %10 = select i1 %9, i32 -1, i32 %8
  %11 = tail call i32 @__sys_setregid(i32 noundef %7, i32 noundef %10) #4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgid16(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  %3 = and i32 %0, 65535
  %4 = icmp eq i16 %2, -1
  %5 = select i1 %4, i32 -1, i32 %3
  %6 = tail call i32 @__sys_setgid(i32 noundef %5) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setreuid16(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i16
  %4 = trunc i32 %1 to i16
  %5 = and i32 %0, 65535
  %6 = icmp eq i16 %3, -1
  %7 = select i1 %6, i32 -1, i32 %5
  %8 = and i32 %1, 65535
  %9 = icmp eq i16 %4, -1
  %10 = select i1 %9, i32 -1, i32 %8
  %11 = tail call i32 @__sys_setreuid(i32 noundef %7, i32 noundef %10) #4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setuid16(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  %3 = and i32 %0, 65535
  %4 = icmp eq i16 %2, -1
  %5 = select i1 %4, i32 -1, i32 %3
  %6 = tail call i32 @__sys_setuid(i32 noundef %5) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresuid16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %0 to i16
  %5 = trunc i32 %1 to i16
  %6 = trunc i32 %2 to i16
  %7 = and i32 %0, 65535
  %8 = icmp eq i16 %4, -1
  %9 = select i1 %8, i32 -1, i32 %7
  %10 = and i32 %1, 65535
  %11 = icmp eq i16 %5, -1
  %12 = select i1 %11, i32 -1, i32 %10
  %13 = and i32 %2, 65535
  %14 = icmp eq i16 %6, -1
  %15 = select i1 %14, i32 -1, i32 %13
  %16 = tail call i32 @__sys_setresuid(i32 noundef %9, i32 noundef %12, i32 noundef %15) #4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresuid16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #4
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = load i32, ptr @overflowuid, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = icmp ult i32 %13, 65536
  %15 = select i1 %14, i32 %13, i32 %12
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -1
  %22 = select i1 %21, i32 %12, i32 %20
  %23 = icmp ult i32 %22, 65536
  %24 = select i1 %23, i32 %22, i32 %12
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #5, !srcloc !8
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i16 %16, i32 -1090519041) #4, !srcloc !11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %3
  %33 = inttoptr i32 %1 to ptr
  %34 = icmp eq i32 %18, -1
  %35 = select i1 %34, i32 %12, i32 %18
  %36 = icmp ult i32 %35, 65536
  %37 = select i1 %36, i32 %35, i32 %12
  %38 = trunc i32 %37 to i16
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #5, !srcloc !8
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %33, i16 %38, i32 -1090519041) #4, !srcloc !12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #5, !srcloc !8
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i16 %25, i32 -1090519041) #4, !srcloc !13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  br label %49

49:                                               ; preds = %44, %32, %3
  %50 = phi i32 [ %30, %3 ], [ %42, %32 ], [ %48, %44 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresgid16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %0 to i16
  %5 = trunc i32 %1 to i16
  %6 = trunc i32 %2 to i16
  %7 = and i32 %0, 65535
  %8 = icmp eq i16 %4, -1
  %9 = select i1 %8, i32 -1, i32 %7
  %10 = and i32 %1, 65535
  %11 = icmp eq i16 %5, -1
  %12 = select i1 %11, i32 -1, i32 %10
  %13 = and i32 %2, 65535
  %14 = icmp eq i16 %6, -1
  %15 = select i1 %14, i32 -1, i32 %13
  %16 = tail call i32 @__sys_setresgid(i32 noundef %9, i32 noundef %12, i32 noundef %15) #4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresgid16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #4
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = load i32, ptr @overflowgid, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = icmp ult i32 %13, 65536
  %15 = select i1 %14, i32 %13, i32 %12
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -1
  %22 = select i1 %21, i32 %12, i32 %20
  %23 = icmp ult i32 %22, 65536
  %24 = select i1 %23, i32 %22, i32 %12
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #5, !srcloc !8
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i16 %16, i32 -1090519041) #4, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %3
  %33 = inttoptr i32 %1 to ptr
  %34 = icmp eq i32 %18, -1
  %35 = select i1 %34, i32 %12, i32 %18
  %36 = icmp ult i32 %35, 65536
  %37 = select i1 %36, i32 %35, i32 %12
  %38 = trunc i32 %37 to i16
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #5, !srcloc !8
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %33, i16 %38, i32 -1090519041) #4, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #5, !srcloc !8
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i16 %25, i32 -1090519041) #4, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  br label %49

49:                                               ; preds = %44, %32, %3
  %50 = phi i32 [ %30, %3 ], [ %42, %32 ], [ %48, %44 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsuid16(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  %3 = and i32 %0, 65535
  %4 = icmp eq i16 %2, -1
  %5 = select i1 %4, i32 -1, i32 %3
  %6 = tail call i32 @__sys_setfsuid(i32 noundef %5) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsgid16(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  %3 = and i32 %0, 65535
  %4 = icmp eq i16 %2, -1
  %5 = select i1 %4, i32 -1, i32 %3
  %6 = tail call i32 @__sys_setfsgid(i32 noundef %5) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getgroups16(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call ptr @llvm.thread.pointer() #4
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.group_info, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %6
  %15 = icmp sgt i32 %12, %0
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = icmp sgt i32 %12, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  br label %24

20:                                               ; preds = %24
  %21 = add nuw nsw i32 %25, 1
  %22 = load i32, ptr %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20, %18
  %25 = phi i32 [ 0, %18 ], [ %21, %20 ]
  %26 = getelementptr %struct.group_info, ptr %10, i32 0, i32 2, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  %29 = load i32, ptr @overflowgid, align 4
  %30 = select i1 %28, i32 %29, i32 %27
  %31 = icmp ult i32 %30, 65536
  %32 = select i1 %31, i32 %30, i32 %29
  %33 = trunc i32 %32 to i16
  %34 = getelementptr i16, ptr %3, i32 %25
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #5, !srcloc !8
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %34, i16 %33, i32 -1090519041) #4, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %20, label %40

40:                                               ; preds = %24, %20, %16, %14, %6, %2
  %41 = phi i32 [ -22, %2 ], [ %12, %6 ], [ -22, %14 ], [ %12, %16 ], [ -14, %24 ], [ %12, %20 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgroups16(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call zeroext i1 @may_setgroups() #4
  br i1 %4, label %5, label %47

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 65536
  br i1 %6, label %47, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @groups_alloc(i32 noundef %0) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.group_info, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #4
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  br label %17

17:                                               ; preds = %30, %14
  %18 = phi i32 [ 0, %14 ], [ %32, %30 ]
  %19 = getelementptr i16, ptr %3, i32 %18
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #5, !srcloc !8
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %19, i32 -1090519041) #4, !srcloc !18
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #4, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = extractvalue { i32, i32 } %23, 1
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.group_info, ptr %8, i32 0, i32 2, i32 %18
  store i32 %28, ptr %31, align 4
  %32 = add nuw nsw i32 %18, 1
  %33 = load i32, ptr %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %17, label %40

35:                                               ; preds = %26, %17
  %36 = phi i32 [ -22, %26 ], [ -14, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #4, !srcloc !20
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #4, !srcloc !21
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %47

40:                                               ; preds = %30, %10
  tail call void @groups_sort(ptr noundef nonnull %8) #4
  %41 = tail call i32 @set_current_groups(ptr noundef nonnull %8) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #4, !srcloc !20
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #4, !srcloc !21
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !22
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %36, %35 ], [ %41, %40 ]
  tail call void @groups_free(ptr noundef nonnull %8) #4
  br label %47

47:                                               ; preds = %45, %40, %35, %7, %5, %2
  %48 = phi i32 [ -1, %2 ], [ -22, %5 ], [ -12, %7 ], [ %36, %35 ], [ %41, %40 ], [ %46, %45 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_getuid16() local_unnamed_addr #1 {
  %1 = tail call ptr @llvm.thread.pointer() #4
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowuid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = icmp ult i32 %8, 65536
  %10 = select i1 %9, i32 %8, i32 %7
  %11 = and i32 %10, 65535
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_geteuid16() local_unnamed_addr #1 {
  %1 = tail call ptr @llvm.thread.pointer() #4
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowuid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = icmp ult i32 %8, 65536
  %10 = select i1 %9, i32 %8, i32 %7
  %11 = and i32 %10, 65535
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_getgid16() local_unnamed_addr #1 {
  %1 = tail call ptr @llvm.thread.pointer() #4
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowgid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = icmp ult i32 %8, 65536
  %10 = select i1 %9, i32 %8, i32 %7
  %11 = and i32 %10, 65535
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_getegid16() local_unnamed_addr #1 {
  %1 = tail call ptr @llvm.thread.pointer() #4
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowgid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = icmp ult i32 %8, 65536
  %10 = select i1 %9, i32 %8, i32 %7
  %11 = and i32 %10, 65535
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_fchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setregid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setgid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setreuid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setuid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setresuid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setresgid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setfsuid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setfsgid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_setgroups() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_current_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

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
!8 = !{i64 4000967}
!9 = !{i64 4001164}
!10 = !{i64 2151486443}
!11 = !{i64 2153676027, i64 2153676307, i64 2153676641, i64 2153676975}
!12 = !{i64 2153684154, i64 2153684434, i64 2153684768, i64 2153685102}
!13 = !{i64 2153692281, i64 2153692561, i64 2153692895, i64 2153693229}
!14 = !{i64 2153721632, i64 2153721912, i64 2153722246, i64 2153722580}
!15 = !{i64 2153729759, i64 2153730039, i64 2153730373, i64 2153730707}
!16 = !{i64 2153737886, i64 2153738166, i64 2153738500, i64 2153738834}
!17 = !{i64 2153754577, i64 2153754857, i64 2153755191, i64 2153755525}
!18 = !{i64 2153765019, i64 2153765299, i64 2153765633, i64 2153765967}
!19 = !{i64 2148445691}
!20 = !{i64 843626, i64 2148333597, i64 2148333623, i64 2148333670, i64 2148333692, i64 2148333720, i64 2148333740}
!21 = !{i64 2148348053, i64 2148348085, i64 2148348114, i64 2148348148, i64 2148348179, i64 2148348202}
!22 = !{i64 2148445894}
