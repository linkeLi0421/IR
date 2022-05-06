; ModuleID = '/llk/IR/drivers/bcma/driver_pcie2.c_pt.bc'
source_filename = "../drivers/bcma/driver_pcie2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.66, %struct.anon.67, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.anon.67 = type { %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i8, i8, i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@.str = private unnamed_addr constant [48 x i8] c"bus%d: Error setting PCI_EXP_DEVCTL_READRQ: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pcie2_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %2, i16 noundef zeroext 2156) #3
  %10 = and i32 %9, 14
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %13, i16 noundef zeroext 288, i32 noundef 1248) #3
  %19 = load ptr, ptr %0, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %19, i16 noundef zeroext 292, i32 noundef 23) #3
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i16, ptr %4, align 4
  %27 = icmp eq i16 %26, 17248
  %28 = icmp eq i16 %26, 17234
  %29 = or i1 %27, %28
  %30 = select i1 %29, i16 1024, i16 128
  %31 = getelementptr inbounds %struct.bcma_drv_pcie2, ptr %0, i32 0, i32 1
  store i16 %30, ptr %31, align 4
  %32 = load i16, ptr %4, align 2
  %33 = icmp eq i16 %32, 17248
  br i1 %33, label %34, label %61

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6, i32 1
  %36 = load i8, ptr %35, align 2
  %37 = icmp ugt i8 %36, 3
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %39, i16 noundef zeroext 0) #3
  %46 = and i32 %45, -769
  %47 = or i32 %46, 512
  %48 = load ptr, ptr %0, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %48, i16 noundef zeroext 0, i32 noundef %47) #3
  %54 = load ptr, ptr %0, align 4
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bcma_host_ops, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %54, i16 noundef zeroext 0) #3
  br label %61

61:                                               ; preds = %38, %34, %25
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.bcma_device, ptr %62, i32 0, i32 1, i32 2
  %64 = load i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 10
  %66 = add i8 %64, -14
  %67 = icmp ult i8 %66, -12
  %68 = or i1 %65, %67
  br i1 %68, label %146, label %69

69:                                               ; preds = %61
  %70 = load ptr, ptr %62, align 8
  %71 = getelementptr inbounds %struct.bcma_bus, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.bcma_host_ops, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %62, i16 noundef zeroext 288, i32 noundef 212) #3
  %75 = load ptr, ptr %0, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.bcma_bus, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bcma_host_ops, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %80(ptr noundef %75, i16 noundef zeroext 292) #3
  %82 = and i32 %81, 1024
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %146, label %84

84:                                               ; preds = %69
  %85 = load ptr, ptr %0, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.bcma_bus, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.bcma_host_ops, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %85, i16 noundef zeroext 288, i32 noundef 2116) #3
  %91 = load ptr, ptr %0, align 4
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.bcma_bus, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.bcma_host_ops, ptr %94, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef %91, i16 noundef zeroext 292, i32 noundef -2009298884) #3
  %97 = load ptr, ptr %0, align 4
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.bcma_bus, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.bcma_host_ops, ptr %100, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %97, i16 noundef zeroext 288, i32 noundef 2120) #3
  %103 = load ptr, ptr %0, align 4
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.bcma_bus, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.bcma_host_ops, ptr %106, i32 0, i32 5
  %108 = load ptr, ptr %107, align 4
  tail call void %108(ptr noundef %103, i16 noundef zeroext 292, i32 noundef -2006677404) #3
  %109 = load ptr, ptr %0, align 4
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.bcma_bus, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.bcma_host_ops, ptr %112, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  tail call void %114(ptr noundef %109, i16 noundef zeroext 288, i32 noundef 2124) #3
  %115 = load ptr, ptr %0, align 4
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.bcma_bus, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.bcma_host_ops, ptr %118, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  tail call void %120(ptr noundef %115, i16 noundef zeroext 292, i32 noundef -1878814717) #3
  %121 = or i32 %81, 1024
  %122 = load ptr, ptr %0, align 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.bcma_bus, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.bcma_host_ops, ptr %125, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %122, i16 noundef zeroext 288, i32 noundef 212) #3
  %128 = load ptr, ptr %0, align 4
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.bcma_bus, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.bcma_host_ops, ptr %131, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  tail call void %133(ptr noundef %128, i16 noundef zeroext 292, i32 noundef %121) #3
  %134 = load ptr, ptr %0, align 4
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.bcma_bus, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.bcma_host_ops, ptr %137, i32 0, i32 5
  %139 = load ptr, ptr %138, align 4
  tail call void %139(ptr noundef %134, i16 noundef zeroext 416, i32 noundef 2) #3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %140 = load ptr, ptr %0, align 4
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr inbounds %struct.bcma_bus, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.bcma_host_ops, ptr %143, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  tail call void %145(ptr noundef %140, i16 noundef zeroext 416, i32 noundef 0) #3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  br label %146

146:                                              ; preds = %84, %69, %61
  %147 = load ptr, ptr %0, align 4
  %148 = getelementptr inbounds %struct.bcma_device, ptr %147, i32 0, i32 1, i32 2
  %149 = load i8, ptr %148, align 4
  %150 = icmp ult i8 %149, 14
  br i1 %150, label %151, label %170

151:                                              ; preds = %146
  %152 = load ptr, ptr %147, align 8
  %153 = getelementptr inbounds %struct.bcma_bus, ptr %152, i32 0, i32 12
  %154 = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %153) #3
  %155 = udiv i32 %154, 1000
  %156 = udiv i32 2000000, %155
  %157 = load ptr, ptr %0, align 4
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.bcma_bus, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.bcma_host_ops, ptr %160, i32 0, i32 5
  %162 = load ptr, ptr %161, align 4
  tail call void %162(ptr noundef %157, i16 noundef zeroext 288, i32 noundef 6220) #3
  %163 = load ptr, ptr %0, align 4
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.bcma_bus, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.bcma_host_ops, ptr %166, i32 0, i32 5
  %168 = load ptr, ptr %167, align 4
  tail call void %168(ptr noundef %163, i16 noundef zeroext 292, i32 noundef %156) #3
  %169 = load ptr, ptr %0, align 4
  br label %170

170:                                              ; preds = %151, %146
  %171 = phi ptr [ %147, %146 ], [ %169, %151 ]
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.bcma_bus, ptr %172, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.bcma_host_ops, ptr %174, i32 0, i32 5
  %176 = load ptr, ptr %175, align 4
  tail call void %176(ptr noundef %171, i16 noundef zeroext 288, i32 noundef 6164) #3
  %177 = load ptr, ptr %0, align 4
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.bcma_bus, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.bcma_host_ops, ptr %180, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = tail call i32 %182(ptr noundef %177, i16 noundef zeroext 292) #3
  %184 = or i32 %183, 31
  %185 = load ptr, ptr %177, align 8
  %186 = getelementptr inbounds %struct.bcma_bus, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.bcma_host_ops, ptr %187, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  tail call void %189(ptr noundef %177, i16 noundef zeroext 292, i32 noundef %184) #3
  %190 = load ptr, ptr %0, align 4
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.bcma_bus, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.bcma_host_ops, ptr %193, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  tail call void %195(ptr noundef %190, i16 noundef zeroext 288, i32 noundef 152) #3
  %196 = load ptr, ptr %0, align 4
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.bcma_bus, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.bcma_host_ops, ptr %199, i32 0, i32 5
  %201 = load ptr, ptr %200, align 4
  tail call void %201(ptr noundef %196, i16 noundef zeroext 292, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pcie2_up(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcma_drv_pcie2, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @pcie_set_readrq(ptr noundef %5, i32 noundef %8) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %9) #4
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_alp_clock(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
