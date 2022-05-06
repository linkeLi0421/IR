; ModuleID = '/llk/IR/drivers/mmc/core/sdio.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_fixup = type { ptr, i64, i64, i32, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"drivers/mmc/core/sdio.c\00", align 1
@mmc_sdio_ops = internal constant %struct.mmc_bus_ops { ptr @mmc_sdio_remove, ptr @mmc_sdio_detect, ptr @mmc_sdio_pre_suspend, ptr @mmc_sdio_suspend, ptr @mmc_sdio_resume, ptr @mmc_sdio_runtime_suspend, ptr @mmc_sdio_runtime_resume, ptr @mmc_sdio_alive, ptr null, ptr @mmc_sdio_hw_reset, ptr @mmc_sdio_sw_reset, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\013%s: error %d whilst initialising SDIO card\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"missing suspend/resume ops for non-removable SDIO card\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\014%s: SDIO_CCCR_IF is invalid: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\014%s: Skipping voltage switch\0A\00", align 1
@use_spi_crc = external dso_local local_unnamed_addr global i8, align 1
@sdio_type = internal global %struct.device_type { ptr null, ptr @sdio_std_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@sdio_card_init_methods = internal constant [2 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 -1, i16 -1, i32 -1, ptr @.str.19, ptr @wl1251_quirk, i32 0 }, %struct.mmc_fixup zeroinitializer], align 8
@sdio_fixup_methods = internal constant [8 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 4172, i16 -28570, i32 -1, ptr null, ptr @add_quirk, i32 16 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 4172, i16 -28570, i32 -1, ptr null, ptr @add_quirk, i32 32 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 151, i16 16502, i32 -1, ptr null, ptr @add_quirk, i32 16 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 151, i16 16502, i32 -1, ptr null, ptr @add_quirk, i32 32 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 32, i16 8832, i32 -1, ptr null, ptr @add_quirk, i32 256 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 735, i16 -28376, i32 -1, ptr null, ptr @add_quirk, i32 2048 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 735, i16 -28364, i32 -1, ptr null, ptr @add_limit_rate_quirk, i32 150000000 }, %struct.mmc_fixup zeroinitializer], align 8
@sd_type = external dso_local global %struct.device_type, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", align 1
@sdio_std_groups = internal global [2 x ptr] [ptr @sdio_std_group, ptr null], align 4
@sdio_std_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sdio_std_attrs, ptr null }, align 4
@sdio_std_attrs = internal global [10 x ptr] [ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr null], align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @mmc_vendor_show, ptr null }, align 4
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @mmc_device_show, ptr null }, align 4
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @mmc_revision_show, ptr null }, align 4
@dev_attr_info1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @info1_show, ptr null }, align 4
@dev_attr_info2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @info2_show, ptr null }, align 4
@dev_attr_info3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @info3_show, ptr null }, align 4
@dev_attr_info4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @info4_show, ptr null }, align 4
@dev_attr_ocr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @mmc_ocr_show, ptr null }, align 4
@dev_attr_rca = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @mmc_rca_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"info3\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"info4\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ocr\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"rca\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ti,wl1251\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"found wl1251\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"\013%s: unrecognised CCCR structure version %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_attach_sdio(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1191, i32 noundef 9, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %1
  %10 = call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %222

12:                                               ; preds = %9
  call void @mmc_attach_bus(ptr noundef %0, ptr noundef nonnull @mmc_sdio_ops) #12
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 8
  store i32 %14, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, ptr %3, align 4
  %20 = call i32 @mmc_select_voltage(ptr noundef %0, i32 noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %211, label %22

22:                                               ; preds = %18
  %23 = call fastcc i32 @mmc_sdio_init_card(ptr noundef %0, i32 noundef %20, ptr noundef null)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %211

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 1
  %34 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 1, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #12, !srcloc !10
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #12, !srcloc !11
  %36 = call i32 @__pm_runtime_set_status(ptr noundef %33, i32 noundef 0) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %184

38:                                               ; preds = %32
  call void @pm_runtime_enable(ptr noundef %33) #12
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, ptr %3, align 4
  %41 = lshr i32 %40, 28
  %42 = and i32 %41, 7
  %43 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 27
  store i32 0, ptr %43, align 8
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %116, label %45

45:                                               ; preds = %112, %39
  %46 = phi i32 [ %48, %112 ], [ 0, %39 ]
  %47 = load ptr, ptr %26, align 8
  %48 = add nuw nsw i32 %46, 1
  %49 = call ptr @sdio_alloc_func(ptr noundef %47) #12
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %106, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.sdio_func, ptr %49, i32 0, i32 3
  store i32 %48, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mmc_card, ptr %47, i32 0, i32 6
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %58 = load ptr, ptr %49, align 8
  %59 = getelementptr inbounds %struct.mmc_card, ptr %58, i32 0, i32 6
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = shl nuw nsw i32 %48, 8
  %65 = call i32 @mmc_io_rw_direct(ptr noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef %64, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i8, ptr %2, align 1
  %69 = and i8 %68, 15
  store i8 %69, ptr %2, align 1
  %70 = icmp eq i8 %69, 15
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load ptr, ptr %49, align 8
  %73 = load i32, ptr %52, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %74, 1
  %76 = call i32 @mmc_io_rw_direct(ptr noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef %75, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i8, ptr %2, align 1
  br label %82

80:                                               ; preds = %71, %63
  %81 = phi i32 [ %76, %71 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %104

82:                                               ; preds = %78, %67, %57
  %83 = phi i8 [ 0, %57 ], [ %79, %78 ], [ %69, %67 ]
  %84 = getelementptr inbounds %struct.sdio_func, ptr %49, i32 0, i32 4
  store i8 %83, ptr %84, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  %85 = call i32 @sdio_read_func_cis(ptr noundef %49) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %104

87:                                               ; preds = %51
  %88 = load ptr, ptr %49, align 8
  %89 = getelementptr inbounds %struct.mmc_card, ptr %88, i32 0, i32 30
  %90 = load i16, ptr %89, align 4
  %91 = getelementptr inbounds %struct.sdio_func, ptr %49, i32 0, i32 5
  store i16 %90, ptr %91, align 2
  %92 = getelementptr inbounds %struct.mmc_card, ptr %88, i32 0, i32 30, i32 1
  %93 = load i16, ptr %92, align 2
  %94 = getelementptr inbounds %struct.sdio_func, ptr %49, i32 0, i32 6
  store i16 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mmc_card, ptr %88, i32 0, i32 30, i32 2
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.sdio_func, ptr %49, i32 0, i32 7
  store i32 %97, ptr %98, align 8
  br label %99

99:                                               ; preds = %87, %82
  %100 = getelementptr %struct.mmc_card, ptr %47, i32 0, i32 31, i32 %46
  store ptr %49, ptr %100, align 4
  %101 = load i32, ptr %28, align 8
  %102 = and i32 %101, 16384
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %108

104:                                              ; preds = %82, %80
  %105 = phi i32 [ %81, %80 ], [ %85, %82 ]
  call void @sdio_remove_func(ptr noundef %49) #12
  br label %184

106:                                              ; preds = %45
  %107 = ptrtoint ptr %49 to i32
  br label %184

108:                                              ; preds = %99
  %109 = getelementptr %struct.mmc_card, ptr %27, i32 0, i32 31, i32 %46
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.sdio_func, ptr %110, i32 0, i32 1
  call void @pm_runtime_enable(ptr noundef %111) #12
  br label %112

112:                                              ; preds = %108, %99
  %113 = load i32, ptr %43, align 8
  %114 = add i32 %113, 1
  store i32 %114, ptr %43, align 8
  %115 = icmp eq i32 %48, %42
  br i1 %115, label %116, label %45

116:                                              ; preds = %112, %39
  call void @mmc_release_host(ptr noundef %0) #12
  %117 = load ptr, ptr %26, align 8
  %118 = call i32 @mmc_add_card(ptr noundef %117) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %186

120:                                              ; preds = %116
  br i1 %44, label %175, label %169

121:                                              ; preds = %169
  %122 = icmp eq i32 %42, 1
  br i1 %122, label %175, label %123

123:                                              ; preds = %121
  %124 = load ptr, ptr %26, align 8
  %125 = getelementptr %struct.mmc_card, ptr %124, i32 0, i32 31, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = call i32 @sdio_add_func(ptr noundef %126) #12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %186

129:                                              ; preds = %123
  %130 = icmp eq i32 %42, 2
  br i1 %130, label %175, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %26, align 8
  %133 = getelementptr %struct.mmc_card, ptr %132, i32 0, i32 31, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = call i32 @sdio_add_func(ptr noundef %134) #12
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %186

137:                                              ; preds = %131
  %138 = icmp eq i32 %42, 3
  br i1 %138, label %175, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr %26, align 8
  %141 = getelementptr %struct.mmc_card, ptr %140, i32 0, i32 31, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = call i32 @sdio_add_func(ptr noundef %142) #12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %186

145:                                              ; preds = %139
  %146 = icmp eq i32 %42, 4
  br i1 %146, label %175, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %26, align 8
  %149 = getelementptr %struct.mmc_card, ptr %148, i32 0, i32 31, i32 4
  %150 = load ptr, ptr %149, align 4
  %151 = call i32 @sdio_add_func(ptr noundef %150) #12
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %147
  %154 = icmp eq i32 %42, 5
  br i1 %154, label %175, label %155

155:                                              ; preds = %153
  %156 = load ptr, ptr %26, align 8
  %157 = getelementptr %struct.mmc_card, ptr %156, i32 0, i32 31, i32 5
  %158 = load ptr, ptr %157, align 4
  %159 = call i32 @sdio_add_func(ptr noundef %158) #12
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %155
  %162 = icmp eq i32 %42, 6
  br i1 %162, label %175, label %163

163:                                              ; preds = %161
  %164 = load ptr, ptr %26, align 8
  %165 = getelementptr %struct.mmc_card, ptr %164, i32 0, i32 31, i32 6
  %166 = load ptr, ptr %165, align 4
  %167 = call i32 @sdio_add_func(ptr noundef %166) #12
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %186

169:                                              ; preds = %120
  %170 = load ptr, ptr %26, align 8
  %171 = getelementptr %struct.mmc_card, ptr %170, i32 0, i32 31, i32 0
  %172 = load ptr, ptr %171, align 4
  %173 = call i32 @sdio_add_func(ptr noundef %172) #12
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %121, label %186

175:                                              ; preds = %163, %161, %153, %145, %137, %129, %121, %120
  %176 = load i32, ptr %28, align 8
  %177 = and i32 %176, 16384
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 1
  %181 = call i32 @__pm_runtime_idle(ptr noundef %180, i32 noundef 5) #12
  br label %182

182:                                              ; preds = %179, %175
  %183 = call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  br label %222

184:                                              ; preds = %106, %104, %32
  %185 = phi i32 [ %36, %32 ], [ %107, %106 ], [ %105, %104 ]
  call void @mmc_release_host(ptr noundef %0) #12
  br label %186

186:                                              ; preds = %184, %169, %163, %155, %147, %139, %131, %123, %116
  %187 = phi i32 [ %185, %184 ], [ %118, %116 ], [ %173, %169 ], [ %127, %123 ], [ %135, %131 ], [ %143, %139 ], [ %151, %147 ], [ %159, %155 ], [ %167, %163 ]
  %188 = load ptr, ptr %26, align 8
  %189 = getelementptr inbounds %struct.mmc_card, ptr %188, i32 0, i32 27
  %190 = load i32, ptr %189, align 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %202, %186
  %193 = phi ptr [ %203, %202 ], [ %188, %186 ]
  %194 = phi i32 [ %204, %202 ], [ 0, %186 ]
  %195 = getelementptr %struct.mmc_card, ptr %193, i32 0, i32 31, i32 %194
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %192
  call void @sdio_remove_func(ptr noundef nonnull %196) #12
  %199 = load ptr, ptr %26, align 8
  %200 = getelementptr %struct.mmc_card, ptr %199, i32 0, i32 31, i32 %194
  store ptr null, ptr %200, align 4
  %201 = load ptr, ptr %26, align 8
  br label %202

202:                                              ; preds = %198, %192
  %203 = phi ptr [ %193, %192 ], [ %201, %198 ]
  %204 = add nuw i32 %194, 1
  %205 = getelementptr inbounds %struct.mmc_card, ptr %203, i32 0, i32 27
  %206 = load i32, ptr %205, align 8
  %207 = icmp ult i32 %204, %206
  br i1 %207, label %192, label %208

208:                                              ; preds = %202, %186
  %209 = phi ptr [ %188, %186 ], [ %203, %202 ]
  call void @mmc_remove_card(ptr noundef %209) #12
  store ptr null, ptr %26, align 8
  %210 = call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  br label %211

211:                                              ; preds = %208, %22, %18
  %212 = phi i32 [ %23, %22 ], [ %187, %208 ], [ -22, %18 ]
  call void @mmc_detach_bus(ptr noundef %0) #12
  %213 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  br label %219

219:                                              ; preds = %216, %211
  %220 = phi ptr [ %218, %216 ], [ %214, %211 ]
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %220, i32 noundef %212) #13
  br label %222

222:                                              ; preds = %219, %182, %9
  %223 = phi i32 [ %212, %219 ], [ 0, %182 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %223
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_io_op_cond(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_attach_bus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sdio_init_card(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 652, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2031616
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  %21 = or i32 %1, 16777216
  %22 = select i1 %20, i32 %1, i32 %21
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %25 = icmp eq ptr %2, null
  %26 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 4
  %27 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 15
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 3
  br label %30

30:                                               ; preds = %106, %13
  %31 = phi i32 [ 10, %13 ], [ %107, %106 ]
  %32 = phi i32 [ %22, %13 ], [ %108, %106 ]
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load ptr, ptr %23, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %24, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %40) #13
  %42 = and i32 %32, -16777217
  br label %43

43:                                               ; preds = %39, %30
  %44 = phi i32 [ %32, %30 ], [ %42, %39 ]
  %45 = call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef %44, ptr noundef nonnull %7) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %403

47:                                               ; preds = %43
  %48 = load i32, ptr %14, align 8
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i8, ptr @use_spi_crc, align 1, !range !12
  %53 = zext i8 %52 to i32
  %54 = call i32 @mmc_spi_set_crc(ptr noundef %0, i32 noundef %53) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %403

56:                                               ; preds = %51, %47
  %57 = call ptr @mmc_alloc_card(ptr noundef %0, ptr noundef nonnull @sdio_type) #12
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = ptrtoint ptr %57 to i32
  br label %403

61:                                               ; preds = %56
  %62 = load i32, ptr %7, align 4
  %63 = and i32 %62, 134217728
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = and i32 %62, %44
  %67 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 15
  %68 = call i32 @mmc_sd_get_cid(ptr noundef %0, i32 noundef %66, ptr noundef %67, ptr noundef null) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 4
  store i32 3, ptr %71, align 8
  br i1 %25, label %83, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %26, align 8
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %398

75:                                               ; preds = %72
  %76 = call i32 @bcmp(ptr noundef dereferenceable(16) %67, ptr noundef dereferenceable(16) %27, i32 16)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %398

78:                                               ; preds = %65, %61
  %79 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 4
  store i32 2, ptr %79, align 8
  br i1 %25, label %83, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %26, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %398

83:                                               ; preds = %80, %78, %75, %70
  %84 = load ptr, ptr %28, align 4
  %85 = getelementptr inbounds %struct.mmc_host_ops, ptr %84, i32 0, i32 9
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  call void %86(ptr noundef %0, ptr noundef %57) #12
  br label %89

89:                                               ; preds = %88, %83
  call fastcc void @mmc_fixup_device(ptr noundef %57, ptr noundef nonnull @sdio_card_init_methods)
  %90 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 2
  store i32 %1, ptr %90, align 8
  %91 = load i32, ptr %7, align 4
  %92 = and i32 %44, 16777216
  %93 = and i32 %92, %91
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %89
  %96 = call i32 @mmc_set_uhs_voltage(ptr noundef %0, i32 noundef %1) #12
  switch i32 %96, label %109 [
    i32 -11, label %97
    i32 0, label %111
  ]

97:                                               ; preds = %95
  %98 = icmp eq ptr %57, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  call void @mmc_remove_card(ptr noundef nonnull %57) #12
  br label %100

100:                                              ; preds = %99, %97
  %101 = call i32 @sdio_reset(ptr noundef %0) #12
  %102 = call i32 @mmc_go_idle(ptr noundef %0) #12
  %103 = call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %1) #12
  %104 = call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %105 = add i32 %31, -1
  br label %106

106:                                              ; preds = %301, %100
  %107 = phi i32 [ %105, %100 ], [ 0, %301 ]
  %108 = phi i32 [ %44, %100 ], [ %112, %301 ]
  br label %30

109:                                              ; preds = %95
  %110 = and i32 %44, -16777217
  br label %111

111:                                              ; preds = %109, %95, %89
  %112 = phi i32 [ %110, %109 ], [ %44, %89 ], [ %44, %95 ]
  %113 = load i32, ptr %14, align 8
  %114 = and i32 %113, 16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 3
  %118 = call i32 @mmc_send_relative_addr(ptr noundef %0, ptr noundef %117) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %398

120:                                              ; preds = %116
  br i1 %25, label %124, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %117, align 4
  store i32 %122, ptr %29, align 4
  br label %132

123:                                              ; preds = %111
  br i1 %25, label %124, label %132

124:                                              ; preds = %123, %120
  %125 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = call i32 @mmc_sd_get_csd(ptr noundef %57) #12
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %398

131:                                              ; preds = %128
  call void @mmc_decode_cid(ptr noundef %57) #12
  br label %132

132:                                              ; preds = %131, %124, %123, %121
  %133 = phi i1 [ true, %121 ], [ false, %131 ], [ false, %124 ], [ true, %123 ]
  %134 = load i32, ptr %14, align 8
  %135 = and i32 %134, 16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = call i32 @mmc_select_card(ptr noundef %57) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %398

140:                                              ; preds = %137, %132
  %141 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 6
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 30, i32 3
  %147 = load i32, ptr %146, align 4
  call void @mmc_set_clock(ptr noundef %0, i32 noundef %147) #12
  %148 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29, i32 2
  %149 = load i8, ptr %148, align 8
  %150 = and i8 %149, 16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %57, align 8
  call void @mmc_set_timing(ptr noundef %153, i32 noundef 2) #12
  br label %154

154:                                              ; preds = %152, %145
  br i1 %133, label %155, label %156

155:                                              ; preds = %154
  call void @mmc_remove_card(ptr noundef %57) #12
  br label %403

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  store ptr %57, ptr %157, align 8
  br label %403

158:                                              ; preds = %140
  %159 = and i32 %112, 16777216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !annotation !8
  %160 = call i32 @mmc_io_rw_direct(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %5) #12
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %297

162:                                              ; preds = %158
  %163 = load i8, ptr %5, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 15
  %166 = icmp ugt i32 %165, 3
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load ptr, ptr %57, align 8
  %169 = getelementptr inbounds %struct.mmc_host, ptr %168, i32 0, i32 1, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.mmc_host, ptr %168, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %174, %172 ], [ %170, %167 ]
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %176, i32 noundef %165) #13
  br label %297

178:                                              ; preds = %162
  %179 = lshr i32 %164, 4
  %180 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29
  store i32 %179, ptr %180, align 8
  %181 = call i32 @mmc_io_rw_direct(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %5) #12
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %297

183:                                              ; preds = %178
  %184 = load i8, ptr %5, align 1
  %185 = and i8 %184, 2
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29, i32 2
  %189 = load i8, ptr %188, align 8
  %190 = or i8 %189, 1
  store i8 %190, ptr %188, align 8
  br label %191

191:                                              ; preds = %187, %183
  %192 = and i8 %184, 64
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29, i32 2
  %196 = load i8, ptr %195, align 8
  %197 = or i8 %196, 2
  store i8 %197, ptr %195, align 8
  br label %198

198:                                              ; preds = %194, %191
  %199 = icmp sgt i8 %184, -1
  br i1 %199, label %204, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29, i32 2
  %202 = load i8, ptr %201, align 8
  %203 = or i8 %202, 4
  store i8 %203, ptr %201, align 8
  br label %204

204:                                              ; preds = %200, %198
  %205 = icmp eq i32 %165, 0
  br i1 %205, label %307, label %206

206:                                              ; preds = %204
  %207 = call i32 @mmc_io_rw_direct(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 18, i8 noundef zeroext 0, ptr noundef nonnull %5) #12
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %297

209:                                              ; preds = %206
  %210 = load i8, ptr %5, align 1
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29, i32 2
  %215 = load i8, ptr %214, align 8
  %216 = or i8 %215, 8
  store i8 %216, ptr %214, align 8
  br label %217

217:                                              ; preds = %213, %209
  %218 = icmp ugt i32 %165, 1
  br i1 %218, label %219, label %307

219:                                              ; preds = %217
  %220 = call i32 @mmc_io_rw_direct(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %6) #12
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %297

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 22, i32 1
  store i8 0, ptr %223, align 1
  %224 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 24, i32 2
  store i32 0, ptr %224, align 4
  %225 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 24, i32 3
  store i32 0, ptr %225, align 4
  %226 = icmp ugt i32 %165, 2
  %227 = icmp ne i32 %159, 0
  %228 = and i1 %227, %226
  br i1 %228, label %229, label %283

229:                                              ; preds = %222
  store i8 1, ptr %223, align 1
  %230 = call i32 @mmc_io_rw_direct(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 20, i8 noundef zeroext 0, ptr noundef nonnull %5) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %297

232:                                              ; preds = %229
  %233 = load ptr, ptr %57, align 8
  %234 = getelementptr inbounds %struct.mmc_host, ptr %233, i32 0, i32 16
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 2031616
  %237 = icmp eq i32 %236, 0
  %238 = and i32 %235, 1
  %239 = icmp eq i32 %238, 0
  %240 = or i1 %237, %239
  br i1 %240, label %260, label %241

241:                                              ; preds = %232
  %242 = load i8, ptr %5, align 1
  %243 = and i8 %242, 4
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load i32, ptr %224, align 4
  %247 = or i32 %246, 23
  store i32 %247, ptr %224, align 4
  br label %248

248:                                              ; preds = %245, %241
  %249 = and i8 %242, 1
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load i32, ptr %224, align 4
  %253 = or i32 %252, 7
  store i32 %253, ptr %224, align 4
  br label %254

254:                                              ; preds = %251, %248
  %255 = and i8 %242, 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %224, align 4
  %259 = or i32 %258, 15
  store i32 %259, ptr %224, align 4
  br label %260

260:                                              ; preds = %257, %254, %232
  %261 = call i32 @mmc_io_rw_direct(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 21, i8 noundef zeroext 0, ptr noundef nonnull %5) #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %297

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 24, i32 3
  %265 = load i8, ptr %5, align 1
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %263
  %269 = load i32, ptr %264, align 4
  %270 = or i32 %269, 2
  store i32 %270, ptr %264, align 4
  br label %271

271:                                              ; preds = %268, %263
  %272 = and i8 %265, 2
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %264, align 4
  %276 = or i32 %275, 4
  store i32 %276, ptr %264, align 4
  br label %277

277:                                              ; preds = %274, %271
  %278 = and i8 %265, 4
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load i32, ptr %264, align 4
  %282 = or i32 %281, 8
  store i32 %282, ptr %264, align 4
  br label %283

283:                                              ; preds = %280, %277, %222
  %284 = load i32, ptr %224, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %307

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 24
  %288 = load i8, ptr %6, align 1
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  %291 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 29, i32 2
  %292 = load i8, ptr %291, align 8
  %293 = and i8 %292, -17
  %294 = shl nuw nsw i8 %289, 4
  %295 = or i8 %293, %294
  %296 = select i1 %290, i32 25000000, i32 50000000
  store i8 %295, ptr %291, align 8
  store i32 %296, ptr %287, align 4
  br label %307

297:                                              ; preds = %260, %229, %219, %206, %178, %175, %158
  %298 = phi i32 [ %261, %260 ], [ %230, %229 ], [ %220, %219 ], [ %207, %206 ], [ %181, %178 ], [ %160, %158 ], [ -22, %175 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %299 = icmp eq ptr %57, null
  br i1 %299, label %301, label %300

300:                                              ; preds = %297
  call void @mmc_remove_card(ptr noundef nonnull %57) #12
  br label %301

301:                                              ; preds = %300, %297
  %302 = call i32 @sdio_reset(ptr noundef %0) #12
  %303 = call i32 @mmc_go_idle(ptr noundef %0) #12
  %304 = call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %1) #12
  %305 = call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %306 = icmp eq i32 %159, 0
  br i1 %306, label %403, label %106

307:                                              ; preds = %286, %283, %217, %204
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %308 = call i32 @sdio_read_common_cis(ptr noundef %57) #12
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %398

310:                                              ; preds = %307
  br i1 %133, label %311, label %324

311:                                              ; preds = %310
  %312 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 30
  %313 = load i16, ptr %312, align 4
  %314 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 30
  %315 = load i16, ptr %314, align 4
  %316 = icmp eq i16 %313, %315
  br i1 %316, label %317, label %398

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 30, i32 1
  %319 = load i16, ptr %318, align 2
  %320 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 30, i32 1
  %321 = load i16, ptr %320, align 2
  %322 = icmp eq i16 %319, %321
  br i1 %322, label %323, label %398

323:                                              ; preds = %317
  call void @mmc_remove_card(ptr noundef %57) #12
  br label %324

324:                                              ; preds = %323, %310
  %325 = phi ptr [ %2, %323 ], [ %57, %310 ]
  call fastcc void @mmc_fixup_device(ptr noundef %325, ptr noundef nonnull @sdio_fixup_methods)
  %326 = getelementptr inbounds %struct.mmc_card, ptr %325, i32 0, i32 4
  %327 = load i32, ptr %326, align 8
  %328 = icmp eq i32 %327, 3
  br i1 %328, label %329, label %344

329:                                              ; preds = %324
  %330 = call i32 @mmc_sd_setup_card(ptr noundef %0, ptr noundef %325, i1 noundef zeroext %133) #12
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %342, label %332

332:                                              ; preds = %329
  %333 = call i32 @mmc_go_idle(ptr noundef %0) #12
  %334 = load i32, ptr %14, align 8
  %335 = and i32 %334, 16
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %332
  %338 = load i8, ptr @use_spi_crc, align 1, !range !12
  %339 = zext i8 %338 to i32
  %340 = call i32 @mmc_spi_set_crc(ptr noundef %0, i32 noundef %339) #12
  br label %341

341:                                              ; preds = %337, %332
  store i32 2, ptr %326, align 8
  br label %344

342:                                              ; preds = %329
  %343 = getelementptr inbounds %struct.mmc_card, ptr %325, i32 0, i32 1, i32 4
  store ptr @sd_type, ptr %343, align 8
  br label %344

344:                                              ; preds = %342, %341, %324
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !8
  %345 = getelementptr inbounds %struct.mmc_card, ptr %325, i32 0, i32 6
  %346 = load i32, ptr %345, align 8
  %347 = and i32 %346, 32
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %359

350:                                              ; preds = %344
  %351 = call i32 @mmc_io_rw_direct(ptr noundef %325, i32 noundef 0, i32 noundef 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef nonnull %4) #12
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %350
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %398

354:                                              ; preds = %350
  %355 = load i8, ptr %4, align 1
  %356 = or i8 %355, -128
  store i8 %356, ptr %4, align 1
  %357 = call i32 @mmc_io_rw_direct(ptr noundef %325, i32 noundef 1, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %356, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %398

359:                                              ; preds = %354, %349
  %360 = icmp eq i32 %159, 0
  br i1 %360, label %368, label %361

361:                                              ; preds = %359
  %362 = getelementptr inbounds %struct.mmc_card, ptr %325, i32 0, i32 24, i32 2
  %363 = load i32, ptr %362, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %361
  %366 = call fastcc i32 @mmc_sdio_init_uhs_card(ptr noundef %325)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %379, label %398

368:                                              ; preds = %361, %359
  %369 = call fastcc i32 @sdio_enable_hs(ptr noundef %325)
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  %372 = load ptr, ptr %325, align 8
  call void @mmc_set_timing(ptr noundef %372, i32 noundef 2) #12
  br label %375

373:                                              ; preds = %368
  %374 = icmp eq i32 %369, 0
  br i1 %374, label %375, label %398

375:                                              ; preds = %373, %371
  %376 = call fastcc i32 @mmc_sdio_get_max_clock(ptr noundef %325)
  call void @mmc_set_clock(ptr noundef %0, i32 noundef %376) #12
  %377 = call fastcc i32 @sdio_enable_4bit_bus(ptr noundef %325)
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %398

379:                                              ; preds = %375, %365
  %380 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %381 = load i32, ptr %380, align 4
  %382 = and i32 %381, 33554432
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %386 = load i8, ptr %385, align 1
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load ptr, ptr %23, align 4
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load ptr, ptr %24, align 4
  br label %393

393:                                              ; preds = %391, %388
  %394 = phi ptr [ %392, %391 ], [ %389, %388 ]
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %394) #13
  br label %398

396:                                              ; preds = %384, %379
  %397 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  store ptr %325, ptr %397, align 8
  br label %403

398:                                              ; preds = %393, %375, %373, %365, %354, %353, %317, %311, %307, %137, %128, %116, %80, %75, %72
  %399 = phi i32 [ %308, %307 ], [ %357, %354 ], [ %366, %365 ], [ -22, %393 ], [ %377, %375 ], [ %369, %373 ], [ -2, %311 ], [ -2, %317 ], [ %351, %353 ], [ -2, %75 ], [ -2, %72 ], [ -2, %80 ], [ %118, %116 ], [ %129, %128 ], [ %138, %137 ]
  %400 = phi ptr [ %57, %307 ], [ %325, %354 ], [ %325, %365 ], [ %325, %393 ], [ %325, %375 ], [ %325, %373 ], [ %57, %311 ], [ %57, %317 ], [ %325, %353 ], [ %57, %116 ], [ %57, %128 ], [ %57, %137 ], [ %57, %80 ], [ %57, %72 ], [ %57, %75 ]
  %401 = icmp eq ptr %400, %2
  br i1 %401, label %403, label %402

402:                                              ; preds = %398
  call void @mmc_remove_card(ptr noundef %400) #12
  br label %403

403:                                              ; preds = %402, %398, %396, %301, %156, %155, %59, %51, %43
  %404 = phi i32 [ %60, %59 ], [ 0, %396 ], [ 0, %156 ], [ 0, %155 ], [ %399, %402 ], [ %399, %398 ], [ %298, %301 ], [ %54, %51 ], [ %45, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret i32 %404
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_add_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_sdio_remove(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %17, %1
  %8 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %9 = phi i32 [ %19, %17 ], [ 0, %1 ]
  %10 = getelementptr %struct.mmc_card, ptr %8, i32 0, i32 31, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  tail call void @sdio_remove_func(ptr noundef nonnull %11) #12
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr %struct.mmc_card, ptr %14, i32 0, i32 31, i32 %9
  store ptr null, ptr %15, align 4
  %16 = load ptr, ptr %2, align 8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %8, %7 ], [ %16, %13 ]
  %19 = add nuw i32 %9, 1
  %20 = getelementptr inbounds %struct.mmc_card, ptr %18, i32 0, i32 27
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %7, label %23

23:                                               ; preds = %17, %1
  %24 = phi ptr [ %3, %1 ], [ %18, %17 ]
  tail call void @mmc_remove_card(ptr noundef %24) #12
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detach_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_sdio_detect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 1
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 1, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #12, !srcloc !14
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  br label %31

18:                                               ; preds = %6, %1
  %19 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  %20 = tail call i32 @_mmc_detect_card_removed(ptr noundef %0) #12
  tail call void @mmc_release_host(ptr noundef %0) #12
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.mmc_card, ptr %26, i32 0, i32 1
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 4) #12
  br label %29

29:                                               ; preds = %24, %18
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %29, %17, %12
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.mmc_card, ptr %33, i32 0, i32 27
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %47, %31
  %38 = phi ptr [ %48, %47 ], [ %33, %31 ]
  %39 = phi i32 [ %49, %47 ], [ 0, %31 ]
  %40 = getelementptr %struct.mmc_card, ptr %38, i32 0, i32 31, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  tail call void @sdio_remove_func(ptr noundef nonnull %41) #12
  %44 = load ptr, ptr %32, align 8
  %45 = getelementptr %struct.mmc_card, ptr %44, i32 0, i32 31, i32 %39
  store ptr null, ptr %45, align 4
  %46 = load ptr, ptr %32, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi ptr [ %38, %37 ], [ %46, %43 ]
  %49 = add nuw i32 %39, 1
  %50 = getelementptr inbounds %struct.mmc_card, ptr %48, i32 0, i32 27
  %51 = load i32, ptr %50, align 8
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %37, label %53

53:                                               ; preds = %47, %31
  %54 = phi ptr [ %33, %31 ], [ %48, %47 ]
  tail call void @mmc_remove_card(ptr noundef %54) #12
  store ptr null, ptr %32, align 8
  %55 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  tail call void @mmc_detach_bus(ptr noundef %0) #12
  tail call void @mmc_power_off(ptr noundef %0) #12
  tail call void @mmc_release_host(ptr noundef %0) #12
  br label %56

56:                                               ; preds = %53, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_pre_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %33, %1
  %8 = phi i32 [ %34, %33 ], [ 0, %1 ]
  %9 = getelementptr %struct.mmc_card, ptr %3, i32 0, i32 31, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sdio_func, ptr %10, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sdio_func, ptr %10, i32 0, i32 1, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device_driver, ptr %19, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dev_pm_ops, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dev_pm_ops, ptr %23, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %17, %12, %7
  %34 = add nuw i32 %8, 1
  %35 = icmp eq i32 %34, %5
  br i1 %35, label %62, label %7

36:                                               ; preds = %29, %25, %21
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 256
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.2) #13
  br label %62

43:                                               ; preds = %53, %36
  %44 = phi ptr [ %54, %53 ], [ %3, %36 ]
  %45 = phi i32 [ %55, %53 ], [ 0, %36 ]
  %46 = getelementptr %struct.mmc_card, ptr %44, i32 0, i32 31, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  tail call void @sdio_remove_func(ptr noundef nonnull %47) #12
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr %struct.mmc_card, ptr %50, i32 0, i32 31, i32 %45
  store ptr null, ptr %51, align 4
  %52 = load ptr, ptr %2, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi ptr [ %44, %43 ], [ %52, %49 ]
  %55 = add nuw i32 %45, 1
  %56 = getelementptr inbounds %struct.mmc_card, ptr %54, i32 0, i32 27
  %57 = load i32, ptr %56, align 8
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %43, label %59

59:                                               ; preds = %53
  tail call void @mmc_remove_card(ptr noundef %54) #12
  store ptr null, ptr %2, align 8
  %60 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  tail call void @mmc_detach_bus(ptr noundef %0) #12
  tail call void @mmc_power_off(ptr noundef %0) #12
  tail call void @mmc_release_host(ptr noundef %0) #12
  %61 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 51
  store i32 0, ptr %61, align 32
  br label %62

62:                                               ; preds = %59, %41, %33, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 46
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 51
  %7 = load i32, ptr %6, align 32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 32
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 48
  %18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %17) #12
  %19 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 51
  %21 = load i32, ptr %20, align 32
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %45

24:                                               ; preds = %11
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr inbounds %struct.mmc_card, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 16
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mmc_card, ptr %25, i32 0, i32 22, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @mmc_app_set_bus_width(ptr noundef %25, i32 noundef 0) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %24
  %44 = tail call fastcc i32 @sdio_disable_wide(ptr noundef %25) #12
  br label %45

45:                                               ; preds = %43, %40, %35, %29, %11
  %46 = load i32, ptr %20, align 32
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @mmc_power_off(ptr noundef %0) #12
  br label %61

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 34
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  tail call void @mmc_retune_timer_stop(ptr noundef %0) #12
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 8
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 32
  store i32 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %54, %50, %49
  tail call void @mmc_release_host(ptr noundef %0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 51
  %4 = load i32, ptr %3, align 32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %11) #12
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.mmc_card, ptr %17, i32 0, i32 1
  tail call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #12
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds %struct.mmc_card, ptr %19, i32 0, i32 1
  %21 = tail call i32 @__pm_runtime_set_status(ptr noundef %20, i32 noundef 0) #12
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.mmc_card, ptr %22, i32 0, i32 1
  tail call void @pm_runtime_enable(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %16, %7
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds %struct.mmc_card, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 @sdio_reset(ptr noundef %0) #12
  %29 = tail call i32 @mmc_go_idle(ptr noundef %0) #12
  %30 = tail call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %27) #12
  %31 = tail call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %24
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %struct.mmc_card, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %0, i32 noundef %36, ptr noundef %34) #12
  br label %45

38:                                               ; preds = %1
  %39 = and i32 %4, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %43 = load ptr, ptr %42, align 8
  %44 = tail call fastcc i32 @sdio_enable_4bit_bus(ptr noundef %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi i32 [ %44, %41 ], [ %37, %33 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %45, %38
  %49 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.mmc_card, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -33
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 46
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 131072
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 47
  %64 = load ptr, ptr %63, align 8
  %65 = tail call i32 @wake_up_process(ptr noundef %64) #12
  br label %75

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr @system_wq, align 4
  %73 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 48
  %74 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %72, ptr noundef %73, i32 noundef 0) #12
  br label %75

75:                                               ; preds = %71, %66, %62, %48, %45, %24
  %76 = phi i32 [ 0, %48 ], [ 0, %66 ], [ 0, %71 ], [ 0, %62 ], [ %46, %45 ], [ %31, %24 ]
  tail call void @mmc_release_host(ptr noundef %0) #12
  %77 = load i32, ptr %3, align 32
  %78 = and i32 %77, -2
  store i32 %78, ptr %3, align 32
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_runtime_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  tail call void @mmc_power_off(ptr noundef %0) #12
  tail call void @mmc_release_host(ptr noundef %0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_runtime_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #12
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %6) #12
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @sdio_reset(ptr noundef %0) #12
  %11 = tail call i32 @mmc_go_idle(ptr noundef %0) #12
  %12 = tail call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %9) #12
  %13 = tail call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %0, i32 noundef %18, ptr noundef %16) #12
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ %13, %1 ]
  tail call void @mmc_release_host(ptr noundef %0) #12
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_alive(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mmc_select_card(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_hw_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 28
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9, %7
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 31
  store i32 0, ptr %15, align 32
  %16 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 16
  store i32 %18, ptr %16, align 4
  tail call void @_mmc_detect_change(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #12
  br label %35

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  tail call void @mmc_power_cycle(ptr noundef %0, i32 noundef %21) #12
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.mmc_card, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @sdio_reset(ptr noundef %0) #12
  %26 = tail call i32 @mmc_go_idle(ptr noundef %0) #12
  %27 = tail call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %24) #12
  %28 = tail call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.mmc_card, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %0, i32 noundef %33, ptr noundef %31) #12
  br label %35

35:                                               ; preds = %30, %19, %14, %9
  %36 = phi i32 [ 1, %14 ], [ 1, %9 ], [ %34, %30 ], [ %28, %19 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sdio_sw_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  tail call void @mmc_set_clock(ptr noundef %0, i32 noundef %3) #12
  %4 = tail call i32 @sdio_reset(ptr noundef %0) #12
  %5 = tail call i32 @mmc_go_idle(ptr noundef %0) #12
  tail call void @mmc_set_initial_state(ptr noundef %0) #12
  tail call void @mmc_set_initial_signal_voltage(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @sdio_reset(ptr noundef %0) #12
  %11 = tail call i32 @mmc_go_idle(ptr noundef %0) #12
  %12 = tail call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %9) #12
  %13 = tail call i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %0, i32 noundef %18, ptr noundef %16) #12
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ %13, %1 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_mmc_detect_card_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_timer_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdio_disable_wide(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 29, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 6
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i8, ptr %2, align 1
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = and i8 %17, -35
  %22 = or i8 %21, 32
  store i8 %22, ptr %2, align 1
  %23 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %22, ptr noundef null) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 8
  call void @mmc_set_bus_width(ptr noundef %26, i32 noundef 0) #12
  br label %27

27:                                               ; preds = %25, %20, %16, %13, %8, %1
  %28 = phi i32 [ 0, %25 ], [ 0, %1 ], [ 0, %8 ], [ %14, %13 ], [ 0, %16 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_up(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdio_enable_4bit_bus(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 29, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 6
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  %14 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i8, ptr %2, align 1
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %27, %25 ], [ %23, %20 ]
  %30 = zext i8 %17 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %29, i32 noundef %30) #13
  %32 = load i8, ptr %2, align 1
  br label %33

33:                                               ; preds = %28, %16
  %34 = phi i8 [ %32, %28 ], [ %17, %16 ]
  %35 = and i8 %34, -4
  %36 = or i8 %35, 2
  store i8 %36, ptr %2, align 1
  %37 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %36, ptr noundef null) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %44

40:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %60

41:                                               ; preds = %33, %13
  %42 = phi i32 [ %14, %13 ], [ %37, %33 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %60, label %44

44:                                               ; preds = %41, %39
  %45 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 22, i32 4
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = call i32 @mmc_app_set_bus_width(ptr noundef %0, i32 noundef 2) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call fastcc i32 @sdio_disable_wide(ptr noundef %0)
  br label %60

58:                                               ; preds = %53, %48, %44
  %59 = load ptr, ptr %0, align 8
  call void @mmc_set_bus_width(ptr noundef %59, i32 noundef 2) #12
  br label %60

60:                                               ; preds = %58, %56, %41, %40
  %61 = phi i32 [ 0, %58 ], [ %54, %56 ], [ %42, %41 ], [ 0, %40 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_if_cond(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mmc_detect_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_cycle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_initial_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_initial_signal_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_set_crc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_get_cid(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_fixup_device(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 40
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 32
  %12 = or i64 %11, %7
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 5
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or i64 %12, %16
  %18 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 8
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i64
  %21 = or i64 %17, %20
  %22 = getelementptr inbounds %struct.mmc_fixup, ptr %1, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %117, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 4
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 1
  %30 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21
  br label %31

31:                                               ; preds = %112, %25
  %32 = phi ptr [ %23, %25 ], [ %115, %112 ]
  %33 = phi ptr [ %22, %25 ], [ %114, %112 ]
  %34 = phi ptr [ %1, %25 ], [ %113, %112 ]
  %35 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %112

41:                                               ; preds = %38, %31
  %42 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 4
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr %26, align 4
  %47 = icmp eq i16 %43, %46
  br i1 %47, label %48, label %112

48:                                               ; preds = %45, %41
  %49 = load ptr, ptr %34, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @strncmp(ptr noundef nonnull %49, ptr noundef %27, i32 noundef 8)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %112

54:                                               ; preds = %51, %48
  %55 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 5
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, -1
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i16, ptr %28, align 4
  %60 = icmp eq i16 %56, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %58, %54
  %62 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 6
  %63 = load i16, ptr %62, align 8
  %64 = icmp eq i16 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i16, ptr %29, align 2
  %67 = icmp eq i16 %63, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8, ptr %30, align 8
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 1
  %78 = load i64, ptr %77, align 8
  %79 = icmp ult i64 %21, %78
  br i1 %79, label %112, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 2
  %82 = load i64, ptr %81, align 8
  %83 = icmp ugt i64 %21, %82
  br i1 %83, label %112, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 8
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %0, align 8
  %90 = load ptr, ptr %89, align 64
  %91 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 25
  %92 = load ptr, ptr %91, align 8
  %93 = tail call ptr @of_get_next_child(ptr noundef %92, ptr noundef null) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %112, label %95

95:                                               ; preds = %99, %88
  %96 = phi ptr [ %104, %99 ], [ %93, %88 ]
  %97 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %96, ptr noundef nonnull %86) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load ptr, ptr %0, align 8
  %101 = load ptr, ptr %100, align 64
  %102 = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 25
  %103 = load ptr, ptr %102, align 8
  %104 = tail call ptr @of_get_next_child(ptr noundef %103, ptr noundef nonnull %96) #12
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %95

106:                                              ; preds = %95
  %107 = load ptr, ptr %33, align 4
  br label %108

108:                                              ; preds = %106, %84
  %109 = phi ptr [ %107, %106 ], [ %32, %84 ]
  %110 = getelementptr inbounds %struct.mmc_fixup, ptr %34, i32 0, i32 10
  %111 = load i32, ptr %110, align 8
  tail call void %109(ptr noundef %0, i32 noundef %111) #12
  br label %112

112:                                              ; preds = %108, %99, %88, %80, %76, %72, %65, %58, %51, %45, %38
  %113 = getelementptr %struct.mmc_fixup, ptr %34, i32 1
  %114 = getelementptr %struct.mmc_fixup, ptr %34, i32 1, i32 9
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %31

117:                                              ; preds = %112, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_uhs_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_relative_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_get_csd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_decode_cid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_read_common_cis(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_setup_card(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sdio_init_uhs_card(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 22, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @sdio_enable_4bit_bus(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %135

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !8
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1
  %16 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @mmc_select_drive_strength(ptr noundef %0, i32 noundef %17, i32 noundef %15, ptr noundef nonnull %3) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %11
  %21 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 21, i8 noundef zeroext 0, ptr noundef nonnull %4) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i8, ptr %4, align 1
  %25 = and i8 %24, -49
  %26 = add i32 %18, -1
  %27 = icmp ult i32 %26, 3
  %28 = trunc i32 %26 to i8
  %29 = shl i8 %28, 4
  %30 = add i8 %29, 16
  %31 = select i1 %27, i8 %30, i8 0
  %32 = or i8 %31, %25
  store i8 %32, ptr %4, align 1
  %33 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 21, i8 noundef zeroext %32, ptr noundef null) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  store i32 %18, ptr %12, align 8
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, ptr %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 8
  call void @mmc_set_driver_type(ptr noundef %40, i32 noundef %37) #12
  br label %41

41:                                               ; preds = %39, %36, %23, %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 2031616
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %44, 1
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %46, %48
  br i1 %49, label %123, label %50

50:                                               ; preds = %41
  %51 = and i32 %44, 524288
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %53, %50
  %59 = and i32 %44, 1048576
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61, %58
  %67 = and i32 %44, 786432
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %69, %66
  %75 = and i32 %44, 917504
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77, %74
  %83 = and i32 %44, 983040
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %77, %69, %61, %53
  %91 = phi i32 [ 208000000, %53 ], [ 50000000, %61 ], [ 100000000, %69 ], [ 50000000, %77 ], [ 25000000, %85 ]
  %92 = phi i32 [ 3, %53 ], [ 4, %61 ], [ 2, %69 ], [ 1, %77 ], [ 0, %85 ]
  %93 = phi i32 [ 6, %53 ], [ 7, %61 ], [ 5, %69 ], [ 4, %77 ], [ 3, %85 ]
  %94 = phi i8 [ 6, %53 ], [ 8, %61 ], [ 4, %69 ], [ 2, %77 ], [ 0, %85 ]
  store i32 %91, ptr %16, align 4
  %95 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 38
  store i32 %92, ptr %95, align 8
  br label %96

96:                                               ; preds = %90, %85, %82
  %97 = phi i32 [ 3, %85 ], [ 3, %82 ], [ %93, %90 ]
  %98 = phi i8 [ 0, %85 ], [ 0, %82 ], [ %94, %90 ]
  %99 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load i8, ptr %2, align 1
  %103 = and i8 %102, -15
  %104 = or i8 %103, %98
  store i8 %104, ptr %2, align 1
  %105 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 19, i8 noundef zeroext %104, ptr noundef null) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr %16, align 4
  %111 = icmp eq i32 %109, 0
  %112 = icmp eq i32 %110, 0
  %113 = call i32 @llvm.umin.i32(i32 %109, i32 %110) #12
  %114 = select i1 %112, i32 %109, i32 %113
  %115 = select i1 %111, i32 %110, i32 %114
  %116 = load ptr, ptr %0, align 8
  call void @mmc_set_timing(ptr noundef %116, i32 noundef %97) #12
  %117 = load ptr, ptr %0, align 8
  call void @mmc_set_clock(ptr noundef %117, i32 noundef %115) #12
  %118 = load ptr, ptr %0, align 8
  %119 = getelementptr inbounds %struct.mmc_host, ptr %118, i32 0, i32 16
  %120 = load i32, ptr %119, align 8
  br label %123

121:                                              ; preds = %101, %96
  %122 = phi i32 [ %99, %96 ], [ %105, %101 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %135

123:                                              ; preds = %107, %41
  %124 = phi i32 [ %120, %107 ], [ %44, %41 ]
  %125 = phi ptr [ %118, %107 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  %126 = and i32 %124, 16
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.mmc_host, ptr %125, i32 0, i32 28, i32 7
  %130 = load i8, ptr %129, align 4
  %131 = add i8 %130, -5
  %132 = icmp ult i8 %131, 2
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 @mmc_execute_tuning(ptr noundef %0) #12
  br label %135

135:                                              ; preds = %133, %128, %123, %121, %8, %1
  %136 = phi i32 [ 0, %1 ], [ %9, %8 ], [ %122, %121 ], [ 0, %123 ], [ %134, %133 ], [ 0, %128 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdio_enable_hs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 29, i32 2
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %3) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8, ptr %3, align 1
  %19 = or i8 %18, 2
  store i8 %19, ptr %3, align 1
  %20 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 19, i8 noundef zeroext %19, ptr noundef null) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %27

23:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %53

24:                                               ; preds = %17, %14
  %25 = phi i32 [ %15, %14 ], [ %20, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %53, label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ 1, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = call i32 @mmc_sd_switch_hs(ptr noundef %0) #12
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load i8, ptr %10, align 8
  %43 = and i8 %42, 16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8, ptr %2, align 1
  %50 = and i8 %49, -3
  store i8 %50, ptr %2, align 1
  %51 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 19, i8 noundef zeroext %50, ptr noundef null) #12
  br label %52

52:                                               ; preds = %48, %45, %41, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %53

53:                                               ; preds = %52, %32, %27, %24, %23
  %54 = phi i32 [ %28, %27 ], [ %25, %24 ], [ %33, %52 ], [ %33, %32 ], [ 0, %23 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sdio_get_max_clock(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = add i8 %4, -3
  %6 = icmp ult i8 %5, -2
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 3
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ 50000000, %1 ]
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call i32 @mmc_sd_get_max_clock(ptr noundef %0) #12
  %17 = tail call i32 @llvm.umin.i32(i32 %11, i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ %17, %15 ], [ %11, %10 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_vendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 948
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_device_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 950
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_revision_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 992
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 993
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info1_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %10)
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info2_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info3_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info4_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ocr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rca_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wl1251_quirk(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.20) #13
  %5 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 8
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 29, i32 2
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 4
  store i8 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30
  store i16 4172, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 1
  store i16 -28570, ptr %12, align 2
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 2
  store i16 512, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 3
  store i32 24000000, ptr %14, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @add_quirk(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @add_limit_rate_quirk(ptr nocapture noundef writeonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_drive_strength(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_driver_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_switch_hs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_get_max_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdio_alloc_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_read_func_cis(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_remove_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 621010, i64 2148122576, i64 2148122602, i64 2148122649, i64 2148122671, i64 2148122699, i64 2148122719}
!11 = !{i64 2148185838, i64 2148185864, i64 2148185893, i64 2148185927, i64 2148185958, i64 2148185981}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148185345}
!14 = !{i64 607579, i64 607604, i64 607626, i64 607642, i64 607654, i64 607674, i64 607698, i64 607714, i64 607726}
!15 = !{i64 2148185471}
