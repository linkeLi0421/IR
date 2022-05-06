; ModuleID = '/llk/IR/net/nfc/af_nfc.c_pt.bc'
source_filename = "../net/nfc/af_nfc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_proto_register\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_proto_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.36 }
%union.anon.36 = type { i32 }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.35 }
%union.anon.35 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.74, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.83, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.83 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nfc_protocol = type { i32, ptr, ptr, ptr }

@proto_tab_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@proto_tab = internal unnamed_addr global [2 x ptr] zeroinitializer, align 4
@__kstrtab_nfc_proto_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_proto_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_proto_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_proto_register to i32), ptr @__kstrtab_nfc_proto_register, ptr @__kstrtabns_nfc_proto_register }, section "___ksymtab+nfc_proto_register", align 4
@__kstrtab_nfc_proto_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_proto_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_proto_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_proto_unregister to i32), ptr @__kstrtab_nfc_proto_unregister, ptr @__kstrtabns_nfc_proto_unregister }, section "___ksymtab+nfc_proto_unregister", align 4
@nfc_sock_family_ops = internal constant %struct.net_proto_family { i32 39, ptr @nfc_sock_create, ptr @__this_module }, align 4
@__this_module = external dso_local global %struct.module, align 64
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nfc_proto_register, ptr @__ksymtab_nfc_proto_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_proto_register(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfc_protocol, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @proto_register(ptr noundef %6, i32 noundef 0) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  tail call void @_raw_write_lock(ptr noundef nonnull @proto_tab_lock) #3
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr [2 x ptr], ptr @proto_tab, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store ptr %0, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ 0, %14 ], [ -16, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proto_tab_lock, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  br i1 %13, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 4
  tail call void @proto_unregister(ptr noundef %18) #3
  br label %19

19:                                               ; preds = %17, %15, %4, %1
  %20 = phi i32 [ -22, %1 ], [ %7, %4 ], [ %16, %17 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_proto_unregister(ptr nocapture noundef readonly %0) #0 {
  tail call void @_raw_write_lock(ptr noundef nonnull @proto_tab_lock) #3
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr [2 x ptr], ptr @proto_tab, i32 0, i32 %2
  store ptr null, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proto_tab_lock, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  %4 = getelementptr inbounds %struct.nfc_protocol, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @proto_unregister(ptr noundef %5) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @af_nfc_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @sock_register(ptr noundef nonnull @nfc_sock_family_ops) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @af_nfc_exit() local_unnamed_addr #2 section ".exit.text" {
  tail call void @sock_unregister(i32 noundef 39) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_sock_create(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, @init_net
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  %7 = icmp ugt i32 %2, 1
  br i1 %7, label %31, label %8

8:                                                ; preds = %6
  tail call void @_raw_read_lock(ptr noundef nonnull @proto_tab_lock) #3
  %9 = getelementptr [2 x ptr], ptr @proto_tab, i32 0, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_protocol, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #3
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.nfc_protocol, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef %17, i32 noundef %3) #3
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.nfc_protocol, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void @module_put(ptr noundef %23) #3
  br label %24

24:                                               ; preds = %16, %12, %8
  %25 = phi i32 [ %20, %16 ], [ -93, %12 ], [ -93, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proto_tab_lock) #3, !srcloc !14
  %26 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proto_tab_lock) #3, !srcloc !15
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !11
  br label %30

30:                                               ; preds = %29, %24
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %31

31:                                               ; preds = %30, %6, %4
  %32 = phi i32 [ %25, %30 ], [ -97, %4 ], [ -22, %6 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i64 2148910041}
!9 = !{i64 1413255}
!10 = !{i64 2148898788}
!11 = !{i64 2148898863, i64 2148898890, i64 2148898937, i64 2148898959, i64 2148898987, i64 2148899007}
!12 = !{i64 2148948010}
!13 = !{i64 2148910846}
!14 = !{i64 457118, i64 2147947089, i64 2147947115, i64 2147947162, i64 2147947184, i64 2147947212, i64 2147947232}
!15 = !{i64 1414270, i64 1414293, i64 1414313, i64 1414337, i64 1414353}
!16 = !{i64 2148948449}
