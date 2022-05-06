; ModuleID = '/llk/IR/kernel/capability.c_pt.bc'
source_filename = "../kernel/capability.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cap_empty_set:\09\09\09\09\09"
module asm "\09.asciz \09\22__cap_empty_set\22\09\09\09\09\09"
module asm "__kstrtabns___cap_empty_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_has_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22has_capability\22\09\09\09\09\09"
module asm "__kstrtabns_has_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_capable_noaudit:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_capable_noaudit\22\09\09\09\09\09"
module asm "__kstrtabns_ns_capable_noaudit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_capable_setid:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_capable_setid\22\09\09\09\09\09"
module asm "__kstrtabns_ns_capable_setid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22capable\22\09\09\09\09\09"
module asm "__kstrtabns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22file_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_file_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capable_wrt_inode_uidgid:\09\09\09\09\09"
module asm "\09.asciz \09\22capable_wrt_inode_uidgid\22\09\09\09\09\09"
module asm "__kstrtabns_capable_wrt_inode_uidgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_cap_struct = type { [2 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.44, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.__user_cap_data_struct = type { i32, i32, i32 }
%struct.__user_cap_header_struct = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.92 = type { ptr }

@__cap_empty_set = dso_local constant %struct.kernel_cap_struct zeroinitializer, align 4
@__kstrtab___cap_empty_set = external dso_local constant [0 x i8], align 1
@__kstrtabns___cap_empty_set = external dso_local constant [0 x i8], align 1
@__ksymtab___cap_empty_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cap_empty_set to i32), ptr @__kstrtab___cap_empty_set, ptr @__kstrtabns___cap_empty_set }, section "___ksymtab+__cap_empty_set", align 4
@file_caps_enabled = dso_local local_unnamed_addr global i32 1, align 4
@__setup_str_file_caps_disable = internal constant [13 x i8] c"no_file_caps\00", section ".init.rodata", align 1
@__setup_file_caps_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_file_caps_disable, ptr @file_caps_disable, i32 0 }, section ".init.setup", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_has_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_has_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_has_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @has_capability to i32), ptr @__kstrtab_has_capability, ptr @__kstrtabns_has_capability }, section "___ksymtab+has_capability", align 4
@__kstrtab_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_capable to i32), ptr @__kstrtab_ns_capable, ptr @__kstrtabns_ns_capable }, section "___ksymtab+ns_capable", align 4
@__kstrtab_ns_capable_noaudit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_capable_noaudit = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_capable_noaudit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_capable_noaudit to i32), ptr @__kstrtab_ns_capable_noaudit, ptr @__kstrtabns_ns_capable_noaudit }, section "___ksymtab+ns_capable_noaudit", align 4
@__kstrtab_ns_capable_setid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_capable_setid = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_capable_setid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_capable_setid to i32), ptr @__kstrtab_ns_capable_setid, ptr @__kstrtabns_ns_capable_setid }, section "___ksymtab+ns_capable_setid", align 4
@__kstrtab_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capable to i32), ptr @__kstrtab_capable, ptr @__kstrtabns_capable }, section "___ksymtab+capable", align 4
@file_ns_capable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/capability.c\00", align 1
@__kstrtab_file_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_file_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_ns_capable to i32), ptr @__kstrtab_file_ns_capable, ptr @__kstrtabns_file_ns_capable }, section "___ksymtab+file_ns_capable", align 4
@__kstrtab_capable_wrt_inode_uidgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_capable_wrt_inode_uidgid = external dso_local constant [0 x i8], align 1
@__ksymtab_capable_wrt_inode_uidgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capable_wrt_inode_uidgid to i32), ptr @__kstrtab_capable_wrt_inode_uidgid, ptr @__kstrtabns_capable_wrt_inode_uidgid }, section "___ksymtab+capable_wrt_inode_uidgid", align 4
@warn_legacy_capability_use.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"\016capability: warning: `%s' uses 32-bit capabilities (legacy support in use)\0A\00", align 1
@warn_deprecated_v2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"\016capability: warning: `%s' uses deprecated v2 capabilities in a way that may be insecure\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\012capability: capable() called with invalid cap=%u\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___cap_empty_set, ptr @__ksymtab_capable, ptr @__ksymtab_capable_wrt_inode_uidgid, ptr @__ksymtab_file_ns_capable, ptr @__ksymtab_has_capability, ptr @__ksymtab_ns_capable, ptr @__ksymtab_ns_capable_noaudit, ptr @__ksymtab_ns_capable_setid, ptr @__setup_file_caps_disable], section "llvm.metadata"

@sys_capget = dso_local alias i32 (ptr, ptr), ptr @__se_sys_capget
@sys_capset = dso_local alias i32 (ptr, ptr), ptr @__se_sys_capset

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @file_caps_disable(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i32 0, ptr @file_caps_enabled, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_capget(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kernel_cap_struct, align 8
  %5 = alloca %struct.kernel_cap_struct, align 8
  %6 = alloca %struct.kernel_cap_struct, align 8
  %7 = alloca [2 x %struct.__user_cap_data_struct], align 4
  %8 = inttoptr i32 %0 to ptr
  %9 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %10 = call fastcc i32 @cap_validate_magic(ptr noundef %8, ptr noundef nonnull %3) #8
  %11 = icmp eq i32 %1, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = icmp eq i32 %10, -22
  %16 = select i1 %11, i1 %15, i1 false
  %17 = select i1 %16, i32 0, i32 %10
  br label %82

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.__user_cap_header_struct, ptr %8, i32 0, i32 1
  %20 = tail call ptr @llvm.thread.pointer() #8
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #9, !srcloc !9
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %19, i32 -1090519041) #8, !srcloc !12
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %18
  %30 = icmp slt i32 %27, 0
  br i1 %30, label %82, label %31

31:                                               ; preds = %29
  %32 = icmp eq i32 %27, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %31
  %34 = tail call i32 @__task_pid_nr_ns(ptr noundef %20, i32 noundef 0, ptr noundef null) #8
  %35 = icmp eq i32 %34, %27
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %37 = tail call ptr @find_task_by_vpid(i32 noundef %27) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @cap_capget(ptr noundef nonnull %37, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %40, %39 ], [ -3, %36 ]
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %45

43:                                               ; preds = %33, %31
  %44 = call i32 @cap_capget(ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false) #8, !annotation !8
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %51, %48
  %52 = phi i32 [ %62, %51 ], [ 0, %48 ]
  %53 = getelementptr [2 x i32], ptr %4, i32 0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %7, i32 0, i32 %52
  store i32 %54, ptr %55, align 4
  %56 = getelementptr [2 x i32], ptr %6, i32 0, i32 %52
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %7, i32 0, i32 %52, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr [2 x i32], ptr %5, i32 0, i32 %52
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %7, i32 0, i32 %52, i32 2
  store i32 %60, ptr %61, align 4
  %62 = add nuw i32 %52, 1
  %63 = icmp eq i32 %62, %49
  br i1 %63, label %64, label %51

64:                                               ; preds = %51
  %65 = mul i32 %49, 12
  %66 = icmp ugt i32 %65, 24
  br i1 %66, label %67, label %68, !prof !15

67:                                               ; preds = %64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %65) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  br label %82

68:                                               ; preds = %64, %48
  %69 = phi i32 [ %65, %64 ], [ 0, %48 ]
  %70 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %69, i32 -1090519040) #10, !srcloc !16
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #9, !srcloc !9
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #8, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %77 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %69) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #8, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i32 [ %77, %73 ], [ %69, %68 ]
  %80 = icmp eq i32 %79, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %45
  br label %82

82:                                               ; preds = %81, %78, %67, %29, %18, %14
  %83 = phi i32 [ %17, %14 ], [ %46, %81 ], [ -14, %78 ], [ -14, %18 ], [ -22, %29 ], [ -14, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_capset(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca [2 x %struct.__user_cap_data_struct], align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernel_cap_struct, align 8
  %6 = alloca %struct.kernel_cap_struct, align 8
  %7 = alloca %struct.kernel_cap_struct, align 8
  %8 = inttoptr i32 %0 to ptr
  %9 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !8
  %10 = call fastcc i32 @cap_validate_magic(ptr noundef %8, ptr noundef nonnull %4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %96

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.__user_cap_header_struct, ptr %8, i32 0, i32 1
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #9, !srcloc !9
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1090519041) #8, !srcloc !17
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %12
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @__task_pid_nr_ns(ptr noundef %14, i32 noundef 0, ptr noundef null) #8
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %25, %23
  %29 = load i32, ptr %4, align 4
  %30 = mul i32 %29, 12
  %31 = icmp ugt i32 %30, 24
  br i1 %31, label %96, label %32

32:                                               ; preds = %28
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %30, i32 -1090519040) #10, !srcloc !18
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41, !prof !19

36:                                               ; preds = %32
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #9, !srcloc !9
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %40 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %9, i32 noundef %30) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #8, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i32 [ %40, %36 ], [ %30, %32 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50, !prof !19

44:                                               ; preds = %41
  %45 = icmp eq i32 %29, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = getelementptr [2 x i32], ptr %7, i32 0, i32 %29
  store i32 0, ptr %47, align 4
  %48 = getelementptr [2 x i32], ptr %6, i32 0, i32 %29
  store i32 0, ptr %48, align 4
  %49 = getelementptr [2 x i32], ptr %5, i32 0, i32 %29
  store i32 0, ptr %49, align 4
  br label %72

50:                                               ; preds = %41
  %51 = sub i32 %30, %42
  %52 = getelementptr i8, ptr %3, i32 %51
  call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %42, i1 false) #8
  br label %96

53:                                               ; preds = %59
  %54 = icmp ult i32 %29, 2
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = getelementptr [2 x i32], ptr %7, i32 0, i32 %29
  store i32 0, ptr %56, align 4
  %57 = getelementptr [2 x i32], ptr %6, i32 0, i32 %29
  store i32 0, ptr %57, align 4
  %58 = getelementptr [2 x i32], ptr %5, i32 0, i32 %29
  store i32 0, ptr %58, align 4
  br i1 %45, label %72, label %76

59:                                               ; preds = %59, %44
  %60 = phi i32 [ %70, %59 ], [ 0, %44 ]
  %61 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %3, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr [2 x i32], ptr %7, i32 0, i32 %60
  store i32 %62, ptr %63, align 4
  %64 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %3, i32 0, i32 %60, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr [2 x i32], ptr %6, i32 0, i32 %60
  store i32 %65, ptr %66, align 4
  %67 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %3, i32 0, i32 %60, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr [2 x i32], ptr %5, i32 0, i32 %60
  store i32 %68, ptr %69, align 4
  %70 = add nuw i32 %60, 1
  %71 = icmp eq i32 %70, %29
  br i1 %71, label %53, label %59

72:                                               ; preds = %55, %46
  %73 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %72, %55, %53
  %77 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 511
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 511
  store i32 %82, ptr %80, align 4
  %83 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 511
  store i32 %85, ptr %83, align 4
  %86 = call ptr @prepare_creds() #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 @cap_capset(ptr noundef nonnull %86, ptr noundef %90, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 @commit_creds(ptr noundef nonnull %86) #8
  br label %96

95:                                               ; preds = %88
  call void @abort_creds(ptr noundef nonnull %86) #8
  br label %96

96:                                               ; preds = %95, %93, %76, %50, %28, %25, %12, %2
  %97 = phi i32 [ %91, %95 ], [ %94, %93 ], [ %10, %2 ], [ -14, %12 ], [ -1, %25 ], [ -14, %28 ], [ -12, %76 ], [ -14, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @has_ns_capability(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %5 = load volatile ptr, ptr %4, align 4
  %6 = tail call i32 @cap_capable(ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %7 = icmp eq i32 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @has_capability(ptr noundef %0, i32 noundef %1) #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %4 = load volatile ptr, ptr %3, align 4
  %5 = tail call i32 @cap_capable(ptr noundef %4, ptr noundef nonnull @init_user_ns, i32 noundef %1, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @has_ns_capability_noaudit(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %5 = load volatile ptr, ptr %4, align 4
  %6 = tail call i32 @cap_capable(ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %7 = icmp eq i32 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @has_capability_noaudit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %4 = load volatile ptr, ptr %3, align 4
  %5 = tail call i32 @cap_capable(ptr noundef %4, ptr noundef nonnull @init_user_ns, i32 noundef %1, i32 noundef 2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ns_capable(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 40
  br i1 %3, label %4, label %6, !prof !15

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @cap_capable(ptr noundef %9, ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 256
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %6
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ns_capable_noaudit(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 40
  br i1 %3, label %4, label %6, !prof !15

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @cap_capable(ptr noundef %9, ptr noundef %0, i32 noundef %1, i32 noundef 2) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 256
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %6
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ns_capable_setid(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 40
  br i1 %3, label %4, label %6, !prof !15

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @cap_capable(ptr noundef %9, ptr noundef %0, i32 noundef %1, i32 noundef 4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 256
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %6
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @capable(i32 noundef %0) #1 {
  %2 = icmp ugt i32 %0, 40
  br i1 %2, label %3, label %5, !prof !15

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %0) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #8
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @cap_capable(ptr noundef %8, ptr noundef nonnull @init_user_ns, i32 noundef %0, i32 noundef 0) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 256
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %5
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @file_ns_capable(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = icmp ugt i32 %2, 40
  %5 = load i1, ptr @file_ns_capable.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !15

8:                                                ; preds = %3
  store i1 true, ptr @file_ns_capable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %15, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @cap_capable(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef 0) #8
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi i1 [ false, %9 ], [ %14, %10 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @privileged_wrt_inode_uidgid(ptr nocapture readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %9, -1
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i1 [ false, %3 ], [ %10, %7 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = icmp ugt i32 %2, 40
  br i1 %4, label %5, label %7, !prof !15

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %2) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #8
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @cap_capable(ptr noundef %10, ptr noundef nonnull @init_user_ns, i32 noundef %2, i32 noundef 0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 256
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp ne i32 %22, -1
  br label %24

24:                                               ; preds = %20, %13, %7
  %25 = phi i1 [ false, %7 ], [ false, %13 ], [ %23, %20 ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ptracer_capable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 81
  %4 = load volatile ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @cap_capable(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 19, i32 noundef 2) #8
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i1 [ %8, %6 ], [ true, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  ret i1 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cap_validate_magic(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca [16 x i8], align 1
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %6) #9, !srcloc !9
  %8 = and i32 %7, -13
  %9 = or i32 %8, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #8, !srcloc !21
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = extractvalue { i32, i32 } %10, 1
  switch i32 %14, label %27 [
    i32 429392688, label %15
    i32 537333798, label %21
    i32 537396514, label %34
  ]

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #8, !annotation !8
  %16 = load i1, ptr @warn_legacy_capability_use.__already_done, align 1
  br i1 %16, label %20, label %17, !prof !19

17:                                               ; preds = %15
  store i1 true, ptr @warn_legacy_capability_use.__already_done, align 1
  %18 = call ptr @__get_task_comm(ptr noundef nonnull %4, i32 noundef 16, ptr noundef %5) #8
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %18) #11
  br label %20

20:                                               ; preds = %17, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %34

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %22 = load i1, ptr @warn_deprecated_v2.__already_done, align 1
  br i1 %22, label %26, label %23, !prof !19

23:                                               ; preds = %21
  store i1 true, ptr @warn_deprecated_v2.__already_done, align 1
  %24 = call ptr @__get_task_comm(ptr noundef nonnull %3, i32 noundef 16, ptr noundef %5) #8
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %24) #11
  br label %26

26:                                               ; preds = %23, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %34

27:                                               ; preds = %13
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %6) #9, !srcloc !9
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 537396514, i32 -1090519041) #8, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 -22, i32 -14
  br label %36

34:                                               ; preds = %26, %20, %13
  %35 = phi i32 [ 1, %20 ], [ 2, %13 ], [ 2, %26 ]
  store i32 %35, ptr %1, align 4
  br label %36

36:                                               ; preds = %34, %27, %2
  %37 = phi i32 [ 0, %34 ], [ -14, %2 ], [ %33, %27 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2503908}
!10 = !{i64 2504105}
!11 = !{i64 2149989384}
!12 = !{i64 2153740054, i64 2153740334, i64 2153740668, i64 2153741002}
!13 = !{i64 2148972472}
!14 = !{i64 2148972689}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2150008374, i64 2150008399}
!17 = !{i64 2153759852, i64 2153760132, i64 2153760466, i64 2153760800}
!18 = !{i64 2150007796, i64 2150007821}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2153774749, i64 2153775233, i64 2153774786, i64 2153774842, i64 2153774876, i64 2153774900, i64 2153774941, i64 2153774962, i64 2153774990, i64 2153775024}
!21 = !{i64 2153712024, i64 2153712304, i64 2153712638, i64 2153712972}
!22 = !{i64 2153721116, i64 2153721396, i64 2153721730, i64 2153722064}
