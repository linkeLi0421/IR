; ModuleID = '/llk/IR/drivers/mfd/ac100.c_pt.bc'
source_filename = "../drivers/mfd/ac100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sunxi_rsb_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ac100_dev = type { ptr, ptr }

@__initcall__kmod_ac100__170_130_ac100_rsb_driver_init6 = internal global ptr @ac100_rsb_driver_init, section ".initcall6.init", align 4
@ac100_rsb_driver = internal global %struct.sunxi_rsb_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ac100_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ac100_rsb_probe, ptr null }, align 4
@__exitcall_ac100_rsb_driver_exit = internal global ptr @ac100_rsb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [56 x i8] c"ac100.description=Audio codec MFD core driver for AC100\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [42 x i8] c"ac100.author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [29 x i8] c"ac100.file=drivers/mfd/ac100\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [21 x i8] c"ac100.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [6 x i8] c"ac100\00", align 1
@ac100_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,ac100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ac100_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 239, ptr @ac100_writeable_table, ptr null, ptr @ac100_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@ac100_cells = internal global [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.3, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.4, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.5, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.6, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add MFD devices: %d\0A\00", align 1
@ac100_writeable_table = internal constant %struct.regmap_access_table { ptr @ac100_writeable_ranges, i32 17, ptr null, i32 0 }, align 4
@ac100_volatile_table = internal constant %struct.regmap_access_table { ptr @ac100_volatile_ranges, i32 9, ptr null, i32 0 }, align 4
@ac100_writeable_ranges = internal constant [17 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 6 }, %struct.regmap_range { i32 16, i32 24 }, %struct.regmap_range { i32 32, i32 40 }, %struct.regmap_range { i32 48, i32 51 }, %struct.regmap_range { i32 64, i32 65 }, %struct.regmap_range { i32 68, i32 70 }, %struct.regmap_range { i32 72, i32 77 }, %struct.regmap_range { i32 80, i32 89 }, %struct.regmap_range { i32 130, i32 149 }, %struct.regmap_range { i32 160, i32 177 }, %struct.regmap_range { i32 180, i32 181 }, %struct.regmap_range { i32 184, i32 185 }, %struct.regmap_range { i32 188, i32 189 }, %struct.regmap_range { i32 192, i32 195 }, %struct.regmap_range { i32 198, i32 207 }, %struct.regmap_range { i32 208, i32 209 }, %struct.regmap_range { i32 216, i32 239 }], align 4
@ac100_volatile_ranges = internal constant [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 70, i32 70 }, %struct.regmap_range { i32 128, i32 128 }, %struct.regmap_range { i32 184, i32 184 }, %struct.regmap_range { i32 186, i32 188 }, %struct.regmap_range { i32 190, i32 191 }, %struct.regmap_range { i32 198, i32 198 }, %struct.regmap_range { i32 200, i32 209 }, %struct.regmap_range { i32 216, i32 223 }], align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ac100-codec\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"x-powers,ac100-codec\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ac100-rtc\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"x-powers,ac100-rtc\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ac100_rsb_driver_exit, ptr @__initcall__kmod_ac100__170_130_ac100_rsb_driver_init6, ptr @ac100_rsb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ac100_rsb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @sunxi_rsb_driver_register(ptr noundef nonnull @ac100_rsb_driver) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ac100_rsb_driver_exit() #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef nonnull @ac100_rsb_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_rsb_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rsb_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 8, i32 noundef 3520) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  store ptr %0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %5, align 8
  %6 = tail call ptr @__devm_regmap_init_sunxi_rsb(ptr noundef %0, ptr noundef nonnull @ac100_regmap_config, ptr noundef null, ptr noundef null) #4
  %7 = getelementptr inbounds %struct.ac100_dev, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = ptrtoint ptr %6 to i32
  %11 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %10) #5
  br label %18

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 @devm_mfd_add_devices(ptr noundef %13, i32 noundef -1, ptr noundef nonnull @ac100_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %14) #5
  br label %18

18:                                               ; preds = %16, %12, %9, %1
  %19 = phi i32 [ %10, %9 ], [ %14, %16 ], [ -12, %1 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sunxi_rsb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
