; ModuleID = '/llk/IR/fs/filesystems.c_pt.bc'
source_filename = "../fs/filesystems.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22register_filesystem\22\09\09\09\09\09"
module asm "__kstrtabns_register_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_filesystem\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22get_fs_type\22\09\09\09\09\09"
module asm "__kstrtabns_get_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@file_systems_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@__kstrtab_register_filesystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_filesystem = external dso_local constant [0 x i8], align 1
@__ksymtab_register_filesystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_filesystem to i32), ptr @__kstrtab_register_filesystem, ptr @__kstrtabns_register_filesystem }, section "___ksymtab+register_filesystem", align 4
@file_systems = internal unnamed_addr global ptr null, align 4
@__kstrtab_unregister_filesystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_filesystem = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_filesystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_filesystem to i32), ptr @__kstrtab_unregister_filesystem, ptr @__kstrtabns_unregister_filesystem }, section "___ksymtab+unregister_filesystem", align 4
@.str = private unnamed_addr constant [35 x i8] c"\014%s: truncating file system list\0A\00", align 1
@__func__.list_bdev_fs_names = private unnamed_addr constant [19 x i8] c"list_bdev_fs_names\00", align 1
@__initcall__kmod_filesystems__239_258_proc_filesystems_init6 = internal global ptr @proc_filesystems_init, section ".initcall6.init", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fs-%.*s\00", align 1
@get_fs_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\014request_module fs-%.*s succeeded, but still no fs?\0A\00", align 1
@__kstrtab_get_fs_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_fs_type = external dso_local constant [0 x i8], align 1
@__ksymtab_get_fs_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_fs_type to i32), ptr @__kstrtab_get_fs_type, ptr @__kstrtabns_get_fs_type }, section "___ksymtab+get_fs_type", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"filesystems\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"nodev\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_filesystems__239_258_proc_filesystems_init6, ptr @__ksymtab_get_fs_type, ptr @__ksymtab_register_filesystem, ptr @__ksymtab_unregister_filesystem], section "llvm.metadata"

@sys_sysfs = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_sysfs

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_filesystem(ptr noundef readonly returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call void @__module_get(ptr noundef %3) #7
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_filesystem(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call void @module_put(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_filesystem(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @strchr(ptr noundef %2, i32 noundef 46)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/filesystems.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 81, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  tail call void @_raw_write_lock(ptr noundef nonnull @file_systems_lock) #7
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 @strlen(ptr noundef %11)
  %13 = load ptr, ptr @file_systems, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %24, %10
  %16 = phi ptr [ %26, %24 ], [ %13, %10 ]
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %11, i32 noundef %12) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %17, i32 %12
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.file_system_type, ptr %16, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.file_system_type, ptr %16, i32 0, i32 7
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi ptr [ @file_systems, %10 ], [ %29, %28 ]
  store ptr %0, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ 0, %30 ], [ -16, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @file_systems_lock, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %34

34:                                               ; preds = %32, %6
  %35 = phi i32 [ %33, %32 ], [ -16, %6 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_filesystem(ptr noundef %0) #0 {
  tail call void @_raw_write_lock(ptr noundef nonnull @file_systems_lock) #7
  %2 = load ptr, ptr @file_systems, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %2, %0
  br i1 %5, label %15, label %6

6:                                                ; preds = %11, %4
  %7 = phi ptr [ %9, %11 ], [ %2, %4 ]
  %8 = getelementptr inbounds %struct.file_system_type, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %0
  br i1 %12, label %13, label %6

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.file_system_type, ptr %7, i32 0, i32 7
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ @file_systems, %4 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %16, align 4
  store ptr null, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @file_systems_lock, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  tail call void @synchronize_rcu() #7
  br label %20

19:                                               ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @file_systems_lock, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 0, %15 ], [ -22, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sysfs(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %0, label %106 [
    i32 1, label %4
    i32 2, label %32
    i32 3, label %89
  ]

4:                                                ; preds = %3
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call ptr @getname(ptr noundef %5) #7
  %7 = ptrtoint ptr %6 to i32
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %106, label %9

9:                                                ; preds = %4
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %10 = load ptr, ptr @file_systems, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 4
  br label %14

14:                                               ; preds = %20, %12
  %15 = phi ptr [ %10, %12 ], [ %23, %20 ]
  %16 = phi i32 [ 0, %12 ], [ %22, %20 ]
  %17 = load ptr, ptr %15, align 4
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %13) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.file_system_type, ptr %15, i32 0, i32 7
  %22 = add i32 %16, 1
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14

25:                                               ; preds = %20, %14, %9
  %26 = phi i32 [ -22, %9 ], [ %16, %14 ], [ -22, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %27 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %31

31:                                               ; preds = %30, %25
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  tail call void @putname(ptr noundef %6) #7
  br label %106

32:                                               ; preds = %3
  %33 = inttoptr i32 %2 to ptr
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %34 = load ptr, ptr @file_systems, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %44, %32
  %37 = phi ptr [ %47, %44 ], [ %34, %32 ]
  %38 = phi i32 [ %46, %44 ], [ %1, %32 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.file_system_type, ptr %37, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i1 @try_module_get(ptr noundef %42) #7
  br i1 %43, label %55, label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.file_system_type, ptr %37, i32 0, i32 7
  %46 = add i32 %38, -1
  %47 = load ptr, ptr %45, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %36

49:                                               ; preds = %44, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %50 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %54

54:                                               ; preds = %53, %49
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %106

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.file_system_type, ptr %37, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %57 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %61

61:                                               ; preds = %60, %55
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %62 = load ptr, ptr %37, align 4
  %63 = tail call i32 @strlen(ptr noundef %62) #7
  %64 = add i32 %63, 1
  %65 = icmp slt i32 %64, 0
  %66 = load i1, ptr @check_copy_size.__already_done, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %70, !prof !19

69:                                               ; preds = %61
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %70

70:                                               ; preds = %69, %61
  br i1 %65, label %86, label %71, !prof !19

71:                                               ; preds = %70
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %64, i32 -1090519040) #8, !srcloc !20
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = tail call ptr @llvm.thread.pointer() #7
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #9, !srcloc !21
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #7, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !23
  %81 = tail call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef %62, i32 noundef %64) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #7, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !23
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i32 [ %81, %75 ], [ %64, %71 ]
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 0, i32 -14
  br label %86

86:                                               ; preds = %82, %70
  %87 = phi i32 [ -14, %70 ], [ %85, %82 ]
  %88 = load ptr, ptr %56, align 4
  tail call void @module_put(ptr noundef %88) #7
  br label %106

89:                                               ; preds = %3
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %90 = load ptr, ptr @file_systems, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %92, %89
  %93 = phi ptr [ %97, %92 ], [ %90, %89 ]
  %94 = phi i32 [ %96, %92 ], [ 0, %89 ]
  %95 = getelementptr inbounds %struct.file_system_type, ptr %93, i32 0, i32 7
  %96 = add i32 %94, 1
  %97 = load ptr, ptr %95, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %92

99:                                               ; preds = %92, %89
  %100 = phi i32 [ 0, %89 ], [ %96, %92 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %101 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %102 = extractvalue { i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %105

105:                                              ; preds = %104, %99
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %106

106:                                              ; preds = %105, %86, %54, %31, %4, %3
  %107 = phi i32 [ -22, %3 ], [ %100, %105 ], [ %26, %31 ], [ %7, %4 ], [ %87, %86 ], [ -22, %54 ]
  ret i32 %107
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @list_bdev_fs_names(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #3 section ".init.text" {
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %3 = load ptr, ptr @file_systems, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %25, %2
  %6 = phi ptr [ %30, %25 ], [ %3, %2 ]
  %7 = phi ptr [ %28, %25 ], [ %0, %2 ]
  %8 = phi i32 [ %27, %25 ], [ 0, %2 ]
  %9 = phi i32 [ %26, %25 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 4
  %16 = tail call i32 @strlen(ptr noundef %15)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %9, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.list_bdev_fs_names) #10
  br label %32

21:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %15, i32 %17, i1 false)
  %22 = getelementptr i8, ptr %7, i32 %17
  %23 = sub i32 %9, %17
  %24 = add i32 %8, 1
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %23, %21 ], [ %9, %5 ]
  %27 = phi i32 [ %24, %21 ], [ %8, %5 ]
  %28 = phi ptr [ %22, %21 ], [ %7, %5 ]
  %29 = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5

32:                                               ; preds = %25, %19, %2
  %33 = phi i32 [ %8, %19 ], [ 0, %2 ], [ %27, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %34 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %38

38:                                               ; preds = %37, %32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_filesystems_init() #3 section ".init.text" {
  %1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @filesystems_proc_show, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_fs_type(ptr noundef %0) #0 {
  %2 = tail call ptr @strchr(ptr noundef %0, i32 noundef 46)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  %6 = ptrtoint ptr %0 to i32
  %7 = sub i32 %5, %6
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @strlen(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %7, %4 ], [ %9, %8 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %12 = load ptr, ptr @file_systems, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %23, %10
  %15 = phi ptr [ %25, %23 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @strncmp(ptr noundef %16, ptr noundef %0, i32 noundef %11) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %16, i32 %11
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.file_system_type, ptr %15, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %14

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.file_system_type, ptr %15, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 @try_module_get(ptr noundef %29) #7
  %31 = select i1 %30, ptr %15, ptr null
  br label %32

32:                                               ; preds = %27, %23, %10
  %33 = phi ptr [ %31, %27 ], [ null, %10 ], [ null, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %34 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %38

38:                                               ; preds = %37, %32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %39 = icmp eq ptr %33, null
  br i1 %39, label %40, label %76

40:                                               ; preds = %38
  %41 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef %0) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %40
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %44 = load ptr, ptr @file_systems, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %55, %43
  %47 = phi ptr [ %57, %55 ], [ %44, %43 ]
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @strncmp(ptr noundef %48, ptr noundef %0, i32 noundef %11) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %48, i32 %11
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %46
  %56 = getelementptr inbounds %struct.file_system_type, ptr %47, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %46

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.file_system_type, ptr %47, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = tail call zeroext i1 @try_module_get(ptr noundef %61) #7
  %63 = select i1 %62, ptr %47, ptr null
  br label %64

64:                                               ; preds = %59, %55, %43
  %65 = phi ptr [ %63, %59 ], [ null, %43 ], [ null, %55 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %66 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %70

70:                                               ; preds = %69, %64
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %71 = icmp eq ptr %65, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = load i1, ptr @get_fs_type.__already_done, align 1
  br i1 %73, label %86, label %74, !prof !8

74:                                               ; preds = %72
  store i1 true, ptr @get_fs_type.__already_done, align 1
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %11, ptr noundef %0) #10
  br label %86

76:                                               ; preds = %70, %38
  %77 = phi ptr [ %33, %38 ], [ %65, %70 ]
  br i1 %3, label %86, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.file_system_type, ptr %77, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.file_system_type, ptr %77, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  tail call void @module_put(ptr noundef %85) #7
  br label %86

86:                                               ; preds = %83, %78, %76, %74, %72, %40
  %87 = phi ptr [ %77, %78 ], [ null, %83 ], [ %77, %76 ], [ null, %40 ], [ null, %74 ], [ null, %72 ]
  ret ptr %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filesystems_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #7
  %3 = load ptr, ptr @file_systems, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.8, ptr @.str.7
  %12 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %11, ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5

16:                                               ; preds = %5, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @file_systems_lock) #7, !srcloc !16
  %17 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @file_systems_lock) #7, !srcloc !17
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  br label %21

21:                                               ; preds = %20, %16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153595021, i64 2153595501, i64 2153595058, i64 2153595114, i64 2153595148, i64 2153595172, i64 2153595213, i64 2153595234, i64 2153595262, i64 2153595296}
!10 = !{i64 2149068221}
!11 = !{i64 1571435}
!12 = !{i64 2149056968}
!13 = !{i64 2149057043, i64 2149057070, i64 2149057117, i64 2149057139, i64 2149057167, i64 2149057187}
!14 = !{i64 2149106190}
!15 = !{i64 2149069026}
!16 = !{i64 892540, i64 2148382511, i64 2148382537, i64 2148382584, i64 2148382606, i64 2148382634, i64 2148382654}
!17 = !{i64 1572450, i64 1572473, i64 1572493, i64 1572517, i64 1572533}
!18 = !{i64 2149106629}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2151026777, i64 2151026802}
!21 = !{i64 3522311}
!22 = !{i64 3522508}
!23 = !{i64 2151007787}
