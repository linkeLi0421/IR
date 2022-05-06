; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2820r_t2.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_t2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reg_val_mask = type { i32, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cxd2820r_priv = type { [2 x ptr], [2 x ptr], ptr, %struct.dvb_frontend, i8, i8, i8, i8, i64, i64, i8, [3 x i8], %struct.gpio_chip, i32, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__const.cxd2820r_set_frontend_t2.bw_params1 = private unnamed_addr constant [4 x [5 x i8]] [[5 x i8] c"\1C\B3333", [5 x i8] c"\17\EA\AA\AA\AA", [5 x i8] c"\14\80\00\00\00", [5 x i8] c"\11\F0\00\00\00"], align 1
@cxd2820r_sleep_t2.tab = internal constant [6 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i8 31, i8 -1 }, %struct.reg_val_mask { i32 133, i8 0, i8 -1 }, %struct.reg_val_mask { i32 136, i8 1, i8 -1 }, %struct.reg_val_mask { i32 8297, i8 0, i8 -1 }, %struct.reg_val_mask { i32 129, i8 0, i8 -1 }, %struct.reg_val_mask { i32 128, i8 0, i8 -1 }], align 4
@switch.table.cxd2820r_get_frontend_t2 = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 3, i32 4, i32 5, i32 6], align 4
@switch.table.cxd2820r_get_frontend_t2.1 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 4
@switch.table.cxd2820r_get_frontend_t2.2 = private unnamed_addr constant [6 x i32] [i32 1, i32 10, i32 2, i32 3, i32 4, i32 5], align 4
@switch.table.cxd2820r_get_frontend_t2.3 = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 5], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_set_frontend_t2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = alloca [4 x [5 x i8]], align 1
  %5 = alloca [30 x %struct.reg_val_mask], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) @__const.cxd2820r_set_frontend_t2.bw_params1, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #6
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(240) %8, i8 0, i32 236, i1 false), !annotation !8
  store i32 128, ptr %5, align 4
  %9 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 0, i32 1
  store i8 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 0, i32 2
  store i8 -1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 1
  store i32 129, ptr %11, align 4
  %12 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 1, i32 1
  store i8 32, ptr %12, align 4
  %13 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 1, i32 2
  store i8 -1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 2
  store i32 133, ptr %14, align 4
  %15 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 2, i32 1
  store i8 7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 2, i32 2
  store i8 -1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 3
  store i32 136, ptr %17, align 4
  %18 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 3, i32 1
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 3, i32 2
  store i8 -1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 4
  store i32 8297, ptr %20, align 4
  %21 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 4, i32 1
  store i8 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 4, i32 2
  store i8 -1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 5
  store i32 8319, ptr %23, align 4
  %24 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 5, i32 1
  store i8 42, ptr %24, align 4
  %25 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 5, i32 2
  store i8 -1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 6
  store i32 8322, ptr %26, align 4
  %27 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 6, i32 1
  store i8 10, ptr %27, align 4
  %28 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 6, i32 2
  store i8 -1, ptr %28, align 1
  %29 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 7
  store i32 8323, ptr %29, align 4
  %30 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 7, i32 1
  store i8 10, ptr %30, align 4
  %31 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 7, i32 2
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 8
  store i32 8395, ptr %32, align 4
  %33 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 8, i32 1
  %34 = getelementptr inbounds %struct.cxd2820r_priv, ptr %7, i32 0, i32 6
  %35 = load i8, ptr %34, align 2, !range !9
  %36 = shl nuw nsw i8 %35, 6
  store i8 %36, ptr %33, align 4
  %37 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 8, i32 2
  store i8 64, ptr %37, align 1
  %38 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 9
  store i32 8304, ptr %38, align 4
  %39 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 9, i32 1
  %40 = getelementptr inbounds %struct.cxd2820r_priv, ptr %7, i32 0, i32 4
  %41 = load i8, ptr %40, align 4
  store i8 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 9, i32 2
  store i8 -1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 10
  store i32 8305, ptr %43, align 4
  %44 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 10, i32 1
  %45 = getelementptr inbounds %struct.cxd2820r_priv, ptr %7, i32 0, i32 5
  %46 = load i8, ptr %45, align 1, !range !9
  %47 = shl nuw nsw i8 %46, 6
  %48 = xor i8 %47, 64
  store i8 %48, ptr %44, align 4
  %49 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 10, i32 2
  store i8 64, ptr %49, align 1
  %50 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 11
  store i32 8373, ptr %50, align 4
  %51 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 11, i32 1
  %52 = getelementptr inbounds %struct.cxd2820r_priv, ptr %7, i32 0, i32 7
  %53 = load i8, ptr %52, align 1, !range !9
  %54 = shl nuw nsw i8 %53, 4
  store i8 %54, ptr %51, align 4
  %55 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 11, i32 2
  store i8 16, ptr %55, align 1
  %56 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 12
  store i32 9575, ptr %56, align 4
  %57 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 12, i32 1
  store i8 7, ptr %57, align 4
  %58 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 12, i32 2
  store i8 15, ptr %58, align 1
  %59 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 13
  store i32 9577, ptr %59, align 4
  %60 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 13, i32 1
  store i8 3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 13, i32 2
  store i8 3, ptr %61, align 1
  %62 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 14
  store i32 9621, ptr %62, align 4
  %63 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 14, i32 1
  store i8 26, ptr %63, align 4
  %64 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 14, i32 2
  store i8 -1, ptr %64, align 1
  %65 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 15
  store i32 9622, ptr %65, align 4
  %66 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 15, i32 1
  store i8 80, ptr %66, align 4
  %67 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 15, i32 2
  store i8 -1, ptr %67, align 1
  %68 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 16
  store i32 10892, ptr %68, align 4
  %69 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 16, i32 2
  store i8 -1, ptr %69, align 1
  %70 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 17
  store i32 10893, ptr %70, align 4
  %71 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 17, i32 1
  store i8 52, ptr %71, align 4
  %72 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 17, i32 2
  store i8 -1, ptr %72, align 1
  %73 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 18
  store i32 10821, ptr %73, align 4
  %74 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 18, i32 1
  store i8 6, ptr %74, align 4
  %75 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 18, i32 2
  store i8 7, ptr %75, align 1
  %76 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 19
  store i32 16144, ptr %76, align 4
  %77 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 19, i32 1
  store i8 13, ptr %77, align 4
  %78 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 19, i32 2
  store i8 -1, ptr %78, align 1
  %79 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 20
  store i32 16145, ptr %79, align 4
  %80 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 20, i32 1
  store i8 2, ptr %80, align 4
  %81 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 20, i32 2
  store i8 -1, ptr %81, align 1
  %82 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 21
  store i32 16146, ptr %82, align 4
  %83 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 21, i32 1
  store i8 1, ptr %83, align 4
  %84 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 21, i32 2
  store i8 -1, ptr %84, align 1
  %85 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 22
  store i32 16163, ptr %85, align 4
  %86 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 22, i32 1
  store i8 44, ptr %86, align 4
  %87 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 22, i32 2
  store i8 -1, ptr %87, align 1
  %88 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 23
  store i32 16209, ptr %88, align 4
  %89 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 23, i32 1
  store i8 19, ptr %89, align 4
  %90 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 23, i32 2
  store i8 -1, ptr %90, align 1
  %91 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 24
  store i32 16210, ptr %91, align 4
  %92 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 24, i32 1
  store i8 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 24, i32 2
  store i8 -1, ptr %93, align 1
  %94 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 25
  store i32 16211, ptr %94, align 4
  %95 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 25, i32 2
  store i8 -1, ptr %95, align 1
  %96 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 26
  store i32 10214, ptr %96, align 4
  %97 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 26, i32 1
  store i8 20, ptr %97, align 4
  %98 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 26, i32 2
  store i8 -1, ptr %98, align 1
  %99 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 27
  store i32 10118, ptr %99, align 4
  %100 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 27, i32 1
  store i8 2, ptr %100, align 4
  %101 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 27, i32 2
  store i8 7, ptr %101, align 1
  %102 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 28
  store i32 10119, ptr %102, align 4
  %103 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 28, i32 1
  store i8 64, ptr %103, align 4
  %104 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 28, i32 2
  store i8 -32, ptr %104, align 1
  %105 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 29
  store i32 10223, ptr %105, align 4
  %106 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 29, i32 1
  store i8 16, ptr %106, align 4
  %107 = getelementptr inbounds %struct.reg_val_mask, ptr %5, i32 29, i32 2
  store i8 24, ptr %107, align 1
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %109 = load i32, ptr %108, align 4
  switch i32 %109, label %188 [
    i32 5000000, label %113
    i32 6000000, label %110
    i32 7000000, label %111
    i32 8000000, label %112
  ]

110:                                              ; preds = %1
  br label %113

111:                                              ; preds = %1
  br label %113

112:                                              ; preds = %1
  br label %113

113:                                              ; preds = %112, %111, %110, %1
  %114 = phi i32 [ 3, %112 ], [ 2, %111 ], [ 1, %110 ], [ 0, %1 ]
  %115 = phi i32 [ 0, %112 ], [ 64, %111 ], [ 128, %110 ], [ 192, %1 ]
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = tail call i32 %117(ptr noundef %0) #6
  br label %121

121:                                              ; preds = %119, %113
  %122 = getelementptr inbounds %struct.cxd2820r_priv, ptr %7, i32 0, i32 13
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 16
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %7, ptr noundef nonnull %5, i32 noundef 30) #6
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %186

128:                                              ; preds = %125, %121
  store i32 16, ptr %122, align 4
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %186, label %132

132:                                              ; preds = %128
  %133 = call i32 %130(ptr noundef %0, ptr noundef nonnull %2) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %186

135:                                              ; preds = %132
  %136 = load i32, ptr %2, align 4
  %137 = zext i32 %136 to i64
  %138 = shl nuw nsw i64 %137, 24
  %139 = add nuw nsw i64 %138, 20500000
  %140 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 1887103718422835785, i64 %139) #7, !srcloc !10
  %141 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1887103718422835785, i64 %139, i64 %140) #7, !srcloc !11
  %142 = lshr i64 %141, 22
  %143 = lshr i64 %141, 38
  %144 = trunc i64 %143 to i8
  store i8 %144, ptr %3, align 1
  %145 = lshr i64 %141, 30
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 %146, ptr %147, align 1
  %148 = trunc i64 %142 to i8
  %149 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 %148, ptr %149, align 1
  %150 = getelementptr inbounds %struct.cxd2820r_priv, ptr %7, i32 0, i32 1
  %151 = load ptr, ptr %150, align 8
  %152 = call i32 @regmap_bulk_write(ptr noundef %151, i32 noundef 8374, ptr noundef nonnull %3, i32 noundef 3) #6
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %186

154:                                              ; preds = %135
  %155 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %156 = load i32, ptr %155, align 4
  %157 = icmp ugt i32 %156, 255
  %158 = load ptr, ptr %150, align 8
  br i1 %157, label %159, label %162

159:                                              ; preds = %154
  %160 = call i32 @regmap_write(ptr noundef %158, i32 noundef 9133, i32 noundef 0) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %169, label %186

162:                                              ; preds = %154
  %163 = call i32 @regmap_write(ptr noundef %158, i32 noundef 9135, i32 noundef %156) #6
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %162
  %166 = load ptr, ptr %150, align 8
  %167 = call i32 @regmap_write(ptr noundef %166, i32 noundef 9133, i32 noundef 1) #6
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %165, %159
  %170 = load ptr, ptr %150, align 8
  %171 = getelementptr [4 x [5 x i8]], ptr %4, i32 0, i32 %114
  %172 = call i32 @regmap_bulk_write(ptr noundef %170, i32 noundef 8351, ptr noundef %171, i32 noundef 5) #6
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = load ptr, ptr %150, align 8
  %176 = call i32 @regmap_update_bits_base(ptr noundef %175, i32 noundef 8407, i32 noundef 192, i32 noundef %115, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load ptr, ptr %150, align 8
  %180 = call i32 @regmap_write(ptr noundef %179, i32 noundef 255, i32 noundef 8) #6
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load ptr, ptr %150, align 8
  %184 = call i32 @regmap_write(ptr noundef %183, i32 noundef 254, i32 noundef 1) #6
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182, %178, %174, %169, %165, %162, %159, %135, %132, %128, %125
  %187 = phi i32 [ %126, %125 ], [ %133, %132 ], [ %152, %135 ], [ %160, %159 ], [ %172, %169 ], [ %176, %174 ], [ %180, %178 ], [ %184, %182 ], [ %163, %162 ], [ %167, %165 ], [ -22, %128 ]
  br label %188

188:                                              ; preds = %186, %182, %1
  %189 = phi i32 [ %187, %186 ], [ -22, %1 ], [ 0, %182 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %189
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_get_frontend_t2(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 8284, ptr noundef nonnull %4, i32 noundef 2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %2
  %12 = load i8, ptr %4, align 2
  %13 = and i8 %12, 7
  %14 = icmp ult i8 %13, 6
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds [6 x i32], ptr @switch.table.cxd2820r_get_frontend_t2, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = lshr i8 %22, 4
  %24 = and i8 %23, 7
  %25 = icmp eq i8 %24, 7
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = zext i8 %24 to i32
  %28 = getelementptr inbounds [7 x i32], ptr @switch.table.cxd2820r_get_frontend_t2.1, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load ptr, ptr %7, align 8
  %33 = call i32 @regmap_bulk_read(ptr noundef %32, i32 noundef 8795, ptr noundef nonnull %4, i32 noundef 2) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i8, ptr %4, align 2
  %37 = and i8 %36, 7
  %38 = icmp ult i8 %37, 6
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = zext i8 %37 to i32
  %41 = getelementptr inbounds [6 x i32], ptr @switch.table.cxd2820r_get_frontend_t2.2, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i8, ptr %21, align 1
  %46 = and i8 %45, 7
  %47 = icmp ult i8 %46, 4
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = zext i8 %46 to i32
  %50 = getelementptr inbounds [4 x i32], ptr @switch.table.cxd2820r_get_frontend_t2.3, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load ptr, ptr %7, align 8
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 8373, ptr noundef nonnull %3) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, ptr %3, align 4
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  %60 = lshr i32 %58, 4
  %61 = and i32 %60, 1
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %53, %31, %2
  %63 = phi i32 [ %9, %2 ], [ %33, %31 ], [ %55, %53 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_read_status_t2(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 8208, ptr noundef nonnull %3, i32 noundef 1) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %123

10:                                               ; preds = %2
  %11 = load i8, ptr %3, align 4
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 39
  %14 = icmp eq i32 %13, 38
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = and i32 %12, 32
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %12, 7
  %19 = icmp eq i32 %18, 6
  %20 = or i1 %19, %17
  br i1 %20, label %21, label %43

21:                                               ; preds = %15, %10
  %22 = phi i32 [ 31, %10 ], [ 15, %15 ]
  store i32 %22, ptr %1, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 8230, ptr noundef nonnull %3, i32 noundef 2) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %123

26:                                               ; preds = %21
  %27 = load i8, ptr %3, align 4
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %29, 3840
  %34 = or i32 %33, %32
  %35 = xor i32 %34, 4095
  %36 = shl nuw nsw i32 %35, 4
  %37 = lshr i32 %35, 8
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %40, align 1
  %41 = zext i32 %38 to i64
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %41, ptr %42, align 1
  br label %46

43:                                               ; preds = %15
  store i32 0, ptr %1, align 4
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %26
  %47 = load i32, ptr %1, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %6, align 8
  %52 = call i32 @regmap_bulk_read(ptr noundef %51, i32 noundef 8232, ptr noundef nonnull %3, i32 noundef 2) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %123

54:                                               ; preds = %50
  %55 = load i8, ptr %3, align 4
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %57, 3840
  %62 = or i32 %61, %60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = call i32 @intlog10(i32 noundef %62) #6
  %66 = add i32 %65, -15151336
  %67 = zext i32 %66 to i64
  %68 = mul nuw nsw i64 %67, 10000
  %69 = lshr i64 %68, 24
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %64, %54
  %72 = phi i32 [ %70, %64 ], [ 0, %54 ]
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %73, align 1
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %74, align 1
  %75 = zext i32 %72 to i64
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %75, ptr %76, align 1
  br label %80

77:                                               ; preds = %46
  %78 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %78, align 1
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %79, align 1
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, ptr %1, align 4
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %6, align 8
  %86 = call i32 @regmap_bulk_read(ptr noundef %85, i32 noundef 8249, ptr noundef nonnull %3, i32 noundef 4) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = load i8, ptr %3, align 4
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %88
  %94 = shl nuw i32 %90, 24
  %95 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %100 = load i8, ptr %99, align 2
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %94, 251658240
  %107 = or i32 %98, %106
  %108 = or i32 %107, %102
  %109 = or i32 %108, %105
  br label %110

110:                                              ; preds = %93, %88
  %111 = phi i32 [ %109, %93 ], [ 0, %88 ]
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 9
  %114 = load i64, ptr %113, align 8
  %115 = add i64 %114, %112
  store i64 %115, ptr %113, align 8
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %116, align 4
  %117 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %117, align 1
  %118 = load i64, ptr %113, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %118, ptr %119, align 1
  br label %123

120:                                              ; preds = %80
  %121 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %122, align 1
  br label %123

123:                                              ; preds = %120, %110, %84, %50, %21, %2
  %124 = phi i32 [ 0, %120 ], [ %8, %2 ], [ %86, %84 ], [ 0, %110 ], [ %24, %21 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_sleep_t2(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %3, ptr noundef nonnull @cxd2820r_sleep_t2.tab, i32 noundef 6) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 13
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2820r_get_tune_settings_t2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  store i32 1500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 4
  %8 = shl i32 %7, 1
  %9 = or i32 %8, 1
  %10 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 1129518, i64 1129545}
!11 = !{i64 1130028, i64 1130055, i64 1130089, i64 1130110}
