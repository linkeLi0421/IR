; ModuleID = '/llk/IR/mm/list_lru.c_pt.bc'
source_filename = "../mm/list_lru.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_add:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_add\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_del:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_del\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_isolate:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_isolate\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_isolate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_isolate_move:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_isolate_move\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_isolate_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_count_one:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_count_one\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_count_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_count_node:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_count_node\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_count_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_walk_one:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_walk_one\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_walk_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_walk_node:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_walk_node\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_walk_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___list_lru_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__list_lru_init\22\09\09\09\09\09"
module asm "__kstrtabns___list_lru_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_lru_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22list_lru_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_list_lru_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i32, [44 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_lru_one = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }

@__kstrtab_list_lru_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_add = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_add to i32), ptr @__kstrtab_list_lru_add, ptr @__kstrtabns_list_lru_add }, section "___ksymtab_gpl+list_lru_add", align 4
@__kstrtab_list_lru_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_del = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_del to i32), ptr @__kstrtab_list_lru_del, ptr @__kstrtabns_list_lru_del }, section "___ksymtab_gpl+list_lru_del", align 4
@__kstrtab_list_lru_isolate = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_isolate = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_isolate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_isolate to i32), ptr @__kstrtab_list_lru_isolate, ptr @__kstrtabns_list_lru_isolate }, section "___ksymtab_gpl+list_lru_isolate", align 4
@__kstrtab_list_lru_isolate_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_isolate_move = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_isolate_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_isolate_move to i32), ptr @__kstrtab_list_lru_isolate_move, ptr @__kstrtabns_list_lru_isolate_move }, section "___ksymtab_gpl+list_lru_isolate_move", align 4
@__kstrtab_list_lru_count_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_count_one = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_count_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_count_one to i32), ptr @__kstrtab_list_lru_count_one, ptr @__kstrtabns_list_lru_count_one }, section "___ksymtab_gpl+list_lru_count_one", align 4
@__kstrtab_list_lru_count_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_count_node = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_count_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_count_node to i32), ptr @__kstrtab_list_lru_count_node, ptr @__kstrtabns_list_lru_count_node }, section "___ksymtab_gpl+list_lru_count_node", align 4
@__kstrtab_list_lru_walk_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_walk_one = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_walk_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_walk_one to i32), ptr @__kstrtab_list_lru_walk_one, ptr @__kstrtabns_list_lru_walk_one }, section "___ksymtab_gpl+list_lru_walk_one", align 4
@__kstrtab_list_lru_walk_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_walk_node = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_walk_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_walk_node to i32), ptr @__kstrtab_list_lru_walk_node, ptr @__kstrtabns_list_lru_walk_node }, section "___ksymtab_gpl+list_lru_walk_node", align 4
@__kstrtab___list_lru_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___list_lru_init = external dso_local constant [0 x i8], align 1
@__ksymtab___list_lru_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__list_lru_init to i32), ptr @__kstrtab___list_lru_init, ptr @__kstrtabns___list_lru_init }, section "___ksymtab_gpl+__list_lru_init", align 4
@__kstrtab_list_lru_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_lru_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_list_lru_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_lru_destroy to i32), ptr @__kstrtab_list_lru_destroy, ptr @__kstrtabns_list_lru_destroy }, section "___ksymtab_gpl+list_lru_destroy", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___list_lru_init, ptr @__ksymtab_list_lru_add, ptr @__ksymtab_list_lru_count_node, ptr @__ksymtab_list_lru_count_one, ptr @__ksymtab_list_lru_del, ptr @__ksymtab_list_lru_destroy, ptr @__ksymtab_list_lru_isolate, ptr @__ksymtab_list_lru_isolate_move, ptr @__ksymtab_list_lru_walk_node, ptr @__ksymtab_list_lru_walk_one], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @list_lru_add(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = load volatile ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.list_lru_node, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.list_lru_node, ptr %3, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %1, ptr %8, align 4
  store ptr %7, ptr %1, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %1, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_lru_node, ptr %3, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.list_lru_node, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 16
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %17 = load i16, ptr %3, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %22

19:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %22

22:                                               ; preds = %19, %6
  ret i1 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @list_lru_del(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = load volatile ptr, ptr %1, align 4
  %5 = icmp ne ptr %4, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %4, ptr %8, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %7, align 4
  %10 = getelementptr inbounds %struct.list_lru_node, ptr %3, i32 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.list_lru_node, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 16
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %16 = load i16, ptr %3, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %21

18:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %21

21:                                               ; preds = %18, %6
  ret i1 %5
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @list_lru_isolate(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_lru_one, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @list_lru_isolate_move(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  store ptr %8, ptr %1, align 4
  store ptr %2, ptr %4, align 4
  store volatile ptr %1, ptr %2, align 4
  %10 = getelementptr inbounds %struct.list_lru_one, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @list_lru_count_one(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2) #0 {
  %4 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %5 = getelementptr %struct.list_lru_node, ptr %4, i32 %1, i32 1, i32 1
  %6 = load volatile i32, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i32 [ 0, %8 ], [ %6, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @list_lru_count_node(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr %struct.list_lru_node, ptr %3, i32 %1, i32 2
  %5 = load i32, ptr %4, align 16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @list_lru_walk_one(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr %struct.list_lru_node, ptr %7, i32 %1
  tail call void @_raw_spin_lock(ptr noundef %8) #6
  %9 = tail call fastcc i32 @__list_lru_walk_one(ptr noundef %8, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %10 = load i16, ptr %8, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__list_lru_walk_one(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.list_lru_node, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.list_lru_node, ptr %0, i32 0, i32 1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.list_lru_node, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %58, label %16

12:                                               ; preds = %45, %30
  %13 = phi i32 [ %31, %30 ], [ %17, %45 ]
  %14 = load ptr, ptr %7, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %58, label %55

16:                                               ; preds = %55, %4
  %17 = phi i32 [ %56, %55 ], [ 0, %4 ]
  %18 = phi ptr [ %57, %55 ], [ %10, %4 ]
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %16
  %23 = add i32 %20, -1
  store i32 %23, ptr %3, align 4
  %24 = tail call i32 %1(ptr noundef %18, ptr noundef %7, ptr noundef %0, ptr noundef %2) #6
  switch i32 %24, label %51 [
    i32 1, label %25
    i32 0, label %35
    i32 2, label %39
    i32 3, label %52
    i32 4, label %45
  ]

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %26 = load volatile i32, ptr %0, align 4
  store volatile i32 %26, ptr %6, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %26, 65535
  %29 = icmp eq i32 %28, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %29, label %34, label %30, !prof !14

30:                                               ; preds = %25
  %31 = add i32 %17, 1
  %32 = load i32, ptr %9, align 16
  %33 = add i32 %32, -1
  store i32 %33, ptr %9, align 16
  br label %12

34:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/list_lru.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

35:                                               ; preds = %22
  %36 = add i32 %17, 1
  %37 = load i32, ptr %9, align 16
  %38 = add i32 %37, -1
  store i32 %38, ptr %9, align 16
  br label %52

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %18, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  %44 = load ptr, ptr %8, align 4
  store ptr %18, ptr %8, align 4
  store ptr %7, ptr %18, align 4
  store ptr %44, ptr %40, align 4
  store volatile ptr %18, ptr %44, align 4
  br label %52

45:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %46 = load volatile i32, ptr %0, align 4
  store volatile i32 %46, ptr %5, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %46, 65535
  %49 = icmp eq i32 %48, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %49, label %50, label %12, !prof !14

50:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/list_lru.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

51:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/list_lru.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

52:                                               ; preds = %39, %35, %22
  %53 = phi i32 [ %17, %22 ], [ %17, %39 ], [ %36, %35 ]
  %54 = icmp eq ptr %19, %7
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %12
  %56 = phi i32 [ %53, %52 ], [ %13, %12 ]
  %57 = phi ptr [ %19, %52 ], [ %14, %12 ]
  br label %16

58:                                               ; preds = %52, %16, %12, %4
  %59 = phi i32 [ 0, %4 ], [ %53, %52 ], [ %17, %16 ], [ %13, %12 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @list_lru_walk_one_irq(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr %struct.list_lru_node, ptr %7, i32 %1
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #6
  %9 = tail call fastcc i32 @__list_lru_walk_one(ptr noundef %8, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %10 = load i16, ptr %8, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @list_lru_walk_node(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr %struct.list_lru_node, ptr %6, i32 %1
  tail call void @_raw_spin_lock(ptr noundef %7) #6
  %8 = tail call fastcc i32 @__list_lru_walk_one(ptr noundef %7, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %9 = load i16, ptr %7, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__list_lru_init(ptr nocapture noundef %0, i1 noundef zeroext %1, ptr noundef readnone %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #7
  store ptr %6, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  store i32 0, ptr %6, align 64
  %9 = getelementptr inbounds %struct.list_lru_node, ptr %6, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.list_lru_node, ptr %6, i32 0, i32 1, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.list_lru_node, ptr %6, i32 0, i32 1, i32 1
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @list_lru_destroy(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %2) #6
  store ptr null, ptr %0, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 2148938448}
!9 = !{i64 2148934272}
!10 = !{i64 2148934347, i64 2148934374, i64 2148934421, i64 2148934443, i64 2148934471, i64 2148934491}
!11 = !{i64 2148961451}
!12 = !{i64 2149056803}
!13 = !{i64 2149057020}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153362275, i64 2153362753, i64 2153362312, i64 2153362368, i64 2153362402, i64 2153362426, i64 2153362467, i64 2153362488, i64 2153362516, i64 2153362550}
!16 = !{i64 2153363573, i64 2153364051, i64 2153363610, i64 2153363666, i64 2153363700, i64 2153363724, i64 2153363765, i64 2153363786, i64 2153363814, i64 2153363848}
!17 = !{i64 2153364469, i64 2153364947, i64 2153364506, i64 2153364562, i64 2153364596, i64 2153364620, i64 2153364661, i64 2153364682, i64 2153364710, i64 2153364744}
!18 = !{i64 318014}
!19 = !{i64 2148962592}
