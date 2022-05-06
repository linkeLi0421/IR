; ModuleID = '/llk/IR/drivers/misc/ad525x_dpot.c_pt.bc'
source_filename = "../drivers/misc/ad525x_dpot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad_dpot_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad_dpot_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad_dpot_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad_dpot_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22ad_dpot_remove\22\09\09\09\09\09"
module asm "__kstrtabns_ad_dpot_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.dpot_data = type { %struct.ad_dpot_bus_data, %struct.mutex, i32, i32, i32, i32, i32, i32, [6 x i16], [1 x i32] }
%struct.ad_dpot_bus_data = type { ptr, ptr }
%struct.ad_dpot_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@ad_dpot_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&data->update_lock\00", align 1
@ad525x_group_commands = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad525x_attributes_commands, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to register sysfs hooks\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s %d-Position Digital Potentiometer registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to create client for %s ID 0x%lX\0A\00", align 1
@__kstrtab_ad_dpot_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad_dpot_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad_dpot_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad_dpot_probe to i32), ptr @__kstrtab_ad_dpot_probe, ptr @__kstrtabns_ad_dpot_probe }, section "___ksymtab+ad_dpot_probe", align 4
@__kstrtab_ad_dpot_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad_dpot_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_ad_dpot_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad_dpot_remove to i32), ptr @__kstrtab_ad_dpot_remove, ptr @__kstrtabns_ad_dpot_remove }, section "___ksymtab+ad_dpot_remove", align 4
@__UNIQUE_ID_author166 = internal constant [110 x i8] c"ad525x_dpot.author=Chris Verges <chrisv@cyberswitching.com>, Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [53 x i8] c"ad525x_dpot.description=Digital potentiometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [42 x i8] c"ad525x_dpot.file=drivers/misc/ad525x_dpot\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [24 x i8] c"ad525x_dpot.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dpot_attrib_wipers = internal unnamed_addr constant [7 x ptr] [ptr @dev_attr_rdac0, ptr @dev_attr_rdac1, ptr @dev_attr_rdac2, ptr @dev_attr_rdac3, ptr @dev_attr_rdac4, ptr @dev_attr_rdac5, ptr null], align 4
@dpot_attrib_eeprom = internal unnamed_addr constant [7 x ptr] [ptr @dev_attr_eeprom0, ptr @dev_attr_eeprom1, ptr @dev_attr_eeprom2, ptr @dev_attr_eeprom3, ptr @dev_attr_eeprom4, ptr @dev_attr_eeprom5, ptr null], align 4
@dpot_attrib_tolerance = internal unnamed_addr constant [7 x ptr] [ptr @dev_attr_tolerance0, ptr @dev_attr_tolerance1, ptr @dev_attr_tolerance2, ptr @dev_attr_tolerance3, ptr @dev_attr_tolerance4, ptr @dev_attr_tolerance5, ptr null], align 4
@dpot_attrib_otp_en = internal unnamed_addr constant [7 x ptr] [ptr @dev_attr_otp0en, ptr @dev_attr_otp1en, ptr @dev_attr_otp2en, ptr @dev_attr_otp3en, ptr @dev_attr_otp4en, ptr @dev_attr_otp5en, ptr null], align 4
@dpot_attrib_otp = internal unnamed_addr constant [7 x ptr] [ptr @dev_attr_otp0, ptr @dev_attr_otp1, ptr @dev_attr_otp2, ptr @dev_attr_otp3, ptr @dev_attr_otp4, ptr @dev_attr_otp5, ptr null], align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to register sysfs hooks for RDAC%d\0A\00", align 1
@dev_attr_rdac0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @show_rdac0, ptr @set_rdac0 }, align 4
@dev_attr_rdac1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @show_rdac1, ptr @set_rdac1 }, align 4
@dev_attr_rdac2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @show_rdac2, ptr @set_rdac2 }, align 4
@dev_attr_rdac3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @show_rdac3, ptr @set_rdac3 }, align 4
@dev_attr_rdac4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @show_rdac4, ptr @set_rdac4 }, align 4
@dev_attr_rdac5 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @show_rdac5, ptr @set_rdac5 }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"rdac0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rdac1\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"rdac2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"rdac3\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"rdac4\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"rdac5\00", align 1
@dev_attr_eeprom0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @show_eeprom0, ptr @set_eeprom0 }, align 4
@dev_attr_eeprom1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @show_eeprom1, ptr @set_eeprom1 }, align 4
@dev_attr_eeprom2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @show_eeprom2, ptr @set_eeprom2 }, align 4
@dev_attr_eeprom3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @show_eeprom3, ptr @set_eeprom3 }, align 4
@dev_attr_eeprom4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @show_eeprom4, ptr @set_eeprom4 }, align 4
@dev_attr_eeprom5 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @show_eeprom5, ptr @set_eeprom5 }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"eeprom0\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"eeprom1\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"eeprom2\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"eeprom3\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"eeprom4\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"eeprom5\00", align 1
@dev_attr_tolerance0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420 }, ptr @show_tolerance0, ptr null }, align 4
@dev_attr_tolerance1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @show_tolerance1, ptr null }, align 4
@dev_attr_tolerance2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @show_tolerance2, ptr null }, align 4
@dev_attr_tolerance3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @show_tolerance3, ptr null }, align 4
@dev_attr_tolerance4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420 }, ptr @show_tolerance4, ptr null }, align 4
@dev_attr_tolerance5 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420 }, ptr @show_tolerance5, ptr null }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"tolerance0\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"tolerance1\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"tolerance2\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"tolerance3\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"tolerance4\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"tolerance5\00", align 1
@dev_attr_otp0en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420 }, ptr @show_otp0en, ptr @set_otp0en }, align 4
@dev_attr_otp1en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420 }, ptr @show_otp1en, ptr @set_otp1en }, align 4
@dev_attr_otp2en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420 }, ptr @show_otp2en, ptr @set_otp2en }, align 4
@dev_attr_otp3en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @show_otp3en, ptr @set_otp3en }, align 4
@dev_attr_otp4en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420 }, ptr @show_otp4en, ptr @set_otp4en }, align 4
@dev_attr_otp5en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420 }, ptr @show_otp5en, ptr @set_otp5en }, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"otp0en\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"otp1en\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"otp2en\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"otp3en\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"otp4en\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"otp5en\00", align 1
@dev_attr_otp0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420 }, ptr @show_otp0, ptr @set_otp0 }, align 4
@dev_attr_otp1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @show_otp1, ptr @set_otp1 }, align 4
@dev_attr_otp2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420 }, ptr @show_otp2, ptr @set_otp2 }, align 4
@dev_attr_otp3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420 }, ptr @show_otp3, ptr @set_otp3 }, align 4
@dev_attr_otp4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420 }, ptr @show_otp4, ptr @set_otp4 }, align 4
@dev_attr_otp5 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420 }, ptr @show_otp5, ptr @set_otp5 }, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"otp0\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"otp1\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"otp2\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"otp3\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"otp4\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"otp5\00", align 1
@ad525x_attributes_commands = internal global [5 x ptr] [ptr @dev_attr_inc_all, ptr @dev_attr_dec_all, ptr @dev_attr_inc_all_6db, ptr @dev_attr_dec_all_6db, ptr null], align 4
@dev_attr_inc_all = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420 }, ptr null, ptr @set_inc_all }, align 4
@dev_attr_dec_all = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420 }, ptr null, ptr @set_dec_all }, align 4
@dev_attr_inc_all_6db = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420 }, ptr null, ptr @set_inc_all_6db }, align 4
@dev_attr_dec_all_6db = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420 }, ptr null, ptr @set_dec_all_6db }, align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"inc_all\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"dec_all\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"inc_all_6db\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"dec_all_6db\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__ksymtab_ad_dpot_probe, ptr @__ksymtab_ad_dpot_remove], section "llvm.metadata"
@switch.table.dpot_write = private unnamed_addr constant [8 x i32] [i32 80, i32 0, i32 112, i32 0, i32 0, i32 208, i32 0, i32 240], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ad_dpot_probe(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %128, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @ad_dpot_probe.__key) #9
  %11 = load i64, ptr %1, align 4
  store i64 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 4
  store i32 %2, ptr %12, align 4
  %13 = lshr i32 %2, 6
  %14 = and i32 %13, 15
  %15 = shl nuw nsw i32 1, %14
  %16 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 3
  store i32 %15, ptr %16, align 8
  %17 = add nsw i32 %15, -1
  %18 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = lshr i32 %2, 18
  %20 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = and i32 %2, 63
  %22 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 5
  store i32 %21, ptr %22, align 8
  %23 = lshr i32 %2, 10
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 7
  store i32 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %82, %8
  %27 = phi i32 [ %24, %8 ], [ %83, %82 ]
  %28 = phi i32 [ 0, %8 ], [ %80, %82 ]
  %29 = shl nuw nsw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %20, align 4
  %34 = getelementptr [7 x ptr], ptr @dpot_attrib_wipers, i32 0, i32 %28
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %35, ptr noundef null) #9
  %37 = and i32 %33, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = getelementptr [7 x ptr], ptr @dpot_attrib_eeprom, i32 0, i32 %28
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %41, ptr noundef null) #9
  %43 = or i32 %42, %36
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi i32 [ %43, %39 ], [ %36, %32 ]
  %46 = and i32 %33, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr [7 x ptr], ptr @dpot_attrib_tolerance, i32 0, i32 %28
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %50, ptr noundef null) #9
  %52 = or i32 %51, %45
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %52, %48 ], [ %45, %44 ]
  %55 = and i32 %33, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = getelementptr [7 x ptr], ptr @dpot_attrib_otp_en, i32 0, i32 %28
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %59, ptr noundef null) #9
  %61 = or i32 %60, %54
  %62 = getelementptr [7 x ptr], ptr @dpot_attrib_otp, i32 0, i32 %28
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %63, ptr noundef null) #9
  %65 = or i32 %61, %64
  br label %66

66:                                               ; preds = %57, %53
  %67 = phi i32 [ %65, %57 ], [ %54, %53 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %28) #10
  br label %94

70:                                               ; preds = %66
  %71 = load i32, ptr %20, align 4
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %16, align 8
  %76 = lshr i32 %75, 1
  %77 = trunc i32 %76 to i16
  %78 = getelementptr %struct.dpot_data, ptr %6, i32 0, i32 8, i32 %28
  store i16 %77, ptr %78, align 2
  br label %79

79:                                               ; preds = %74, %70, %26
  %80 = add nuw nsw i32 %28, 1
  %81 = icmp eq i32 %80, 6
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %25, align 8
  br label %26

84:                                               ; preds = %79
  %85 = load i32, ptr %20, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @ad525x_group_commands) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %126

92:                                               ; preds = %88, %84
  %93 = load i32, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %93) #10
  br label %130

94:                                               ; preds = %123, %69
  %95 = phi i32 [ 0, %69 ], [ %124, %123 ]
  %96 = load i32, ptr %25, align 8
  %97 = shl nuw nsw i32 1, %95
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %20, align 4
  %102 = getelementptr [7 x ptr], ptr @dpot_attrib_wipers, i32 0, i32 %95
  %103 = load ptr, ptr %102, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %103, ptr noundef null) #9
  %104 = and i32 %101, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr [7 x ptr], ptr @dpot_attrib_eeprom, i32 0, i32 %95
  %108 = load ptr, ptr %107, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %108, ptr noundef null) #9
  br label %109

109:                                              ; preds = %106, %100
  %110 = and i32 %101, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = getelementptr [7 x ptr], ptr @dpot_attrib_tolerance, i32 0, i32 %95
  %114 = load ptr, ptr %113, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %114, ptr noundef null) #9
  br label %115

115:                                              ; preds = %112, %109
  %116 = and i32 %101, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = getelementptr [7 x ptr], ptr @dpot_attrib_otp_en, i32 0, i32 %95
  %120 = load ptr, ptr %119, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %120, ptr noundef null) #9
  %121 = getelementptr [7 x ptr], ptr @dpot_attrib_otp, i32 0, i32 %95
  %122 = load ptr, ptr %121, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %122, ptr noundef null) #9
  br label %123

123:                                              ; preds = %118, %115, %94
  %124 = add nuw nsw i32 %95, 1
  %125 = icmp eq i32 %124, 6
  br i1 %125, label %126, label %94

126:                                              ; preds = %123, %91
  %127 = phi i32 [ %89, %91 ], [ %67, %123 ]
  tail call void @kfree(ptr noundef nonnull %6) #9
  store ptr null, ptr %9, align 8
  br label %128

128:                                              ; preds = %126, %4
  %129 = phi i32 [ %127, %126 ], [ -12, %4 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %2) #10
  br label %130

130:                                              ; preds = %128, %92
  %131 = phi i32 [ %129, %128 ], [ 0, %92 ]
  ret i32 %131
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ad_dpot_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dpot_data, ptr %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.dpot_data, ptr %3, i32 0, i32 6
  br label %6

6:                                                ; preds = %35, %1
  %7 = phi i32 [ 0, %1 ], [ %36, %35 ]
  %8 = load i32, ptr %4, align 4
  %9 = shl nuw nsw i32 1, %7
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr [7 x ptr], ptr @dpot_attrib_wipers, i32 0, i32 %7
  %15 = load ptr, ptr %14, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %15, ptr noundef null) #9
  %16 = and i32 %13, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr [7 x ptr], ptr @dpot_attrib_eeprom, i32 0, i32 %7
  %20 = load ptr, ptr %19, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %20, ptr noundef null) #9
  br label %21

21:                                               ; preds = %18, %12
  %22 = and i32 %13, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr [7 x ptr], ptr @dpot_attrib_tolerance, i32 0, i32 %7
  %26 = load ptr, ptr %25, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %26, ptr noundef null) #9
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i32 %13, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr [7 x ptr], ptr @dpot_attrib_otp_en, i32 0, i32 %7
  %32 = load ptr, ptr %31, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %32, ptr noundef null) #9
  %33 = getelementptr [7 x ptr], ptr @dpot_attrib_otp, i32 0, i32 %7
  %34 = load ptr, ptr %33, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %34, ptr noundef null) #9
  br label %35

35:                                               ; preds = %30, %27, %6
  %36 = add nuw nsw i32 %7, 1
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %38, label %6

38:                                               ; preds = %35
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rdac0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rdac0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 0, i16 noundef zeroext %19) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysfs_show_reg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %2, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = and i32 %2, 31
  %10 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %11 = load volatile i32, ptr %10, align 4
  %12 = shl nuw i32 1, %9
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.8, ptr @.str.7
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %15)
  br label %188

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = trunc i32 %2 to i8
  %20 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 896
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %89, label %24

24:                                               ; preds = %17
  %25 = and i32 %2, 160
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = and i32 %21, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = and i32 %2, 31
  %32 = getelementptr %struct.dpot_data, ptr %5, i32 0, i32 8, i32 %31
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  br label %171

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %68 [
    i32 25, label %38
    i32 26, label %38
    i32 27, label %38
    i32 48, label %51
    i32 49, label %51
  ]

38:                                               ; preds = %35, %35, %35
  %39 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %5, align 4
  %44 = tail call i32 %42(ptr noundef %43, i8 noundef zeroext 8) #9
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %170, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %36, align 4
  %48 = icmp eq i32 %47, 25
  %49 = lshr i32 %44, 2
  %50 = select i1 %48, i32 %49, i32 %44
  br label %171

51:                                               ; preds = %35, %35
  %52 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = tail call i32 %55(ptr noundef %56, i8 noundef zeroext 8) #9
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %170, label %59

59:                                               ; preds = %51
  %60 = load i32, ptr %36, align 4
  %61 = icmp eq i32 %60, 49
  %62 = lshr i32 %57, 2
  %63 = select i1 %61, i32 %62, i32 %57
  br label %171

64:                                               ; preds = %24
  %65 = and i32 %2, 32
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i8 0, i8 -112
  br label %68

68:                                               ; preds = %64, %35
  %69 = phi i8 [ -96, %35 ], [ %67, %64 ]
  %70 = and i32 %21, 256
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %5, align 4
  %78 = tail call i32 %76(ptr noundef %77, i8 noundef zeroext %69) #9
  br label %173

79:                                               ; preds = %68
  %80 = and i32 %21, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %170, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %5, align 4
  %88 = tail call i32 %86(ptr noundef %87, i8 noundef zeroext %69) #9
  br label %173

89:                                               ; preds = %17
  %90 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  switch i32 %91, label %145 [
    i32 37, label %92
    i32 38, label %92
    i32 36, label %98
    i32 33, label %98
    i32 34, label %98
    i32 35, label %98
    i32 39, label %98
    i32 40, label %98
    i32 41, label %98
    i32 45, label %108
    i32 44, label %108
    i32 43, label %108
    i32 46, label %114
    i32 47, label %114
    i32 50, label %124
    i32 51, label %124
  ]

92:                                               ; preds = %89, %89
  %93 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %5, align 4
  %97 = tail call i32 %95(ptr noundef %96) #9
  br label %173

98:                                               ; preds = %89, %89, %89, %89, %89, %89, %89
  %99 = and i8 %19, 31
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i8 0, i8 -128
  %102 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %5, align 4
  %107 = tail call i32 %105(ptr noundef %106, i8 noundef zeroext %101) #9
  br label %173

108:                                              ; preds = %89, %89, %89
  %109 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %5, align 4
  %113 = tail call i32 %111(ptr noundef %112) #9
  br label %173

114:                                              ; preds = %89, %89
  %115 = and i8 %19, 31
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i8 0, i8 8
  %118 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %5, align 4
  %123 = tail call i32 %121(ptr noundef %122, i8 noundef zeroext %117) #9
  br label %173

124:                                              ; preds = %89, %89
  %125 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %126, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %5, align 4
  %130 = tail call i32 %128(ptr noundef %129, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  %131 = load ptr, ptr %125, align 4
  %132 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %5, align 4
  %135 = tail call i32 %133(ptr noundef %134, i8 noundef zeroext 4) #9
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %170, label %137

137:                                              ; preds = %124
  %138 = trunc i32 %135 to i16
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #9
  %140 = zext i16 %139 to i32
  %141 = load i32, ptr %90, align 4
  %142 = icmp eq i32 %141, 51
  %143 = lshr i32 %140, 2
  %144 = select i1 %142, i32 %143, i32 %140
  br label %171

145:                                              ; preds = %89
  %146 = and i8 %19, 24
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = icmp ugt i32 %150, 256
  br i1 %151, label %152, label %163

152:                                              ; preds = %148, %145
  %153 = and i8 %19, -8
  %154 = shl i8 %19, 1
  %155 = and i8 %154, 14
  %156 = or i8 %155, %153
  %157 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %5, align 4
  %162 = tail call i32 %160(ptr noundef %161, i8 noundef zeroext %156) #9
  br label %173

163:                                              ; preds = %148
  %164 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %5, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %5, align 4
  %169 = tail call i32 %167(ptr noundef %168, i8 noundef zeroext %19) #9
  br label %173

170:                                              ; preds = %124, %79, %51, %38
  tail call void @mutex_unlock(ptr noundef %18) #9
  br label %188

171:                                              ; preds = %137, %59, %46, %30
  %172 = phi i32 [ %144, %137 ], [ %63, %59 ], [ %50, %46 ], [ %34, %30 ]
  tail call void @mutex_unlock(ptr noundef %18) #9
  br label %176

173:                                              ; preds = %163, %152, %114, %108, %98, %92, %82, %72
  %174 = phi i32 [ %78, %72 ], [ %88, %82 ], [ %162, %152 ], [ %169, %163 ], [ %123, %114 ], [ %113, %108 ], [ %107, %98 ], [ %97, %92 ]
  tail call void @mutex_unlock(ptr noundef %18) #9
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %173, %171
  %177 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %178 = and i32 %2, 24
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = and i32 %177, 65535
  %182 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %181)
  br label %188

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, %177
  %187 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %186)
  br label %188

188:                                              ; preds = %183, %180, %173, %170, %8
  %189 = phi i32 [ %16, %8 ], [ %182, %180 ], [ %187, %183 ], [ -22, %173 ], [ -22, %170 ]
  ret i32 %189
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dpot_write(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 896
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %169, label %8

8:                                                ; preds = %3
  %9 = zext i8 %1 to i32
  %10 = and i32 %9, 224
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %108

12:                                               ; preds = %8
  %13 = and i32 %5, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = and i32 %9, 31
  %17 = getelementptr %struct.dpot_data, ptr %0, i32 0, i32 8, i32 %16
  store i16 %2, ptr %17, align 2
  br label %18

18:                                               ; preds = %15, %12
  %19 = and i32 %5, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %18
  %22 = and i32 %5, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = and i32 %9, 31
  %26 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 6
  %29 = and i32 %28, 15
  %30 = shl nuw nsw i32 %25, %29
  %31 = zext i16 %2 to i32
  %32 = or i32 %30, %31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = tail call i32 %37(ptr noundef %38, i8 noundef zeroext %33) #9
  br label %319

40:                                               ; preds = %21
  %41 = and i32 %5, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = and i32 %9, 31
  %45 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 6
  %48 = and i32 %47, 15
  %49 = shl nuw nsw i32 %44, %48
  %50 = zext i16 %2 to i32
  %51 = or i32 %49, %50
  %52 = lshr i32 %51, 8
  %53 = trunc i32 %52 to i8
  %54 = trunc i32 %51 to i8
  %55 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = tail call i32 %58(ptr noundef %59, i8 noundef zeroext %53, i8 noundef zeroext %54) #9
  br label %319

61:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ad525x_dpot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

62:                                               ; preds = %18
  %63 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %105 [
    i32 25, label %65
    i32 26, label %65
    i32 27, label %65
    i32 48, label %85
    i32 49, label %85
  ]

65:                                               ; preds = %62, %62, %62
  %66 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %0, align 4
  %71 = tail call i32 %69(ptr noundef %70, i8 noundef zeroext 24, i8 noundef zeroext 3) #9
  %72 = load i32, ptr %63, align 4
  %73 = icmp eq i32 %72, 25
  %74 = shl i16 %2, 2
  %75 = select i1 %73, i16 %74, i16 %2
  %76 = lshr i16 %75, 8
  %77 = trunc i16 %76 to i8
  %78 = or i8 %77, 4
  %79 = load ptr, ptr %66, align 4
  %80 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %0, align 4
  %83 = trunc i16 %75 to i8
  %84 = tail call i32 %81(ptr noundef %82, i8 noundef zeroext %78, i8 noundef zeroext %83) #9
  br label %319

85:                                               ; preds = %62, %62
  %86 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %0, align 4
  %91 = tail call i32 %89(ptr noundef %90, i8 noundef zeroext 28, i8 noundef zeroext 3) #9
  %92 = load i32, ptr %63, align 4
  %93 = icmp eq i32 %92, 49
  %94 = shl i16 %2, 2
  %95 = select i1 %93, i16 %94, i16 %2
  %96 = lshr i16 %95, 8
  %97 = trunc i16 %96 to i8
  %98 = or i8 %97, 4
  %99 = load ptr, ptr %86, align 4
  %100 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %99, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %0, align 4
  %103 = trunc i16 %95 to i8
  %104 = tail call i32 %101(ptr noundef %102, i8 noundef zeroext %98, i8 noundef zeroext %103) #9
  br label %319

105:                                              ; preds = %62
  %106 = and i32 %9, 15
  %107 = or i32 %106, 176
  br label %145

108:                                              ; preds = %8
  %109 = and i32 %9, 32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = and i32 %9, 15
  %113 = or i32 %112, 48
  br label %145

114:                                              ; preds = %108
  %115 = and i32 %9, 128
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = add nsw i32 %9, -160
  %119 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 29) #9
  %120 = icmp ult i32 %119, 8
  br i1 %120, label %142, label %145

121:                                              ; preds = %114
  %122 = and i32 %9, 64
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  switch i32 %126, label %145 [
    i32 25, label %127
    i32 26, label %127
    i32 48, label %134
    i32 49, label %134
  ]

127:                                              ; preds = %124, %124
  %128 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %129, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %0, align 4
  %133 = tail call i32 %131(ptr noundef %132, i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  br label %319

134:                                              ; preds = %124, %124
  %135 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %136, i32 0, i32 4
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %0, align 4
  %140 = tail call i32 %138(ptr noundef %139, i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  br label %319

141:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ad525x_dpot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 318, 0\0A.popsection", ""() #9, !srcloc !10
  unreachable

142:                                              ; preds = %117
  %143 = getelementptr inbounds [8 x i32], ptr @switch.table.dpot_write, i32 0, i32 %119
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %124, %117, %111, %105
  %146 = phi i32 [ %113, %111 ], [ 0, %117 ], [ %107, %105 ], [ 0, %124 ], [ %144, %142 ]
  %147 = and i32 %5, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %145
  %150 = trunc i32 %146 to i8
  %151 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %152, i32 0, i32 4
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %0, align 4
  %156 = trunc i16 %2 to i8
  %157 = tail call i32 %154(ptr noundef %155, i8 noundef zeroext %150, i8 noundef zeroext %156) #9
  br label %319

158:                                              ; preds = %145
  %159 = and i32 %5, 512
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %319, label %161

161:                                              ; preds = %158
  %162 = trunc i32 %146 to i8
  %163 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %164, i32 0, i32 5
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %0, align 4
  %168 = tail call i32 %166(ptr noundef %167, i8 noundef zeroext %162, i16 noundef zeroext %2) #9
  br label %319

169:                                              ; preds = %3
  %170 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  switch i32 %171, label %287 [
    i32 37, label %172
    i32 38, label %172
    i32 36, label %180
    i32 33, label %180
    i32 34, label %180
    i32 35, label %180
    i32 39, label %180
    i32 40, label %180
    i32 41, label %180
    i32 44, label %191
    i32 43, label %191
    i32 46, label %210
    i32 47, label %210
    i32 45, label %238
    i32 50, label %258
    i32 51, label %258
  ]

172:                                              ; preds = %169, %169
  %173 = trunc i16 %2 to i8
  %174 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %175, i32 0, i32 3
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %0, align 4
  %179 = tail call i32 %177(ptr noundef %178, i8 noundef zeroext %173) #9
  br label %319

180:                                              ; preds = %169, %169, %169, %169, %169, %169, %169
  %181 = and i8 %1, 31
  %182 = icmp eq i8 %181, 0
  %183 = select i1 %182, i8 0, i8 -128
  %184 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %185, i32 0, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = load ptr, ptr %0, align 4
  %189 = trunc i16 %2 to i8
  %190 = tail call i32 %187(ptr noundef %188, i8 noundef zeroext %183, i8 noundef zeroext %189) #9
  br label %319

191:                                              ; preds = %169, %169
  %192 = and i8 %1, 64
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = load ptr, ptr %196, align 4
  %198 = load ptr, ptr %0, align 4
  %199 = tail call i32 %197(ptr noundef %198) #9
  %200 = icmp ult i32 %199, 64
  br i1 %200, label %201, label %319

201:                                              ; preds = %194, %191
  %202 = phi i8 [ 0, %191 ], [ -128, %194 ]
  %203 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %204, i32 0, i32 4
  %206 = load ptr, ptr %205, align 4
  %207 = load ptr, ptr %0, align 4
  %208 = trunc i16 %2 to i8
  %209 = tail call i32 %206(ptr noundef %207, i8 noundef zeroext %202, i8 noundef zeroext %208) #9
  br label %319

210:                                              ; preds = %169, %169
  %211 = zext i8 %1 to i32
  %212 = and i32 %211, 31
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 0, i32 8
  %215 = and i32 %211, 64
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %210
  %218 = trunc i32 %214 to i8
  %219 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = load ptr, ptr %0, align 4
  %224 = tail call i32 %222(ptr noundef %223, i8 noundef zeroext %218) #9
  %225 = icmp ult i32 %224, 16384
  br i1 %225, label %226, label %319

226:                                              ; preds = %217
  %227 = or i32 %214, 32
  br label %228

228:                                              ; preds = %226, %210
  %229 = phi i32 [ %227, %226 ], [ %214, %210 ]
  %230 = trunc i32 %229 to i8
  %231 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %232, i32 0, i32 4
  %234 = load ptr, ptr %233, align 4
  %235 = load ptr, ptr %0, align 4
  %236 = trunc i16 %2 to i8
  %237 = tail call i32 %234(ptr noundef %235, i8 noundef zeroext %230, i8 noundef zeroext %236) #9
  br label %319

238:                                              ; preds = %169
  %239 = and i8 %1, 64
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  %246 = load ptr, ptr %0, align 4
  %247 = tail call i32 %245(ptr noundef %246, i8 noundef zeroext 0) #9
  %248 = icmp ult i32 %247, 16384
  br i1 %248, label %249, label %319

249:                                              ; preds = %241, %238
  %250 = phi i8 [ 0, %238 ], [ 32, %241 ]
  %251 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %252, i32 0, i32 4
  %254 = load ptr, ptr %253, align 4
  %255 = load ptr, ptr %0, align 4
  %256 = trunc i16 %2 to i8
  %257 = tail call i32 %254(ptr noundef %255, i8 noundef zeroext %250, i8 noundef zeroext %256) #9
  br label %319

258:                                              ; preds = %169, %169
  %259 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %260, i32 0, i32 4
  %262 = load ptr, ptr %261, align 4
  %263 = load ptr, ptr %0, align 4
  %264 = tail call i32 %262(ptr noundef %263, i8 noundef zeroext 28, i8 noundef zeroext 3) #9
  %265 = and i8 %1, 64
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %258
  %268 = load ptr, ptr %259, align 4
  %269 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %268, i32 0, i32 4
  %270 = load ptr, ptr %269, align 4
  %271 = load ptr, ptr %0, align 4
  %272 = tail call i32 %270(ptr noundef %271, i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  br label %319

273:                                              ; preds = %258
  %274 = load i32, ptr %170, align 4
  %275 = icmp eq i32 %274, 51
  %276 = shl i16 %2, 2
  %277 = select i1 %275, i16 %276, i16 %2
  %278 = lshr i16 %277, 8
  %279 = trunc i16 %278 to i8
  %280 = or i8 %279, 4
  %281 = load ptr, ptr %259, align 4
  %282 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %281, i32 0, i32 4
  %283 = load ptr, ptr %282, align 4
  %284 = load ptr, ptr %0, align 4
  %285 = trunc i16 %277 to i8
  %286 = tail call i32 %283(ptr noundef %284, i8 noundef zeroext %280, i8 noundef zeroext %285) #9
  br label %319

287:                                              ; preds = %169
  %288 = icmp sgt i8 %1, -1
  br i1 %288, label %296, label %289

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %291, i32 0, i32 3
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %0, align 4
  %295 = tail call i32 %293(ptr noundef %294, i8 noundef zeroext %1) #9
  br label %319

296:                                              ; preds = %287
  %297 = getelementptr inbounds %struct.dpot_data, ptr %0, i32 0, i32 3
  %298 = load i32, ptr %297, align 4
  %299 = icmp ugt i32 %298, 256
  br i1 %299, label %300, label %311

300:                                              ; preds = %296
  %301 = and i8 %1, -8
  %302 = shl nuw i8 %1, 1
  %303 = and i8 %302, 14
  %304 = or i8 %303, %301
  %305 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %306, i32 0, i32 5
  %308 = load ptr, ptr %307, align 4
  %309 = load ptr, ptr %0, align 4
  %310 = tail call i32 %308(ptr noundef %309, i8 noundef zeroext %304, i16 noundef zeroext %2) #9
  br label %319

311:                                              ; preds = %296
  %312 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %0, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %313, i32 0, i32 4
  %315 = load ptr, ptr %314, align 4
  %316 = load ptr, ptr %0, align 4
  %317 = trunc i16 %2 to i8
  %318 = tail call i32 %315(ptr noundef %316, i8 noundef zeroext %1, i8 noundef zeroext %317) #9
  br label %319

319:                                              ; preds = %311, %300, %289, %273, %267, %249, %241, %228, %217, %201, %194, %180, %172, %161, %158, %149, %134, %127, %85, %65, %43, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rdac1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rdac1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 1, i16 noundef zeroext %19) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rdac2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rdac2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 2, i16 noundef zeroext %19) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rdac3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rdac3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 3, i16 noundef zeroext %19) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rdac4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 4)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rdac4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 4, i16 noundef zeroext %19) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rdac5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 5)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rdac5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 5, i16 noundef zeroext %19) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_eeprom0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 32)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_eeprom0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 32, i16 noundef zeroext %19) #9
  call void @msleep(i32 noundef 26) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_eeprom1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 33)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_eeprom1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 33, i16 noundef zeroext %19) #9
  call void @msleep(i32 noundef 26) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_eeprom2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 34)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_eeprom2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 34, i16 noundef zeroext %19) #9
  call void @msleep(i32 noundef 26) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_eeprom3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 35)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_eeprom3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 35, i16 noundef zeroext %19) #9
  call void @msleep(i32 noundef 26) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_eeprom4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 36)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_eeprom4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 36, i16 noundef zeroext %19) #9
  call void @msleep(i32 noundef 26) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_eeprom5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 37)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_eeprom5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %13, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 37, i16 noundef zeroext %19) #9
  call void @msleep(i32 noundef 26) #9
  call void @mutex_unlock(ptr noundef %17) #9
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %3, %16 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tolerance0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 56)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tolerance1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 57)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tolerance2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 58)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tolerance3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 59)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tolerance4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 60)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tolerance5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 61)
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp0en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.8, ptr @.str.7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp0en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %8 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 9
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #9
  br label %11

10:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #9
  br label %11

11:                                               ; preds = %10, %9
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp1en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.8, ptr @.str.7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp1en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %8 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 9
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %8) #9
  br label %11

10:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %8) #9
  br label %11

11:                                               ; preds = %10, %9
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp2en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.8, ptr @.str.7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp2en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %8 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 9
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #9
  br label %11

10:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %8) #9
  br label %11

11:                                               ; preds = %10, %9
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp3en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.8, ptr @.str.7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp3en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %8 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 9
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %8) #9
  br label %11

10:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %8) #9
  br label %11

11:                                               ; preds = %10, %9
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp4en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.8, ptr @.str.7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp4en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %8 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 9
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %8) #9
  br label %11

10:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %8) #9
  br label %11

11:                                               ; preds = %10, %9
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp5en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpot_data, ptr %5, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.8, ptr @.str.7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp5en(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %8 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 9
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %8) #9
  br label %11

10:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %8) #9
  br label %11

11:                                               ; preds = %10, %9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 64)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 %18, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #9
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 64, i16 noundef zeroext %24) #9
  call void @msleep(i32 noundef 400) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %21, %12, %4
  %26 = phi i32 [ %3, %21 ], [ -1, %4 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 65)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 %18, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #9
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 65, i16 noundef zeroext %24) #9
  call void @msleep(i32 noundef 400) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %21, %12, %4
  %26 = phi i32 [ %3, %21 ], [ -1, %4 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 66)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 %18, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #9
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 66, i16 noundef zeroext %24) #9
  call void @msleep(i32 noundef 400) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %21, %12, %4
  %26 = phi i32 [ %3, %21 ], [ -1, %4 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 67)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 %18, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #9
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 67, i16 noundef zeroext %24) #9
  call void @msleep(i32 noundef 400) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %21, %12, %4
  %26 = phi i32 [ %3, %21 ], [ -1, %4 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 68)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 %18, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #9
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 68, i16 noundef zeroext %24) #9
  call void @msleep(i32 noundef 400) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %21, %12, %4
  %26 = phi i32 [ %3, %21 ], [ -1, %4 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_otp5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @sysfs_show_reg(ptr noundef %0, ptr noundef %2, i32 noundef 69)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_otp5(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 %18, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.dpot_data, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #9
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call fastcc void @dpot_write(ptr noundef %7, i8 noundef zeroext 69, i16 noundef zeroext %24) #9
  call void @msleep(i32 noundef 400) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %21, %12, %4
  %26 = phi i32 [ %3, %21 ], [ -1, %4 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_inc_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #9
  tail call fastcc void @dpot_write(ptr noundef %6, i8 noundef zeroext -40, i16 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_dec_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #9
  tail call fastcc void @dpot_write(ptr noundef %6, i8 noundef zeroext -80, i16 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_inc_all_6db(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #9
  tail call fastcc void @dpot_write(ptr noundef %6, i8 noundef zeroext -56, i16 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_dec_all_6db(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpot_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #9
  tail call fastcc void @dpot_write(ptr noundef %6, i8 noundef zeroext -96, i16 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151241461, i64 2151241952, i64 2151241498, i64 2151241554, i64 2151241588, i64 2151241612, i64 2151241653, i64 2151241674, i64 2151241702, i64 2151241736}
!10 = !{i64 2151242933, i64 2151243424, i64 2151242970, i64 2151243026, i64 2151243060, i64 2151243084, i64 2151243125, i64 2151243146, i64 2151243174, i64 2151243208}
