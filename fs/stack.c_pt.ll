; ModuleID = '/llk/IR/fs/stack.c_pt.bc'
source_filename = "../fs/stack.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsstack_copy_inode_size:\09\09\09\09\09"
module asm "\09.asciz \09\22fsstack_copy_inode_size\22\09\09\09\09\09"
module asm "__kstrtabns_fsstack_copy_inode_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsstack_copy_attr_all:\09\09\09\09\09"
module asm "\09.asciz \09\22fsstack_copy_attr_all\22\09\09\09\09\09"
module asm "__kstrtabns_fsstack_copy_attr_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.59 = type { ptr }

@__kstrtab_fsstack_copy_inode_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsstack_copy_inode_size = external dso_local constant [0 x i8], align 1
@__ksymtab_fsstack_copy_inode_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsstack_copy_inode_size to i32), ptr @__kstrtab_fsstack_copy_inode_size, ptr @__kstrtabns_fsstack_copy_inode_size }, section "___ksymtab_gpl+fsstack_copy_inode_size", align 4
@__kstrtab_fsstack_copy_attr_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsstack_copy_attr_all = external dso_local constant [0 x i8], align 1
@__ksymtab_fsstack_copy_attr_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsstack_copy_attr_all to i32), ptr @__kstrtab_fsstack_copy_attr_all, ptr @__kstrtabns_fsstack_copy_attr_all }, section "___ksymtab_gpl+fsstack_copy_attr_all", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_fsstack_copy_attr_all, ptr @__ksymtab_fsstack_copy_inode_size], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsstack_copy_inode_size(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %5

5:                                                ; preds = %13, %2
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %10 = load volatile i32, ptr %3, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  %15 = load i64, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %16 = load volatile i32, ptr %3, align 4
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %18, label %5

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #3
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21
  %21 = load i64, ptr %20, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %22 = load i16, ptr %19, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %24) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #3, !srcloc !17
  %28 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 %15, ptr %28, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #3, !srcloc !18
  %29 = load i32, ptr %25, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %21, ptr %31, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %32 = load i16, ptr %24, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsstack_copy_attr_all(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i16, ptr %1, align 8
  store i16 %3, ptr %0, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef align 8 dereferenceable(16) %14, i32 16, i1 false)
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef align 8 dereferenceable(16) %16, i32 16, i1 false)
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false)
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  store i8 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %26 = load i32, ptr %25, align 8
  tail call void @set_nlink(ptr noundef %0, i32 noundef %26) #3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2151280692}
!9 = !{i64 2151280534}
!10 = !{i64 2151280836}
!11 = !{i64 2149475079}
!12 = !{i64 2148996655}
!13 = !{i64 2148992479}
!14 = !{i64 2148992554, i64 2148992581, i64 2148992628, i64 2148992650, i64 2148992678, i64 2148992698}
!15 = !{i64 2149019658}
!16 = !{i64 2151282474}
!17 = !{i64 2149475378}
!18 = !{i64 2149475679}
!19 = !{i64 2151290032}
