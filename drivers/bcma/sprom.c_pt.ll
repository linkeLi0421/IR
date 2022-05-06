; ModuleID = '/llk/IR/drivers/bcma/sprom.c_pt.bc'
source_filename = "../drivers/bcma/sprom.c"
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.61, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.61 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.62, %struct.anon.63, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.62 = type { i8, i8, i8, i8 }
%struct.anon.63 = type { %struct.anon.64, %struct.anon.65 }
%struct.anon.64 = type { i8, i8, i8, i8, i8 }
%struct.anon.65 = type { i8, i8, i8, i8, i8 }
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
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@get_fallback_sprom = internal unnamed_addr global ptr null, align 4
@bcma_sprom_get.sprom_sizes = internal unnamed_addr constant [3 x i32] [i32 220, i32 230, i32 234], align 4
@.str = private unnamed_addr constant [76 x i8] c"bus%d: Invalid SPROM read from the PCIe card, trying to use fallback SPROM\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"bus%d: Using fallback SPROM failed (err %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\013bcma: Unsupported SPROM revision: %d\0A\00", align 1
@bcma_crc8.t = internal unnamed_addr constant [256 x i8] c"\00\F7\B9N%\D2\9CkJ\BD\F3\04o\98\D6!\94c-\DA\B1F\08\FF\DE)g\90\FB\0CB\B5\7F\88\C61Z\AD\E3\145\C2\8C{\10\E7\A9^\EB\1CR\A5\CE9w\80\A1V\18\EF\84s=\CA\FE\09G\B0\DB,b\95\B4C\0D\FA\91f(\DFj\9D\D3$O\B8\F6\01 \D7\99n\05\F2\BCK\81v8\CF\A4S\1D\EA\CB<r\85\EE\19W\A0\15\E2\AC[0\C7\89~_\A8\E6\11z\8D\C34\AB\\\12\E5\8Ey7\C0\E1\16X\AF\C43}\8A?\C8\86q\1A\ED\A3Tu\82\CC;P\A7\E9\1E\D4#m\9A\F1\06H\BF\9Ei'\D0\BBL\02\F5@\B7\F9\0Ee\92\DC+\0A\FD\B3D/\D8\96aU\A2\EC\1Bp\87\C9>\1F\E8\A6Q:\CD\83t\C16x\8F\E4\13]\AA\8B|2\C5\AEY\17\E0*\DD\93d\0F\F8\B6A`\97\D9.E\B2\FC\0B\BEI\07\F0\9Bl\22\D5\F4\03M\BA\D1&h\9F", align 1
@bcma_sprom_extract_r8.pwr_info_offset = internal unnamed_addr constant [4 x i16] [i16 192, i16 224, i16 256, i16 288], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @bcma_arch_register_fallback_sprom(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @get_fallback_sprom, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr %0, ptr @get_fallback_sprom, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ -17, %1 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_sprom_get(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %812, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcma_device, ptr %3, i32 0, i32 1, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = icmp ugt i8 %7, 30
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef nonnull %3, i16 noundef zeroext 400) #6
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %95

23:                                               ; preds = %5
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %3, i16 noundef zeroext 44) #6
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6
  %31 = load i16, ptr %30, align 4
  switch i16 %31, label %95 [
    i16 17171, label %33
    i16 17201, label %32
  ]

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %23
  %34 = phi i32 [ 2, %32 ], [ 1, %23 ]
  %35 = and i32 %34, %29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %33, %14, %9
  %38 = load ptr, ptr %2, align 4
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %38, i16 noundef zeroext 44) #6
  %45 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6
  %46 = load i16, ptr %45, align 4
  switch i16 %46, label %82 [
    i16 17171, label %53
    i16 17201, label %47
    i16 -22394, label %56
    i16 -22312, label %56
    i16 -22311, label %56
    i16 -22405, label %50
    i16 -22319, label %50
    i16 -22309, label %50
    i16 -22308, label %50
    i16 -22108, label %50
  ]

47:                                               ; preds = %37
  %48 = and i32 %44, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %82, label %56

50:                                               ; preds = %37, %37, %37, %37, %37
  %51 = and i32 %44, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %82, label %56

53:                                               ; preds = %37
  %54 = and i32 %44, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %53, %50, %47, %37, %37, %37
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 3670016
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %2, align 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.bcma_bus, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.bcma_host_ops, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %62, i16 noundef zeroext 16) #6
  %69 = and i32 %68, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %61
  %72 = load ptr, ptr %62, align 8
  %73 = getelementptr inbounds %struct.bcma_bus, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.bcma_host_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %62, i16 noundef zeroext 28) #6
  %78 = trunc i32 %77 to i16
  %79 = lshr i16 %78, 3
  %80 = and i16 %79, 511
  %81 = or i16 %80, 2048
  br label %95

82:                                               ; preds = %61, %56, %53, %50, %47, %37
  %83 = load ptr, ptr @get_fallback_sprom, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18
  %87 = tail call i32 %83(ptr noundef %0, ptr noundef %86) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %812, label %89

89:                                               ; preds = %85, %82
  %90 = phi i32 [ %87, %85 ], [ -2, %82 ]
  %91 = load ptr, ptr %0, align 4
  %92 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.1, i32 noundef %94, i32 noundef %90) #7
  br label %812

95:                                               ; preds = %71, %33, %23, %14
  %96 = phi i16 [ 2048, %33 ], [ 2048, %14 ], [ %81, %71 ], [ 2048, %23 ]
  %97 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6
  %98 = load i16, ptr %97, align 4
  switch i16 %98, label %100 [
    i16 17201, label %99
    i16 -22105, label %99
  ]

99:                                               ; preds = %95, %95
  tail call void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr noundef %2, i1 noundef zeroext false) #6
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %170, %100
  %102 = phi i32 [ %171, %170 ], [ 0, %100 ]
  %103 = getelementptr [3 x i32], ptr @bcma_sprom_get.sprom_sizes, i32 0, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %104, i32 2) #6
  %106 = extractvalue { i32, i1 } %105, 1
  br i1 %106, label %812, label %107, !prof !8

107:                                              ; preds = %101
  %108 = extractvalue { i32, i1 } %105, 0
  %109 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %108, i32 noundef 3520) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %812, label %111

111:                                              ; preds = %111, %107
  %112 = phi i32 [ %124, %111 ], [ 0, %107 ]
  %113 = load ptr, ptr %2, align 4
  %114 = trunc i32 %112 to i16
  %115 = shl i16 %114, 1
  %116 = add i16 %115, %96
  %117 = load ptr, ptr %113, align 8
  %118 = getelementptr inbounds %struct.bcma_bus, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.bcma_host_ops, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = tail call zeroext i16 %121(ptr noundef %113, i16 noundef zeroext %116) #6
  %123 = getelementptr i16, ptr %109, i32 %112
  store i16 %122, ptr %123, align 2
  %124 = add nuw i32 %112, 1
  %125 = icmp eq i32 %124, %104
  br i1 %125, label %126, label %111

126:                                              ; preds = %111
  %127 = add i32 %104, -1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %129, %126
  %130 = phi i8 [ %144, %129 ], [ -1, %126 ]
  %131 = phi i32 [ %145, %129 ], [ 0, %126 ]
  %132 = getelementptr i16, ptr %109, i32 %131
  %133 = load i16, ptr %132, align 2
  %134 = trunc i16 %133 to i8
  %135 = xor i8 %130, %134
  %136 = zext i8 %135 to i32
  %137 = getelementptr [256 x i8], ptr @bcma_crc8.t, i32 0, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = lshr i16 %133, 8
  %140 = trunc i16 %139 to i8
  %141 = xor i8 %138, %140
  %142 = zext i8 %141 to i32
  %143 = getelementptr [256 x i8], ptr @bcma_crc8.t, i32 0, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = add nuw i32 %131, 1
  %146 = icmp eq i32 %145, %127
  br i1 %146, label %147, label %129

147:                                              ; preds = %129, %126
  %148 = phi i8 [ -1, %126 ], [ %144, %129 ]
  %149 = getelementptr i16, ptr %109, i32 %127
  %150 = load i16, ptr %149, align 2
  %151 = trunc i16 %150 to i8
  %152 = xor i8 %148, %151
  %153 = zext i8 %152 to i32
  %154 = getelementptr [256 x i8], ptr @bcma_crc8.t, i32 0, i32 %153
  %155 = load i8, ptr %154, align 1
  %156 = xor i8 %155, -1
  %157 = lshr i16 %150, 8
  %158 = zext i8 %156 to i16
  %159 = icmp eq i16 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %147
  %161 = and i16 %150, 255
  %162 = add nsw i16 %161, -11
  %163 = icmp ult i16 %162, -3
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = zext i16 %161 to i32
  %166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %165) #7
  br label %170

167:                                              ; preds = %160
  %168 = trunc i16 %150 to i8
  %169 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18
  store i8 %168, ptr %169, align 4
  br label %173

170:                                              ; preds = %164, %147
  tail call void @kfree(ptr noundef nonnull %109) #6
  %171 = add nuw nsw i32 %102, 1
  %172 = icmp eq i32 %171, 3
  br i1 %172, label %173, label %101

173:                                              ; preds = %170, %167
  %174 = phi i1 [ true, %167 ], [ false, %170 ]
  %175 = load i16, ptr %97, align 4
  switch i16 %175, label %177 [
    i16 17201, label %176
    i16 -22105, label %176
  ]

176:                                              ; preds = %173, %173
  tail call void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr noundef %2, i1 noundef zeroext true) #6
  br label %177

177:                                              ; preds = %176, %173
  br i1 %174, label %194, label %178

178:                                              ; preds = %177
  %179 = load ptr, ptr %0, align 4
  %180 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %179, ptr noundef nonnull @.str, i32 noundef %182) #7
  %183 = load ptr, ptr @get_fallback_sprom, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18
  %187 = tail call i32 %183(ptr noundef %0, ptr noundef %186) #6
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %812, label %189

189:                                              ; preds = %185, %178
  %190 = phi i32 [ %187, %185 ], [ -2, %178 ]
  %191 = load ptr, ptr %0, align 4
  %192 = load i8, ptr %180, align 1
  %193 = zext i8 %192 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.1, i32 noundef %193, i32 noundef %190) #7
  br label %812

194:                                              ; preds = %177
  %195 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 2
  %196 = getelementptr i16, ptr %109, i32 70
  %197 = load i16, ptr %196, align 4
  %198 = tail call i16 @llvm.bswap.i16(i16 %197) #6
  store i16 %198, ptr %195, align 2
  %199 = getelementptr i16, ptr %109, i32 71
  %200 = load i16, ptr %199, align 2
  %201 = tail call i16 @llvm.bswap.i16(i16 %200) #6
  %202 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 2, i32 2
  store i16 %201, ptr %202, align 2
  %203 = getelementptr i16, ptr %109, i32 72
  %204 = load i16, ptr %203, align 16
  %205 = tail call i16 @llvm.bswap.i16(i16 %204) #6
  %206 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 2, i32 4
  store i16 %205, ptr %206, align 2
  %207 = getelementptr i16, ptr %109, i32 65
  %208 = load i16, ptr %207, align 2
  %209 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 13
  store i16 %208, ptr %209, align 2
  %210 = getelementptr i16, ptr %109, i32 2
  %211 = load i16, ptr %210, align 4
  %212 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 15
  store i16 %211, ptr %212, align 2
  %213 = getelementptr i16, ptr %109, i32 49
  %214 = load i16, ptr %213, align 2
  %215 = trunc i16 %214 to i8
  %216 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 48
  store i8 %215, ptr %216, align 2
  %217 = lshr i16 %214, 8
  %218 = trunc i16 %217 to i8
  %219 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 48, i32 1
  store i8 %218, ptr %219, align 1
  %220 = getelementptr i16, ptr %109, i32 50
  %221 = load i16, ptr %220, align 4
  %222 = trunc i16 %221 to i8
  %223 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 48, i32 2
  store i8 %222, ptr %223, align 2
  %224 = lshr i16 %221, 8
  %225 = trunc i16 %224 to i8
  %226 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 48, i32 3
  store i8 %225, ptr %226, align 1
  %227 = getelementptr i16, ptr %109, i32 53
  %228 = load i16, ptr %227, align 2
  %229 = trunc i16 %228 to i8
  %230 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 49
  store i8 %229, ptr %230, align 2
  %231 = lshr i16 %228, 8
  %232 = trunc i16 %231 to i8
  %233 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 49, i32 1
  store i8 %232, ptr %233, align 1
  %234 = getelementptr i16, ptr %109, i32 54
  %235 = load i16, ptr %234, align 4
  %236 = trunc i16 %235 to i8
  %237 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 49, i32 2
  store i8 %236, ptr %237, align 2
  %238 = lshr i16 %235, 8
  %239 = trunc i16 %238 to i8
  %240 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 49, i32 3
  store i8 %239, ptr %240, align 1
  %241 = getelementptr i16, ptr %109, i32 51
  %242 = load i16, ptr %241, align 2
  %243 = trunc i16 %242 to i8
  %244 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 50
  store i8 %243, ptr %244, align 2
  %245 = lshr i16 %242, 8
  %246 = trunc i16 %245 to i8
  %247 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 50, i32 1
  store i8 %246, ptr %247, align 1
  %248 = getelementptr i16, ptr %109, i32 52
  %249 = load i16, ptr %248, align 8
  %250 = trunc i16 %249 to i8
  %251 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 50, i32 2
  store i8 %250, ptr %251, align 2
  %252 = lshr i16 %249, 8
  %253 = trunc i16 %252 to i8
  %254 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 50, i32 3
  store i8 %253, ptr %254, align 1
  %255 = getelementptr i16, ptr %109, i32 55
  %256 = load i16, ptr %255, align 2
  %257 = trunc i16 %256 to i8
  %258 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 51
  store i8 %257, ptr %258, align 2
  %259 = lshr i16 %256, 8
  %260 = trunc i16 %259 to i8
  %261 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 51, i32 1
  store i8 %260, ptr %261, align 1
  %262 = getelementptr i16, ptr %109, i32 56
  %263 = load i16, ptr %262, align 16
  %264 = trunc i16 %263 to i8
  %265 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 51, i32 2
  store i8 %264, ptr %265, align 2
  %266 = lshr i16 %263, 8
  %267 = trunc i16 %266 to i8
  %268 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 51, i32 3
  store i8 %267, ptr %268, align 1
  %269 = getelementptr i16, ptr %109, i32 66
  %270 = load i16, ptr %269, align 4
  %271 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 70
  store i16 %270, ptr %271, align 4
  %272 = getelementptr i16, ptr %109, i32 67
  %273 = load i16, ptr %272, align 2
  %274 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 71
  store i16 %273, ptr %274, align 2
  %275 = getelementptr i16, ptr %109, i32 68
  %276 = load i16, ptr %275, align 8
  %277 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 72
  store i16 %276, ptr %277, align 4
  %278 = getelementptr i16, ptr %109, i32 69
  %279 = load i16, ptr %278, align 2
  %280 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 73
  store i16 %279, ptr %280, align 2
  %281 = getelementptr i16, ptr %109, i32 73
  %282 = load i16, ptr %281, align 2
  %283 = lshr i16 %282, 8
  %284 = trunc i16 %283 to i8
  %285 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 17
  store i8 %284, ptr %285, align 1
  %286 = trunc i16 %282 to i8
  %287 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 17, i32 1
  store i8 %286, ptr %287, align 1
  br label %288

288:                                              ; preds = %288, %194
  %289 = phi i32 [ 0, %194 ], [ %379, %288 ]
  %290 = getelementptr [4 x i16], ptr @bcma_sprom_extract_r8.pwr_info_offset, i32 0, i32 %289
  %291 = load i16, ptr %290, align 2
  %292 = zext i16 %291 to i32
  %293 = lshr i32 %292, 1
  %294 = getelementptr i16, ptr %109, i32 %293
  %295 = load i16, ptr %294, align 2
  %296 = lshr i16 %295, 8
  %297 = trunc i16 %296 to i8
  %298 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289
  store i8 %297, ptr %298, align 2
  %299 = trunc i16 %295 to i8
  %300 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 2
  store i8 %299, ptr %300, align 2
  %301 = add nuw nsw i32 %292, 2
  %302 = lshr i32 %301, 1
  %303 = getelementptr i16, ptr %109, i32 %302
  %304 = load i16, ptr %303, align 2
  %305 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 6
  store i16 %304, ptr %305, align 2
  %306 = add nuw nsw i32 %292, 4
  %307 = lshr i32 %306, 1
  %308 = getelementptr i16, ptr %109, i32 %307
  %309 = load i16, ptr %308, align 2
  %310 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 6, i32 1
  store i16 %309, ptr %310, align 2
  %311 = add nuw nsw i32 %292, 6
  %312 = lshr i32 %311, 1
  %313 = getelementptr i16, ptr %109, i32 %312
  %314 = load i16, ptr %313, align 2
  %315 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 6, i32 2
  store i16 %314, ptr %315, align 2
  %316 = add nuw nsw i32 %292, 8
  %317 = lshr i32 %316, 1
  %318 = getelementptr i16, ptr %109, i32 %317
  %319 = load i16, ptr %318, align 2
  %320 = lshr i16 %319, 8
  %321 = trunc i16 %320 to i8
  %322 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 1
  store i8 %321, ptr %322, align 1
  %323 = trunc i16 %319 to i8
  %324 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 4
  store i8 %323, ptr %324, align 2
  %325 = add nuw nsw i32 %292, 10
  %326 = lshr i32 %325, 1
  %327 = getelementptr i16, ptr %109, i32 %326
  %328 = load i16, ptr %327, align 2
  %329 = trunc i16 %328 to i8
  %330 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 5
  store i8 %329, ptr %330, align 1
  %331 = lshr i16 %328, 8
  %332 = trunc i16 %331 to i8
  %333 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 3
  store i8 %332, ptr %333, align 1
  %334 = add nuw nsw i32 %292, 18
  %335 = lshr i32 %334, 1
  %336 = getelementptr i16, ptr %109, i32 %335
  %337 = load i16, ptr %336, align 2
  %338 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 7
  store i16 %337, ptr %338, align 2
  %339 = add nuw nsw i32 %292, 20
  %340 = lshr i32 %339, 1
  %341 = getelementptr i16, ptr %109, i32 %340
  %342 = load i16, ptr %341, align 2
  %343 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 7, i32 1
  store i16 %342, ptr %343, align 2
  %344 = add nuw nsw i32 %292, 22
  %345 = lshr i32 %344, 1
  %346 = getelementptr i16, ptr %109, i32 %345
  %347 = load i16, ptr %346, align 2
  %348 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 7, i32 2
  store i16 %347, ptr %348, align 2
  %349 = add nuw nsw i32 %292, 12
  %350 = lshr i32 %349, 1
  %351 = getelementptr i16, ptr %109, i32 %350
  %352 = load i16, ptr %351, align 2
  %353 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 8
  store i16 %352, ptr %353, align 2
  %354 = add nuw nsw i32 %292, 14
  %355 = lshr i32 %354, 1
  %356 = getelementptr i16, ptr %109, i32 %355
  %357 = load i16, ptr %356, align 2
  %358 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 8, i32 1
  store i16 %357, ptr %358, align 2
  %359 = add nuw nsw i32 %292, 16
  %360 = lshr i32 %359, 1
  %361 = getelementptr i16, ptr %109, i32 %360
  %362 = load i16, ptr %361, align 2
  %363 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 8, i32 2
  store i16 %362, ptr %363, align 2
  %364 = add nuw nsw i32 %292, 24
  %365 = lshr i32 %364, 1
  %366 = getelementptr i16, ptr %109, i32 %365
  %367 = load i16, ptr %366, align 2
  %368 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 9
  store i16 %367, ptr %368, align 2
  %369 = add nuw nsw i32 %292, 26
  %370 = lshr i32 %369, 1
  %371 = getelementptr i16, ptr %109, i32 %370
  %372 = load i16, ptr %371, align 2
  %373 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 9, i32 1
  store i16 %372, ptr %373, align 2
  %374 = add nuw nsw i32 %292, 28
  %375 = lshr i32 %374, 1
  %376 = getelementptr i16, ptr %109, i32 %375
  %377 = load i16, ptr %376, align 2
  %378 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 74, i32 %289, i32 9, i32 2
  store i16 %377, ptr %378, align 2
  %379 = add nuw nsw i32 %289, 1
  %380 = icmp eq i32 %379, 4
  br i1 %380, label %381, label %288

381:                                              ; preds = %288
  %382 = getelementptr i16, ptr %109, i32 87
  %383 = load i16, ptr %382, align 2
  %384 = trunc i16 %383 to i8
  %385 = and i8 %384, 1
  %386 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76
  store i8 %385, ptr %386, align 4
  %387 = trunc i16 %383 to i8
  %388 = lshr i8 %387, 1
  %389 = and i8 %388, 3
  %390 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 0, i32 1
  store i8 %389, ptr %390, align 1
  %391 = load i16, ptr %382, align 2
  %392 = trunc i16 %391 to i8
  %393 = lshr i8 %392, 3
  %394 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 0, i32 2
  store i8 %393, ptr %394, align 2
  %395 = lshr i16 %391, 8
  %396 = trunc i16 %395 to i8
  %397 = and i8 %396, 7
  %398 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 0, i32 3
  store i8 %397, ptr %398, align 1
  %399 = load i16, ptr %382, align 2
  %400 = lshr i16 %399, 11
  %401 = trunc i16 %400 to i8
  %402 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 0, i32 4
  store i8 %401, ptr %402, align 4
  %403 = getelementptr i16, ptr %109, i32 88
  %404 = load i16, ptr %403, align 16
  %405 = trunc i16 %404 to i8
  %406 = and i8 %405, 1
  %407 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 1
  store i8 %406, ptr %407, align 1
  %408 = trunc i16 %404 to i8
  %409 = lshr i8 %408, 1
  %410 = and i8 %409, 3
  %411 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 1, i32 1
  store i8 %410, ptr %411, align 1
  %412 = load i16, ptr %403, align 16
  %413 = trunc i16 %412 to i8
  %414 = lshr i8 %413, 3
  %415 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 1, i32 2
  store i8 %414, ptr %415, align 1
  %416 = lshr i16 %412, 8
  %417 = trunc i16 %416 to i8
  %418 = and i8 %417, 7
  %419 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 1, i32 3
  store i8 %418, ptr %419, align 1
  %420 = load i16, ptr %403, align 16
  %421 = lshr i16 %420, 11
  %422 = trunc i16 %421 to i8
  %423 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 76, i32 1, i32 4
  store i8 %422, ptr %423, align 1
  %424 = getelementptr i16, ptr %109, i32 78
  %425 = load i16, ptr %424, align 4
  %426 = lshr i16 %425, 8
  %427 = trunc i16 %426 to i8
  %428 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 20
  store i8 %427, ptr %428, align 1
  %429 = trunc i16 %425 to i8
  %430 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 21
  store i8 %429, ptr %430, align 2
  %431 = getelementptr i16, ptr %109, i32 96
  %432 = load i16, ptr %431, align 64
  %433 = trunc i16 %432 to i8
  %434 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 38
  store i8 %433, ptr %434, align 4
  %435 = lshr i16 %432, 8
  %436 = trunc i16 %435 to i8
  %437 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 43
  store i8 %436, ptr %437, align 1
  %438 = getelementptr i16, ptr %109, i32 100
  %439 = load i16, ptr %438, align 8
  %440 = trunc i16 %439 to i8
  %441 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 40
  store i8 %440, ptr %441, align 2
  %442 = lshr i16 %439, 8
  %443 = trunc i16 %442 to i8
  %444 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 42
  store i8 %443, ptr %444, align 4
  %445 = getelementptr i16, ptr %109, i32 101
  %446 = load i16, ptr %445, align 2
  %447 = trunc i16 %446 to i8
  %448 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 41
  store i8 %447, ptr %448, align 1
  %449 = lshr i16 %446, 8
  %450 = trunc i16 %449 to i8
  %451 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 39
  store i8 %450, ptr %451, align 1
  %452 = getelementptr i16, ptr %109, i32 75
  %453 = load i16, ptr %452, align 2
  %454 = trunc i16 %453 to i8
  %455 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 34
  store i8 %454, ptr %455, align 4
  %456 = lshr i16 %453, 8
  %457 = trunc i16 %456 to i8
  %458 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 35
  store i8 %457, ptr %458, align 1
  %459 = getelementptr i16, ptr %109, i32 76
  %460 = load i16, ptr %459, align 8
  %461 = trunc i16 %460 to i8
  %462 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 36
  store i8 %461, ptr %462, align 2
  %463 = lshr i16 %460, 8
  %464 = trunc i16 %463 to i8
  %465 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 37
  store i8 %464, ptr %465, align 1
  %466 = getelementptr i16, ptr %109, i32 84
  %467 = load i16, ptr %466, align 8
  %468 = trunc i16 %467 to i8
  %469 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 44
  store i8 %468, ptr %469, align 2
  %470 = lshr i16 %467, 8
  %471 = trunc i16 %470 to i8
  %472 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 46
  store i8 %471, ptr %472, align 4
  %473 = getelementptr i16, ptr %109, i32 85
  %474 = load i16, ptr %473, align 2
  %475 = trunc i16 %474 to i8
  %476 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 45
  store i8 %475, ptr %476, align 1
  %477 = lshr i16 %474, 8
  %478 = trunc i16 %477 to i8
  %479 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 47
  store i8 %478, ptr %479, align 1
  %480 = getelementptr i16, ptr %109, i32 86
  %481 = load i16, ptr %480, align 4
  %482 = trunc i16 %481 to i8
  %483 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 52
  store i8 %482, ptr %483, align 2
  %484 = lshr i16 %481, 8
  %485 = trunc i16 %484 to i8
  %486 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 53
  store i8 %485, ptr %486, align 1
  %487 = getelementptr i16, ptr %109, i32 82
  %488 = load i16, ptr %487, align 4
  %489 = trunc i16 %488 to i8
  %490 = and i8 %489, 15
  %491 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 56
  store i8 %490, ptr %491, align 2
  %492 = trunc i16 %488 to i8
  %493 = lshr i8 %492, 4
  %494 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 55
  store i8 %493, ptr %494, align 1
  %495 = load i16, ptr %487, align 4
  %496 = lshr i16 %495, 8
  %497 = trunc i16 %496 to i8
  %498 = and i8 %497, 7
  %499 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 54
  store i8 %498, ptr %499, align 4
  %500 = lshr i16 %495, 11
  %501 = trunc i16 %500 to i8
  %502 = and i8 %501, 3
  %503 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 57
  store i8 %502, ptr %503, align 1
  %504 = getelementptr i16, ptr %109, i32 83
  %505 = load i16, ptr %504, align 2
  %506 = trunc i16 %505 to i8
  %507 = and i8 %506, 15
  %508 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 60
  store i8 %507, ptr %508, align 2
  %509 = trunc i16 %505 to i8
  %510 = lshr i8 %509, 4
  %511 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 59
  store i8 %510, ptr %511, align 1
  %512 = load i16, ptr %504, align 2
  %513 = lshr i16 %512, 8
  %514 = trunc i16 %513 to i8
  %515 = and i8 %514, 7
  %516 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 58
  store i8 %515, ptr %516, align 4
  %517 = lshr i16 %512, 11
  %518 = trunc i16 %517 to i8
  %519 = and i8 %518, 3
  %520 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 61
  store i8 %519, ptr %520, align 1
  %521 = getelementptr i16, ptr %109, i32 97
  %522 = load i16, ptr %521, align 2
  %523 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 22
  store i16 %522, ptr %523, align 4
  %524 = getelementptr i16, ptr %109, i32 98
  %525 = load i16, ptr %524, align 4
  %526 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 23
  store i16 %525, ptr %526, align 2
  %527 = getelementptr i16, ptr %109, i32 99
  %528 = load i16, ptr %527, align 2
  %529 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 24
  store i16 %528, ptr %529, align 4
  %530 = getelementptr i16, ptr %109, i32 102
  %531 = load i16, ptr %530, align 4
  %532 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 25
  store i16 %531, ptr %532, align 2
  %533 = getelementptr i16, ptr %109, i32 103
  %534 = load i16, ptr %533, align 2
  %535 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 26
  store i16 %534, ptr %535, align 4
  %536 = getelementptr i16, ptr %109, i32 104
  %537 = load i16, ptr %536, align 16
  %538 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 27
  store i16 %537, ptr %538, align 2
  %539 = getelementptr i16, ptr %109, i32 105
  %540 = load i16, ptr %539, align 2
  %541 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 28
  store i16 %540, ptr %541, align 4
  %542 = getelementptr i16, ptr %109, i32 106
  %543 = load i16, ptr %542, align 4
  %544 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 29
  store i16 %543, ptr %544, align 2
  %545 = getelementptr i16, ptr %109, i32 107
  %546 = load i16, ptr %545, align 2
  %547 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 30
  store i16 %546, ptr %547, align 4
  %548 = getelementptr i16, ptr %109, i32 108
  %549 = load i16, ptr %548, align 8
  %550 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 31
  store i16 %549, ptr %550, align 2
  %551 = getelementptr i16, ptr %109, i32 109
  %552 = load i16, ptr %551, align 2
  %553 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 32
  store i16 %552, ptr %553, align 4
  %554 = getelementptr i16, ptr %109, i32 110
  %555 = load i16, ptr %554, align 4
  %556 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 33
  store i16 %555, ptr %556, align 2
  %557 = getelementptr i16, ptr %109, i32 160
  %558 = load i16, ptr %557, align 64
  %559 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 62
  store i16 %558, ptr %559, align 4
  %560 = getelementptr i16, ptr %109, i32 162
  %561 = load i16, ptr %560, align 4
  %562 = zext i16 %561 to i32
  %563 = shl nuw i32 %562, 16
  %564 = getelementptr i16, ptr %109, i32 161
  %565 = load i16, ptr %564, align 2
  %566 = zext i16 %565 to i32
  %567 = or i32 %563, %566
  %568 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 63
  store i32 %567, ptr %568, align 4
  %569 = getelementptr i16, ptr %109, i32 166
  %570 = load i16, ptr %569, align 4
  %571 = zext i16 %570 to i32
  %572 = shl nuw i32 %571, 16
  %573 = getelementptr i16, ptr %109, i32 165
  %574 = load i16, ptr %573, align 2
  %575 = zext i16 %574 to i32
  %576 = or i32 %572, %575
  %577 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 64
  store i32 %576, ptr %577, align 4
  %578 = getelementptr i16, ptr %109, i32 164
  %579 = load i16, ptr %578, align 8
  %580 = zext i16 %579 to i32
  %581 = shl nuw i32 %580, 16
  %582 = getelementptr i16, ptr %109, i32 163
  %583 = load i16, ptr %582, align 2
  %584 = zext i16 %583 to i32
  %585 = or i32 %581, %584
  %586 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 65
  store i32 %585, ptr %586, align 4
  %587 = getelementptr i16, ptr %109, i32 168
  %588 = load i16, ptr %587, align 16
  %589 = zext i16 %588 to i32
  %590 = shl nuw i32 %589, 16
  %591 = getelementptr i16, ptr %109, i32 167
  %592 = load i16, ptr %591, align 2
  %593 = zext i16 %592 to i32
  %594 = or i32 %590, %593
  %595 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 66
  store i32 %594, ptr %595, align 4
  %596 = getelementptr i16, ptr %109, i32 79
  %597 = load i16, ptr %596, align 2
  %598 = and i16 %597, 255
  %599 = icmp eq i16 %598, 255
  %600 = lshr i16 %598, 6
  %601 = shl nuw nsw i16 %598, 2
  %602 = or i16 %600, %601
  %603 = trunc i16 %602 to i8
  %604 = select i1 %599, i8 8, i8 %603
  %605 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 75
  store i8 %604, ptr %605, align 4
  %606 = load i16, ptr %596, align 2
  %607 = lshr i16 %606, 8
  %608 = icmp eq i16 %607, 255
  %609 = tail call i16 @llvm.fshl.i16(i16 %607, i16 %606, i16 2) #6
  %610 = trunc i16 %609 to i8
  %611 = select i1 %608, i8 8, i8 %610
  %612 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 75, i32 1
  store i8 %611, ptr %612, align 1
  %613 = getelementptr i16, ptr %109, i32 80
  %614 = load i16, ptr %613, align 32
  %615 = and i16 %614, 255
  %616 = icmp eq i16 %615, 255
  %617 = lshr i16 %615, 6
  %618 = shl nuw nsw i16 %615, 2
  %619 = or i16 %617, %618
  %620 = trunc i16 %619 to i8
  %621 = select i1 %616, i8 8, i8 %620
  %622 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 75, i32 2
  store i8 %621, ptr %622, align 2
  %623 = load i16, ptr %613, align 32
  %624 = lshr i16 %623, 8
  %625 = icmp eq i16 %624, 255
  %626 = tail call i16 @llvm.fshl.i16(i16 %624, i16 %623, i16 2) #6
  %627 = trunc i16 %626 to i8
  %628 = select i1 %625, i8 8, i8 %627
  %629 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 75, i32 3
  store i8 %628, ptr %629, align 1
  %630 = getelementptr i16, ptr %109, i32 77
  %631 = load i16, ptr %630, align 2
  %632 = lshr i16 %631, 8
  %633 = trunc i16 %632 to i8
  %634 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 18
  store i8 %633, ptr %634, align 1
  %635 = trunc i16 %631 to i8
  %636 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 19
  store i8 %635, ptr %636, align 4
  %637 = getelementptr i16, ptr %109, i32 81
  %638 = load i16, ptr %637, align 2
  %639 = trunc i16 %638 to i8
  %640 = and i8 %639, 15
  %641 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 93
  store i8 %640, ptr %641, align 2
  %642 = trunc i16 %638 to i8
  %643 = lshr i8 %642, 4
  %644 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 94
  store i8 %643, ptr %644, align 1
  %645 = load i16, ptr %637, align 2
  %646 = lshr i16 %645, 8
  %647 = trunc i16 %646 to i8
  %648 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 95
  store i8 %647, ptr %648, align 4
  %649 = load i16, ptr %564, align 2
  %650 = trunc i16 %649 to i8
  %651 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 81
  store i8 %650, ptr %651, align 2
  %652 = getelementptr i16, ptr %109, i32 169
  %653 = load i16, ptr %652, align 2
  %654 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77
  store i16 %653, ptr %654, align 2
  %655 = getelementptr i16, ptr %109, i32 170
  %656 = load i16, ptr %655, align 4
  %657 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 1
  store i16 %656, ptr %657, align 2
  %658 = getelementptr i16, ptr %109, i32 171
  %659 = load i16, ptr %658, align 2
  %660 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 2
  store i16 %659, ptr %660, align 2
  %661 = getelementptr i16, ptr %109, i32 172
  %662 = load i16, ptr %661, align 8
  %663 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 3
  store i16 %662, ptr %663, align 2
  %664 = getelementptr i16, ptr %109, i32 173
  %665 = load i16, ptr %664, align 2
  %666 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 4
  store i16 %665, ptr %666, align 2
  %667 = getelementptr i16, ptr %109, i32 174
  %668 = load i16, ptr %667, align 4
  %669 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 5
  store i16 %668, ptr %669, align 2
  %670 = getelementptr i16, ptr %109, i32 175
  %671 = load i16, ptr %670, align 2
  %672 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 6
  store i16 %671, ptr %672, align 2
  %673 = getelementptr i16, ptr %109, i32 176
  %674 = load i16, ptr %673, align 32
  %675 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 77, i32 7
  store i16 %674, ptr %675, align 2
  %676 = getelementptr i16, ptr %109, i32 177
  %677 = load i16, ptr %676, align 2
  %678 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78
  store i16 %677, ptr %678, align 2
  %679 = getelementptr i16, ptr %109, i32 178
  %680 = load i16, ptr %679, align 4
  %681 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 1
  store i16 %680, ptr %681, align 2
  %682 = getelementptr i16, ptr %109, i32 179
  %683 = load i16, ptr %682, align 2
  %684 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 2
  store i16 %683, ptr %684, align 2
  %685 = getelementptr i16, ptr %109, i32 180
  %686 = load i16, ptr %685, align 8
  %687 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 3
  store i16 %686, ptr %687, align 2
  %688 = getelementptr i16, ptr %109, i32 181
  %689 = load i16, ptr %688, align 2
  %690 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 4
  store i16 %689, ptr %690, align 2
  %691 = getelementptr i16, ptr %109, i32 182
  %692 = load i16, ptr %691, align 4
  %693 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 5
  store i16 %692, ptr %693, align 2
  %694 = getelementptr i16, ptr %109, i32 183
  %695 = load i16, ptr %694, align 2
  %696 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 6
  store i16 %695, ptr %696, align 2
  %697 = getelementptr i16, ptr %109, i32 184
  %698 = load i16, ptr %697, align 16
  %699 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 78, i32 7
  store i16 %698, ptr %699, align 2
  %700 = getelementptr i16, ptr %109, i32 185
  %701 = load i16, ptr %700, align 2
  %702 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79
  store i16 %701, ptr %702, align 2
  %703 = getelementptr i16, ptr %109, i32 186
  %704 = load i16, ptr %703, align 4
  %705 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 1
  store i16 %704, ptr %705, align 2
  %706 = getelementptr i16, ptr %109, i32 187
  %707 = load i16, ptr %706, align 2
  %708 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 2
  store i16 %707, ptr %708, align 2
  %709 = getelementptr i16, ptr %109, i32 188
  %710 = load i16, ptr %709, align 8
  %711 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 3
  store i16 %710, ptr %711, align 2
  %712 = getelementptr i16, ptr %109, i32 189
  %713 = load i16, ptr %712, align 2
  %714 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 4
  store i16 %713, ptr %714, align 2
  %715 = getelementptr i16, ptr %109, i32 190
  %716 = load i16, ptr %715, align 4
  %717 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 5
  store i16 %716, ptr %717, align 2
  %718 = getelementptr i16, ptr %109, i32 191
  %719 = load i16, ptr %718, align 2
  %720 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 6
  store i16 %719, ptr %720, align 2
  %721 = getelementptr i16, ptr %109, i32 192
  %722 = load i16, ptr %721, align 64
  %723 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 79, i32 7
  store i16 %722, ptr %723, align 2
  %724 = getelementptr i16, ptr %109, i32 193
  %725 = load i16, ptr %724, align 2
  %726 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80
  store i16 %725, ptr %726, align 2
  %727 = getelementptr i16, ptr %109, i32 194
  %728 = load i16, ptr %727, align 4
  %729 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 1
  store i16 %728, ptr %729, align 2
  %730 = getelementptr i16, ptr %109, i32 195
  %731 = load i16, ptr %730, align 2
  %732 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 2
  store i16 %731, ptr %732, align 2
  %733 = getelementptr i16, ptr %109, i32 196
  %734 = load i16, ptr %733, align 8
  %735 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 3
  store i16 %734, ptr %735, align 2
  %736 = getelementptr i16, ptr %109, i32 197
  %737 = load i16, ptr %736, align 2
  %738 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 4
  store i16 %737, ptr %738, align 2
  %739 = getelementptr i16, ptr %109, i32 198
  %740 = load i16, ptr %739, align 4
  %741 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 5
  store i16 %740, ptr %741, align 2
  %742 = getelementptr i16, ptr %109, i32 199
  %743 = load i16, ptr %742, align 2
  %744 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 6
  store i16 %743, ptr %744, align 2
  %745 = getelementptr i16, ptr %109, i32 200
  %746 = load i16, ptr %745, align 16
  %747 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 80, i32 7
  store i16 %746, ptr %747, align 2
  %748 = getelementptr i16, ptr %109, i32 90
  %749 = load i16, ptr %748, align 4
  %750 = and i16 %749, 511
  %751 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 102
  store i16 %750, ptr %751, align 4
  %752 = lshr i16 %749, 9
  %753 = trunc i16 %752 to i8
  %754 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 103
  store i8 %753, ptr %754, align 2
  %755 = getelementptr i16, ptr %109, i32 91
  %756 = load i16, ptr %755, align 2
  %757 = trunc i16 %756 to i8
  %758 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 104
  store i8 %757, ptr %758, align 1
  %759 = lshr i16 %756, 10
  %760 = trunc i16 %759 to i8
  %761 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 105
  store i8 %760, ptr %761, align 4
  %762 = load i16, ptr %755, align 2
  %763 = lshr i16 %762, 8
  %764 = trunc i16 %763 to i8
  %765 = and i8 %764, 3
  %766 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 106
  store i8 %765, ptr %766, align 1
  %767 = getelementptr i16, ptr %109, i32 92
  %768 = load i16, ptr %767, align 8
  %769 = trunc i16 %768 to i8
  %770 = and i8 %769, 15
  %771 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 107
  store i8 %770, ptr %771, align 2
  %772 = trunc i16 %768 to i8
  %773 = lshr i8 %772, 4
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 108
  store i8 %774, ptr %775, align 1
  %776 = load i16, ptr %767, align 8
  %777 = trunc i16 %776 to i8
  %778 = lshr i8 %777, 5
  %779 = and i8 %778, 1
  %780 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 109
  store i8 %779, ptr %780, align 4
  %781 = getelementptr i16, ptr %109, i32 203
  %782 = load i16, ptr %781, align 2
  %783 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 98
  store i16 %782, ptr %783, align 2
  %784 = getelementptr i16, ptr %109, i32 201
  %785 = load i16, ptr %784, align 2
  %786 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 96
  store i16 %785, ptr %786, align 2
  %787 = getelementptr i16, ptr %109, i32 202
  %788 = load i16, ptr %787, align 4
  %789 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 97
  store i16 %788, ptr %789, align 4
  %790 = getelementptr i16, ptr %109, i32 204
  %791 = load i16, ptr %790, align 8
  %792 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 99
  store i16 %791, ptr %792, align 4
  %793 = getelementptr i16, ptr %109, i32 89
  %794 = load i16, ptr %793, align 2
  %795 = lshr i16 %794, 8
  %796 = trunc i16 %795 to i8
  %797 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 100
  store i8 %796, ptr %797, align 2
  %798 = trunc i16 %794 to i8
  %799 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 101
  store i8 %798, ptr %799, align 1
  %800 = getelementptr i16, ptr %109, i32 94
  %801 = load i16, ptr %800, align 4
  %802 = trunc i16 %801 to i8
  %803 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 112
  store i8 %802, ptr %803, align 1
  %804 = lshr i16 %801, 8
  %805 = trunc i16 %804 to i8
  %806 = and i8 %805, 15
  %807 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 113
  store i8 %806, ptr %807, align 4
  %808 = load i16, ptr %800, align 4
  %809 = lshr i16 %808, 12
  %810 = trunc i16 %809 to i8
  %811 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 18, i32 114
  store i8 %810, ptr %811, align 1
  tail call void @kfree(ptr noundef %109) #6
  br label %812

812:                                              ; preds = %381, %189, %185, %107, %101, %89, %85, %1
  %813 = phi i32 [ -95, %1 ], [ 0, %381 ], [ %190, %189 ], [ 0, %185 ], [ 0, %85 ], [ %90, %89 ], [ -12, %107 ], [ -12, %101 ]
  ret i32 %813
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
