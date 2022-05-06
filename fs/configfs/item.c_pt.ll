; ModuleID = '/llk/IR/fs/configfs/item.c_pt.bc'
source_filename = "../fs/configfs/item.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_item_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22config_item_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_config_item_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_item_init_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22config_item_init_type_name\22\09\09\09\09\09"
module asm "__kstrtabns_config_item_init_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_group_init_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22config_group_init_type_name\22\09\09\09\09\09"
module asm "__kstrtabns_config_group_init_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_item_get:\09\09\09\09\09"
module asm "\09.asciz \09\22config_item_get\22\09\09\09\09\09"
module asm "__kstrtabns_config_item_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_item_get_unless_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22config_item_get_unless_zero\22\09\09\09\09\09"
module asm "__kstrtabns_config_item_get_unless_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_item_put:\09\09\09\09\09"
module asm "\09.asciz \09\22config_item_put\22\09\09\09\09\09"
module asm "__kstrtabns_config_item_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_group_init:\09\09\09\09\09"
module asm "\09.asciz \09\22config_group_init\22\09\09\09\09\09"
module asm "__kstrtabns_config_group_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_group_find_item:\09\09\09\09\09"
module asm "\09.asciz \09\22config_group_find_item\22\09\09\09\09\09"
module asm "__kstrtabns_config_group_find_item:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }

@__kstrtab_config_item_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_item_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_config_item_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_item_set_name to i32), ptr @__kstrtab_config_item_set_name, ptr @__kstrtabns_config_item_set_name }, section "___ksymtab+config_item_set_name", align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_config_item_init_type_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_item_init_type_name = external dso_local constant [0 x i8], align 1
@__ksymtab_config_item_init_type_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_item_init_type_name to i32), ptr @__kstrtab_config_item_init_type_name, ptr @__kstrtabns_config_item_init_type_name }, section "___ksymtab+config_item_init_type_name", align 4
@__kstrtab_config_group_init_type_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_group_init_type_name = external dso_local constant [0 x i8], align 1
@__ksymtab_config_group_init_type_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_group_init_type_name to i32), ptr @__kstrtab_config_group_init_type_name, ptr @__kstrtabns_config_group_init_type_name }, section "___ksymtab+config_group_init_type_name", align 4
@__kstrtab_config_item_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_item_get = external dso_local constant [0 x i8], align 1
@__ksymtab_config_item_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_item_get to i32), ptr @__kstrtab_config_item_get, ptr @__kstrtabns_config_item_get }, section "___ksymtab+config_item_get", align 4
@__kstrtab_config_item_get_unless_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_item_get_unless_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_config_item_get_unless_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_item_get_unless_zero to i32), ptr @__kstrtab_config_item_get_unless_zero, ptr @__kstrtabns_config_item_get_unless_zero }, section "___ksymtab+config_item_get_unless_zero", align 4
@__kstrtab_config_item_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_item_put = external dso_local constant [0 x i8], align 1
@__ksymtab_config_item_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_item_put to i32), ptr @__kstrtab_config_item_put, ptr @__kstrtabns_config_item_put }, section "___ksymtab+config_item_put", align 4
@__kstrtab_config_group_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_group_init = external dso_local constant [0 x i8], align 1
@__ksymtab_config_group_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_group_init to i32), ptr @__kstrtab_config_group_init, ptr @__kstrtabns_config_group_init }, section "___ksymtab+config_group_init", align 4
@__kstrtab_config_group_find_item = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_group_find_item = external dso_local constant [0 x i8], align 1
@__ksymtab_config_group_find_item = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_group_find_item to i32), ptr @__kstrtab_config_group_find_item, ptr @__kstrtabns_config_group_find_item }, section "___ksymtab+config_group_find_item", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_config_group_find_item, ptr @__ksymtab_config_group_init, ptr @__ksymtab_config_group_init_type_name, ptr @__ksymtab_config_item_get, ptr @__ksymtab_config_item_get_unless_zero, ptr @__ksymtab_config_item_init_type_name, ptr @__ksymtab_config_item_put, ptr @__ksymtab_config_item_set_name], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @config_item_set_name(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %4, i32 noundef 20, ptr noundef %1, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %3)
  %8 = icmp slt i32 %7, 20
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %10 = load i32, ptr %3, align 4
  %11 = insertvalue [1 x i32] poison, i32 %10, 0
  %12 = call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef %1, [1 x i32] %11) #8
  call void @llvm.va_end(ptr nonnull %3)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %12, %9 ], [ %4, %2 ]
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %4
  %19 = or i1 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %16) #8
  br label %21

21:                                               ; preds = %20, %14
  store ptr %15, ptr %0, align 4
  br label %22

22:                                               ; preds = %21, %9
  %23 = phi i32 [ 0, %21 ], [ -14, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @config_item_init_type_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1)
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 6
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @config_group_init_type_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1)
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 6
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @config_group_init(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @config_item_get(ptr noundef returned %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !10
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !11

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #8
  br label %14

14:                                               ; preds = %12, %8, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @config_item_get_unless_zero(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %17, %3
  %8 = phi i32 [ %15, %17 ], [ %5, %3 ]
  %9 = add i32 %8, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !9
  br label %10

10:                                               ; preds = %10, %7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %8, i32 %9, ptr elementtype(i32) %4) #8, !srcloc !13
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %19, label %17, !prof !12

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %14, %3
  %20 = phi i32 [ 0, %3 ], [ %8, %14 ], [ 0, %17 ]
  %21 = add i32 %20, 1
  %22 = or i32 %21, %20
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24, !prof !12

24:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25, %1
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi ptr [ null, %27 ], [ %0, %25 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @config_item_put(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %38, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %38 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !15
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = extractvalue { i32, i32, i32 } %7, 0
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %40, label %13, !prof !12

13:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #8
  br label %40

14:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %15 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 1
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  tail call void @kfree(ptr noundef %21) #8
  br label %25

25:                                               ; preds = %24, %14
  store ptr null, ptr %3, align 4
  %26 = icmp eq ptr %16, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.config_item_type, ptr %16, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void %32(ptr noundef nonnull %3) #8
  br label %35

35:                                               ; preds = %34, %31, %27, %25
  %36 = icmp eq ptr %18, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call fastcc void @config_group_put(ptr noundef nonnull %18) #8
  br label %38

38:                                               ; preds = %37, %35
  %39 = icmp eq ptr %20, null
  br i1 %39, label %40, label %2

40:                                               ; preds = %38, %13, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @config_item_release(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %0, i32 -20
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @kfree(ptr noundef %9) #8
  br label %13

13:                                               ; preds = %12, %1
  store ptr null, ptr %2, align 4
  %14 = icmp eq ptr %4, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.config_item_type, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void %20(ptr noundef %2) #8
  br label %23

23:                                               ; preds = %22, %19, %15, %13
  %24 = icmp eq ptr %6, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #8, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #8, !srcloc !15
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !12

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #8
  br label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call fastcc void @config_item_release(ptr noundef %26) #8
  br label %34

34:                                               ; preds = %33, %32, %30, %23
  %35 = icmp eq ptr %8, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @config_item_put(ptr noundef nonnull %8) #8
  br label %37

37:                                               ; preds = %36, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @config_group_find_item(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %31, label %6

6:                                                ; preds = %28, %2
  %7 = phi ptr [ %29, %28 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @strcmp(ptr noundef nonnull %9, ptr noundef %1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %7, i32 -28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %7, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #8, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #8, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !11

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %31, label %26, !prof !12

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #8
  br label %31

28:                                               ; preds = %11, %6
  %29 = load ptr, ptr %7, align 4
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %31, label %6

31:                                               ; preds = %28, %26, %22, %14, %2
  %32 = phi ptr [ null, %14 ], [ %15, %22 ], [ %15, %26 ], [ null, %2 ], [ null, %28 ]
  ret ptr %32
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @config_group_put(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !12

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #8
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call fastcc void @config_item_release(ptr noundef %4) #8
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
!9 = !{i64 560196, i64 2148050167, i64 2148050193, i64 2148050240, i64 2148050262, i64 2148050290, i64 2148050310}
!10 = !{i64 2148063040, i64 2148063072, i64 2148063101, i64 2148063135, i64 2148063166, i64 2148063189}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 546259, i64 546283, i64 546304, i64 546321, i64 546338}
!14 = !{i64 2148163262}
!15 = !{i64 2148065397, i64 2148065429, i64 2148065458, i64 2148065492, i64 2148065523, i64 2148065546}
!16 = !{i64 2148997046}
