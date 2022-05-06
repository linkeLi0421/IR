; ModuleID = '/llk/IR/drivers/iio/industrialio-configfs.c_pt.bc'
source_filename = "../drivers/iio/industrialio-configfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_configfs_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_iio_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }

@iio_root_group_type = internal constant %struct.config_item_type zeroinitializer, align 4
@iio_configfs_subsys = dso_local global %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"iio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @iio_root_group_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iio_configfs_subsys, i64 92), ptr getelementptr (i8, ptr @iio_configfs_subsys, i64 92) } } }, align 4
@__kstrtab_iio_configfs_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_configfs_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_configfs_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_configfs_subsys to i32), ptr @__kstrtab_iio_configfs_subsys, ptr @__kstrtabns_iio_configfs_subsys }, section "___ksymtab+iio_configfs_subsys", align 4
@__initcall__kmod_industrialio_configfs__166_38_iio_configfs_init6 = internal global ptr @iio_configfs_init, section ".initcall6.init", align 4
@__exitcall_iio_configfs_exit = internal global ptr @iio_configfs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [69 x i8] c"industrialio_configfs.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [66 x i8] c"industrialio_configfs.description=Industrial I/O configfs support\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [61 x i8] c"industrialio_configfs.file=drivers/iio/industrialio-configfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [37 x i8] c"industrialio_configfs.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_iio_configfs_exit, ptr @__initcall__kmod_industrialio_configfs__166_38_iio_configfs_init6, ptr @__ksymtab_iio_configfs_subsys, ptr @iio_configfs_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iio_configfs_init() #0 section ".init.text" {
  tail call void @config_group_init(ptr noundef nonnull @iio_configfs_subsys) #2
  %1 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @iio_configfs_subsys) #2
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iio_configfs_exit() #0 section ".exit.text" {
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @iio_configfs_subsys) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
