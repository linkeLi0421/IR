; ModuleID = '/llk/IR/drivers/firmware/efi/capsule-loader.c_pt.bc'
source_filename = "../drivers/firmware/efi/capsule-loader.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.capsule_info = type { %struct.efi_capsule_header_t, ptr, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.efi_capsule_header_t = type { %struct.guid_t, i32, i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"\013efi: invalid capsule size\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013efi: capsule not supported\0A\00", align 1
@__UNIQUE_ID_description238 = internal constant [47 x i8] c"description=EFI capsule firmware binary loader\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@efi_capsule_misc = internal global %struct.miscdevice { i32 255, ptr @.str.3, ptr @efi_capsule_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"\013efi: Unable to register capsule loader device\0A\00", align 1
@efi = external dso_local global %struct.efi, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"efi_capsule_loader\00", align 1
@efi_capsule_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr null, ptr @efi_capsule_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @efi_capsule_open, ptr @efi_capsule_flush, ptr @efi_capsule_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"\013efi: capsule upload size exceeded header defined size\0A\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"\013efi: capsule update failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"\016efi: Successfully uploaded capsule file with reboot type '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"RESET_COLD\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"RESET_WARM\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"RESET_SHUTDOWN\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\016efi: Successfully processed capsule file\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"\013efi: capsule upload not complete\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_license239], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__efi_capsule_setup_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.capsule_info, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 4095
  %5 = icmp ult i32 %4, 4096
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.capsule_info, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %0, align 4
  %15 = insertvalue [4 x i32] undef, i32 %14, 0
  %16 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = insertvalue [4 x i32] %15, i32 %17, 1
  %19 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [4 x i32] %18, i32 %20, 2
  %22 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = insertvalue [4 x i32] %21, i32 %23, 3
  %25 = tail call i32 @efi_capsule_supported([4 x i32] %24, i32 noundef %10, i32 noundef %12, ptr noundef %13) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %42

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.capsule_info, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = lshr i32 %4, 10
  %33 = and i32 %32, 4194300
  %34 = tail call noalias ptr @krealloc(ptr noundef %31, i32 noundef %33, i32 noundef 3520) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  store ptr %34, ptr %30, align 4
  %37 = getelementptr inbounds %struct.capsule_info, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = tail call noalias ptr @krealloc(ptr noundef %38, i32 noundef %33, i32 noundef 3520) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store ptr %39, ptr %37, align 4
  br label %42

42:                                               ; preds = %41, %36, %29, %27, %6
  %43 = phi i32 [ -22, %6 ], [ %25, %27 ], [ 0, %41 ], [ -12, %29 ], [ -12, %36 ]
  ret i32 %43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_capsule_supported([4 x i32], i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @efi_capsule_setup_info(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %2, 28
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %0, ptr noundef align 1 dereferenceable(28) %1, i32 28, i1 false)
  %6 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.capsule_info, ptr %0, i32 0, i32 5
  store i32 %7, ptr %8, align 4
  %9 = tail call i32 @__efi_capsule_setup_info(ptr noundef %0)
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %9, %5 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %2 = and i32 %1, 8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @misc_register(ptr noundef nonnull @efi_capsule_misc) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %9

9:                                                ; preds = %7, %4, %0
  %10 = phi i32 [ -19, %0 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @misc_deregister(ptr noundef nonnull @efi_capsule_misc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_capsule_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %193, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %193, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %178, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %9, align 4
  %23 = getelementptr ptr, ptr %21, i32 %22
  store ptr %17, ptr %23, align 4
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %17 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  %28 = lshr exact i32 %27, 5
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %30 = add i32 %28, %29
  %31 = shl i32 %30, 12
  %32 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %9, align 4
  %35 = getelementptr i32, ptr %33, i32 %34
  store i32 %31, ptr %35, align 4
  store i32 4096, ptr %13, align 4
  %36 = load i32, ptr %9, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %9, align 4
  br label %44

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = add nsw i32 %10, -1
  %42 = getelementptr ptr, ptr %40, i32 %41
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %38, %19
  %45 = phi ptr [ %43, %38 ], [ %17, %19 ]
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 30
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = icmp ne i32 %47, 3
  %51 = load i32, ptr @movable_zone, align 4
  %52 = icmp ne i32 %51, 2
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call ptr @page_address(ptr noundef %45) #11
  br label %58

56:                                               ; preds = %49, %44
  %57 = tail call ptr @kmap_high(ptr noundef %45) #11
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %57, %56 ], [ %55, %54 ]
  %60 = load i32, ptr %13, align 4
  %61 = sub i32 4096, %60
  %62 = getelementptr i8, ptr %59, i32 %61
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %2)
  %64 = icmp slt i32 %63, 0
  %65 = load i1, ptr @check_copy_size.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %58
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %69

69:                                               ; preds = %68, %58
  br i1 %64, label %167, label %70, !prof !8

70:                                               ; preds = %69
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %63, i32 -1090519040) #13, !srcloc !9
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81, !prof !10

74:                                               ; preds = %70
  %75 = tail call ptr @llvm.thread.pointer() #11
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %76) #14, !srcloc !11
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %80 = tail call i32 @arm_copy_from_user(ptr noundef %62, ptr noundef %1, i32 noundef %63) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %81

81:                                               ; preds = %74, %70
  %82 = phi i32 [ %80, %74 ], [ %63, %70 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84, !prof !10

84:                                               ; preds = %81
  %85 = sub i32 %63, %82
  %86 = getelementptr i8, ptr %62, i32 %85
  tail call void @llvm.memset.p0.i32(ptr align 1 %86, i8 0, i32 %82, i1 false) #11
  br label %167

87:                                               ; preds = %81
  %88 = load i32, ptr %13, align 4
  %89 = sub i32 %88, %63
  store i32 %89, ptr %13, align 4
  %90 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %6, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 0, %95
  %97 = getelementptr i8, ptr %62, i32 %96
  %98 = add i32 %95, %63
  %99 = tail call i32 @efi_capsule_setup_info(ptr noundef %6, ptr noundef %97, i32 noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %167

101:                                              ; preds = %93, %87
  %102 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, %63
  store i32 %104, ptr %102, align 4
  %105 = load i32, ptr %45, align 4
  %106 = lshr i32 %105, 30
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = icmp ne i32 %106, 3
  %110 = load i32, ptr @movable_zone, align 4
  %111 = icmp ne i32 %110, 2
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %108, %101
  tail call void @kunmap_high(ptr noundef %45) #11
  br label %114

114:                                              ; preds = %113, %108
  %115 = load i32, ptr %90, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %193, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %102, align 4
  %119 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %193, label %122

122:                                              ; preds = %117
  %123 = icmp ugt i32 %118, %120
  br i1 %123, label %124, label %126

124:                                              ; preds = %122
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %178

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 6
  %132 = load ptr, ptr %131, align 4
  %133 = load i32, ptr %9, align 4
  %134 = load i32, ptr @pgprot_kernel, align 4
  %135 = or i32 %134, 512
  %136 = tail call ptr @vmap(ptr noundef %132, i32 noundef %133, i32 noundef 4, i32 noundef %135) #11
  store ptr %136, ptr %127, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %178, label %142

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 7
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 @efi_capsule_update(ptr noundef nonnull %128, ptr noundef %140) #11
  br label %147

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 7
  %144 = load ptr, ptr %143, align 4
  %145 = tail call i32 @efi_capsule_update(ptr noundef nonnull %136, ptr noundef %144) #11
  %146 = load ptr, ptr %127, align 4
  tail call void @vunmap(ptr noundef %146) #11
  br label %147

147:                                              ; preds = %142, %138
  %148 = phi i32 [ %145, %142 ], [ %141, %138 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %178

152:                                              ; preds = %147
  store i32 -1, ptr %9, align 4
  %153 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %6, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 65536
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  %161 = icmp eq i32 %159, 1
  %162 = select i1 %161, ptr @.str.10, ptr @.str.11
  %163 = select i1 %160, ptr @.str.9, ptr %162
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %163) #10
  br label %193

165:                                              ; preds = %152
  %166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %193

167:                                              ; preds = %93, %84, %69
  %168 = phi i32 [ %99, %93 ], [ -14, %69 ], [ -14, %84 ]
  %169 = load i32, ptr %45, align 4
  %170 = lshr i32 %169, 30
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = icmp ne i32 %170, 3
  %174 = load i32, ptr @movable_zone, align 4
  %175 = icmp ne i32 %174, 2
  %176 = select i1 %173, i1 true, i1 %175
  br i1 %176, label %178, label %177

177:                                              ; preds = %172, %167
  tail call void @kunmap_high(ptr noundef %45) #11
  br label %178

178:                                              ; preds = %177, %172, %150, %130, %124, %16
  %179 = phi i32 [ -22, %124 ], [ -12, %16 ], [ %148, %150 ], [ -12, %130 ], [ %168, %172 ], [ %168, %177 ]
  %180 = load i32, ptr %9, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.capsule_info, ptr %6, i32 0, i32 6
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i32 [ %180, %182 ], [ %190, %184 ]
  %186 = load ptr, ptr %183, align 4
  %187 = add nsw i32 %185, -1
  store i32 %187, ptr %9, align 4
  %188 = getelementptr ptr, ptr %186, i32 %187
  %189 = load ptr, ptr %188, align 4
  tail call void @__free_pages(ptr noundef %189, i32 noundef 0) #11
  %190 = load i32, ptr %9, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %184, label %192

192:                                              ; preds = %184, %178
  store i32 -1, ptr %9, align 4
  br label %193

193:                                              ; preds = %192, %165, %157, %117, %114, %8, %4
  %194 = phi i32 [ %179, %192 ], [ 0, %4 ], [ -5, %8 ], [ %63, %117 ], [ %63, %114 ], [ %63, %165 ], [ %63, %157 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_capsule_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 60) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4) #15
  %9 = getelementptr inbounds %struct.capsule_info, ptr %4, i32 0, i32 6
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %20

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 4) #15
  %15 = getelementptr inbounds %struct.capsule_info, ptr %4, i32 0, i32 7
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %8) #11
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %19, align 8
  br label %20

20:                                               ; preds = %18, %17, %11, %2
  %21 = phi i32 [ 0, %18 ], [ -12, %17 ], [ -12, %11 ], [ -12, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_capsule_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.capsule_info, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  %10 = load i32, ptr %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.capsule_info, ptr %4, i32 0, i32 6
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %10, %12 ], [ %20, %14 ]
  %16 = load ptr, ptr %13, align 4
  %17 = add nsw i32 %15, -1
  store i32 %17, ptr %5, align 4
  %18 = getelementptr ptr, ptr %16, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #11
  %20 = load i32, ptr %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %14, %8
  store i32 -1, ptr %5, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = phi i32 [ -125, %22 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_capsule_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.capsule_info, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.capsule_info, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #11
  %9 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %9) #11
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_capsule_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151491672, i64 2151491697}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3987784}
!12 = !{i64 3987981}
!13 = !{i64 2151473260}
