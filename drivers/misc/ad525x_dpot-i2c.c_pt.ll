; ModuleID = '/llk/IR/drivers/misc/ad525x_dpot-i2c.c_pt.bc'
source_filename = "../drivers/misc/ad525x_dpot-i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ad_dpot_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ad_dpot_bus_data = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ad525x_dpot_i2c__247_115_ad_dpot_i2c_driver_init6 = internal global ptr @ad_dpot_i2c_driver_init, section ".initcall6.init", align 4
@ad_dpot_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @ad_dpot_i2c_probe, ptr @ad_dpot_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad_dpot_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_ad_dpot_i2c_driver_exit = internal global ptr @ad_dpot_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [72 x i8] c"ad525x_dpot_i2c.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"ad525x_dpot_i2c.description=digital potentiometer I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [50 x i8] c"ad525x_dpot_i2c.file=drivers/misc/ad525x_dpot-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [28 x i8] c"ad525x_dpot_i2c.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"ad_dpot\00", align 1
@ad_dpot_id = internal constant [26 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5258\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6817152 }, %struct.i2c_device_id { [20 x i8] c"ad5259\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6817281 }, %struct.i2c_device_id { [20 x i8] c"ad5251\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7088514 }, %struct.i2c_device_id { [20 x i8] c"ad5252\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7088643 }, %struct.i2c_device_id { [20 x i8] c"ad5253\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7093636 }, %struct.i2c_device_id { [20 x i8] c"ad5254\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7093765 }, %struct.i2c_device_id { [20 x i8] c"ad5255\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7085638 }, %struct.i2c_device_id { [20 x i8] c"ad5241\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4195873 }, %struct.i2c_device_id { [20 x i8] c"ad5242\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4197922 }, %struct.i2c_device_id { [20 x i8] c"ad5243\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4197923 }, %struct.i2c_device_id { [20 x i8] c"ad5245\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4195876 }, %struct.i2c_device_id { [20 x i8] c"ad5246\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4195813 }, %struct.i2c_device_id { [20 x i8] c"ad5247\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4195814 }, %struct.i2c_device_id { [20 x i8] c"ad5248\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4197927 }, %struct.i2c_device_id { [20 x i8] c"ad5280\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4195880 }, %struct.i2c_device_id { [20 x i8] c"ad5282\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4197929 }, %struct.i2c_device_id { [20 x i8] c"adn2860\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7085674 }, %struct.i2c_device_id { [20 x i8] c"ad5273\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5244331 }, %struct.i2c_device_id { [20 x i8] c"ad5161\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 58721800 }, %struct.i2c_device_id { [20 x i8] c"ad5171\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5244332 }, %struct.i2c_device_id { [20 x i8] c"ad5170\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5244461 }, %struct.i2c_device_id { [20 x i8] c"ad5172\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5246510 }, %struct.i2c_device_id { [20 x i8] c"ad5173\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5246511 }, %struct.i2c_device_id { [20 x i8] c"ad5272\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5244594 }, %struct.i2c_device_id { [20 x i8] c"ad5274\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5244467 }, %struct.i2c_device_id zeroinitializer], align 4
@bops = internal constant %struct.ad_dpot_bus_ops { ptr @read_d8, ptr @read_r8d8, ptr @read_r8d16, ptr @write_d8, ptr @write_r8d8, ptr @write_r8d16 }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SMBUS Word Data not Supported\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_ad_dpot_i2c_driver_exit, ptr @__initcall__kmod_ad525x_dpot_i2c__247_115_ad_dpot_i2c_driver_init6, ptr @ad_dpot_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ad_dpot_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad_dpot_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ad_dpot_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ad_dpot_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ad_dpot_i2c_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.ad_dpot_bus_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %3, i32 0, i32 1
  store ptr @bops, ptr %4, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6) #5
  %12 = and i32 %11, 6291456
  %13 = icmp eq i32 %12, 6291456
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  br i1 %13, label %16, label %15

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #6
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @ad_dpot_probe(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %18, ptr noundef %1) #5
  br label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ %19, %16 ], [ -5, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ad_dpot_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @ad_dpot_remove(ptr noundef %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_dpot_probe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_d8(ptr noundef %0) #2 {
  %2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #5
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_r8d8(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %1) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_r8d16(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext %1) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_d8(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = tail call i32 @i2c_smbus_write_byte(ptr noundef %0, i8 noundef zeroext %1) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_r8d8(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #2 {
  %4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_r8d16(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ad_dpot_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
