; ModuleID = '/llk/IR/drivers/pinctrl/renesas/gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sh_pfc = type { ptr, ptr, %struct.spinlock, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sh_pfc_soc_info = type { ptr, ptr, %struct.pinmux_range, %struct.pinmux_range, ptr, i32, %struct.pinmux_range, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pinmux_range = type { i16, i16, i16 }
%struct.sh_pfc_window = type { i32, ptr, i32 }
%struct.sh_pfc_chip = type { ptr, %struct.gpio_chip, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.58, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.58 = type { ptr }
%struct.pinmux_data_reg = type { i32, i8, ptr }
%struct.sh_pfc_gpio_data_reg = type { ptr, i32 }
%struct.sh_pfc_pin = type { ptr, i32, i16, i16 }
%struct.sh_pfc_gpio_pin = type { i8, i8 }
%struct.pinmux_irq = type { ptr }

@.str = private unnamed_addr constant [33 x i8] c"invalid number of IRQ resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s handling gpio %u -> %u\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_register_gpiochip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %221, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %25, %12
  %16 = phi i32 [ 0, %12 ], [ %26, %25 ]
  %17 = getelementptr %struct.sh_pfc_window, ptr %14, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %8, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.sh_pfc_window, ptr %14, i32 %16, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %18
  %24 = icmp ult i32 %8, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15
  %26 = add nuw i32 %16, 1
  %27 = icmp eq i32 %26, %10
  br i1 %27, label %221, label %15

28:                                               ; preds = %20, %7
  %29 = phi i32 [ 0, %7 ], [ %16, %20 ]
  %30 = icmp eq i32 %29, %10
  br i1 %30, label %221, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str) #4
  br label %221

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %0, align 4
  %43 = tail call noalias ptr @devm_kmalloc(ptr noundef %42, i32 noundef 320, i32 noundef 3520) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %216, label %45, !prof !8

45:                                               ; preds = %39
  %46 = getelementptr %struct.sh_pfc_window, ptr %41, i32 %29
  %47 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  store ptr %0, ptr %43, align 4
  %48 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 2) #5
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %54, label %56, !prof !8

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 4
  br label %214

56:                                               ; preds = %45
  %57 = load ptr, ptr %0, align 4
  %58 = extractvalue { i32, i1 } %52, 0
  %59 = tail call noalias ptr @devm_kmalloc(ptr noundef %57, i32 noundef %58, i32 noundef 3520) #5
  %60 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 4
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %216, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %43, align 4
  %64 = getelementptr inbounds %struct.sh_pfc, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %65, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %68, %62
  %69 = phi i32 [ 0, %62 ], [ %73, %68 ]
  %70 = getelementptr %struct.pinmux_data_reg, ptr %67, i32 %69, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 0
  %73 = add i32 %69, 1
  br i1 %72, label %74, label %68

74:                                               ; preds = %68
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %69, i32 8) #5
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %77, label %79, !prof !8

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 3
  br label %214

79:                                               ; preds = %74
  %80 = load ptr, ptr %63, align 4
  %81 = extractvalue { i32, i1 } %75, 0
  %82 = tail call noalias ptr @devm_kmalloc(ptr noundef %80, i32 noundef %81, i32 noundef 3520) #5
  %83 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 3
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %216, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %64, align 4
  %87 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %86, i32 0, i32 17
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.pinmux_data_reg, ptr %88, i32 0, i32 1
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %99

92:                                               ; preds = %99
  %93 = load ptr, ptr %64, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = phi ptr [ %93, %92 ], [ %86, %85 ]
  %96 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %95, i32 0, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %181, label %124

99:                                               ; preds = %120, %85
  %100 = phi ptr [ %123, %120 ], [ %82, %85 ]
  %101 = phi ptr [ %117, %120 ], [ %89, %85 ]
  %102 = phi i32 [ %122, %120 ], [ 0, %85 ]
  %103 = phi ptr [ %121, %120 ], [ %88, %85 ]
  %104 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %100, i32 %102
  store ptr %103, ptr %104, align 4
  %105 = load i32, ptr %103, align 4
  %106 = load ptr, ptr %47, align 4
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 %105, %107
  %109 = getelementptr inbounds %struct.sh_pfc_window, ptr %106, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %108
  %112 = load i8, ptr %101, align 4
  %113 = zext i8 %112 to i32
  %114 = tail call i32 @sh_pfc_read_raw_reg(ptr noundef %111, i32 noundef %113) #5
  %115 = load ptr, ptr %83, align 4
  %116 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %115, i32 %102, i32 1
  store i32 %114, ptr %116, align 4
  %117 = getelementptr %struct.pinmux_data_reg, ptr %103, i32 1, i32 1
  %118 = load i8, ptr %117, align 4
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %92, label %120

120:                                              ; preds = %99
  %121 = getelementptr %struct.pinmux_data_reg, ptr %103, i32 1
  %122 = add i32 %102, 1
  %123 = load ptr, ptr %83, align 4
  br label %99

124:                                              ; preds = %175, %94
  %125 = phi ptr [ %176, %175 ], [ %95, %94 ]
  %126 = phi i32 [ %177, %175 ], [ 0, %94 ]
  %127 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %125, i32 0, i32 7
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr %struct.sh_pfc_pin, ptr %128, i32 %126, i32 3
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %175, label %132

132:                                              ; preds = %124
  %133 = load ptr, ptr %43, align 4
  %134 = load ptr, ptr %60, align 4
  %135 = getelementptr inbounds %struct.sh_pfc, ptr %133, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %136, i32 0, i32 17
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.pinmux_data_reg, ptr %138, i32 0, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %136, i32 0, i32 7
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr %struct.sh_pfc_pin, ptr %144, i32 %126, i32 3
  %146 = load i16, ptr %145, align 2
  br label %147

147:                                              ; preds = %162, %142
  %148 = phi i8 [ %140, %142 ], [ %166, %162 ]
  %149 = phi i32 [ 0, %142 ], [ %163, %162 ]
  %150 = phi ptr [ %138, %142 ], [ %164, %162 ]
  %151 = getelementptr inbounds %struct.pinmux_data_reg, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = zext i8 %148 to i32
  br label %154

154:                                              ; preds = %159, %147
  %155 = phi i32 [ 0, %147 ], [ %160, %159 ]
  %156 = getelementptr i16, ptr %152, i32 %155
  %157 = load i16, ptr %156, align 2
  %158 = icmp eq i16 %157, %146
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = add nuw nsw i32 %155, 1
  %161 = icmp eq i32 %160, %153
  br i1 %161, label %162, label %154

162:                                              ; preds = %159
  %163 = add i32 %149, 1
  %164 = getelementptr %struct.pinmux_data_reg, ptr %150, i32 1
  %165 = getelementptr %struct.pinmux_data_reg, ptr %150, i32 1, i32 1
  %166 = load i8, ptr %165, align 4
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %147

168:                                              ; preds = %162, %132
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/gpio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

169:                                              ; preds = %154
  %170 = getelementptr %struct.sh_pfc_gpio_pin, ptr %134, i32 %126
  %171 = trunc i32 %149 to i8
  %172 = getelementptr %struct.sh_pfc_gpio_pin, ptr %134, i32 %126, i32 1
  store i8 %171, ptr %172, align 1
  %173 = trunc i32 %155 to i8
  store i8 %173, ptr %170, align 1
  %174 = load ptr, ptr %64, align 4
  br label %175

175:                                              ; preds = %169, %124
  %176 = phi ptr [ %125, %124 ], [ %174, %169 ]
  %177 = add nuw i32 %126, 1
  %178 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %176, i32 0, i32 8
  %179 = load i32, ptr %178, align 4
  %180 = icmp ult i32 %177, %179
  br i1 %180, label %124, label %181

181:                                              ; preds = %175, %94
  %182 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 5
  store ptr @gpio_pin_request, ptr %182, align 4
  %183 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 6
  store ptr @gpio_pin_free, ptr %183, align 4
  %184 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 8
  store ptr @gpio_pin_direction_input, ptr %184, align 4
  %185 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 10
  store ptr @gpio_pin_get, ptr %185, align 4
  %186 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 9
  store ptr @gpio_pin_direction_output, ptr %186, align 4
  %187 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 12
  store ptr @gpio_pin_set, ptr %187, align 4
  %188 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 15
  store ptr @gpio_pin_to_irq, ptr %188, align 4
  %189 = load ptr, ptr %2, align 4
  %190 = load ptr, ptr %189, align 4
  store ptr %190, ptr %48, align 4
  %191 = load ptr, ptr %0, align 4
  %192 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 2
  store ptr %191, ptr %192, align 4
  %193 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 4
  store ptr null, ptr %193, align 4
  %194 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 19
  store i32 0, ptr %194, align 4
  %195 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 9
  %196 = load i32, ptr %195, align 4
  %197 = trunc i32 %196 to i16
  %198 = getelementptr inbounds %struct.sh_pfc_chip, ptr %43, i32 0, i32 1, i32 20
  store i16 %197, ptr %198, align 4
  %199 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %191, ptr noundef %48, ptr noundef nonnull %43, ptr noundef null, ptr noundef null) #5
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203, !prof !8

201:                                              ; preds = %181
  %202 = inttoptr i32 %199 to ptr
  br label %211

203:                                              ; preds = %181
  %204 = load ptr, ptr %0, align 4
  %205 = load ptr, ptr %48, align 4
  %206 = load i32, ptr %194, align 4
  %207 = load i16, ptr %198, align 4
  %208 = zext i16 %207 to i32
  %209 = add i32 %206, -1
  %210 = add i32 %209, %208
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %204, ptr noundef nonnull @.str.1, ptr noundef %205, i32 noundef %206, i32 noundef %210) #4
  br label %211

211:                                              ; preds = %203, %201
  %212 = phi ptr [ %202, %201 ], [ %43, %203 ]
  %213 = icmp ugt ptr %212, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %216, label %219

214:                                              ; preds = %77, %54
  %215 = phi ptr [ %78, %77 ], [ %55, %54 ]
  store ptr null, ptr %215, align 4
  br label %216

216:                                              ; preds = %214, %211, %79, %56, %39
  %217 = phi ptr [ %212, %211 ], [ inttoptr (i32 -12 to ptr), %39 ], [ inttoptr (i32 -12 to ptr), %56 ], [ inttoptr (i32 -12 to ptr), %79 ], [ inttoptr (i32 -12 to ptr), %214 ]
  %218 = ptrtoint ptr %217 to i32
  br label %221

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 10
  store ptr %212, ptr %220, align 4
  br label %221

221:                                              ; preds = %219, %216, %37, %28, %25, %1
  %222 = phi i32 [ -22, %37 ], [ %218, %216 ], [ 0, %1 ], [ 0, %28 ], [ 0, %219 ], [ 0, %25 ]
  ret i32 %222
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_pin_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %4, i32 noundef %1) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sh_pfc, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.sh_pfc_pin, ptr %11, i32 %5, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @pinctrl_gpio_request(i32 noundef %1) #5
  br label %17

17:                                               ; preds = %15, %7, %2
  %18 = phi i32 [ %16, %15 ], [ -22, %7 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_pin_free(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  tail call void @pinctrl_gpio_free(i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_pin_direction_input(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %1) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_pin_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %4, i32 noundef %1) #5
  %6 = getelementptr inbounds %struct.sh_pfc_chip, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sh_pfc_gpio_pin, ptr %7, i32 %5
  %9 = getelementptr inbounds %struct.sh_pfc_chip, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.sh_pfc_gpio_pin, ptr %7, i32 %5, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %10, i32 %13
  %15 = load i8, ptr %8, align 1
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.pinmux_data_reg, ptr %17, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = xor i32 %16, -1
  %22 = add nsw i32 %20, %21
  %23 = load i32, ptr %17, align 4
  %24 = getelementptr inbounds %struct.sh_pfc_chip, ptr %3, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %23, %26
  %28 = getelementptr inbounds %struct.sh_pfc_window, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %27
  %31 = tail call i32 @sh_pfc_read_raw_reg(ptr noundef %30, i32 noundef %20) #5
  %32 = lshr i32 %31, %22
  %33 = and i32 %32, 1
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_pin_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %5, i32 noundef %1) #5
  %7 = getelementptr inbounds %struct.sh_pfc_chip, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.sh_pfc_gpio_pin, ptr %8, i32 %6
  %10 = getelementptr inbounds %struct.sh_pfc_chip, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.sh_pfc_gpio_pin, ptr %8, i32 %6, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %11, i32 %14
  %16 = load i8, ptr %9, align 1
  %17 = zext i8 %16 to i32
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.pinmux_data_reg, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = xor i32 %17, -1
  %23 = add nsw i32 %21, %22
  %24 = icmp eq i32 %2, 0
  %25 = shl nuw i32 1, %23
  br i1 %24, label %30, label %26

26:                                               ; preds = %3
  %27 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %11, i32 %14, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, ptr %27, align 4
  br label %35

30:                                               ; preds = %3
  %31 = xor i32 %25, -1
  %32 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %11, i32 %14, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %34, %30 ], [ %29, %26 ]
  %37 = load i32, ptr %18, align 4
  %38 = getelementptr inbounds %struct.sh_pfc_chip, ptr %4, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %37, %40
  %42 = getelementptr inbounds %struct.sh_pfc_window, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = load i8, ptr %19, align 4
  %46 = zext i8 %45 to i32
  tail call void @sh_pfc_write_raw_reg(ptr noundef %44, i32 noundef %46, i32 noundef %36) #5
  %47 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %1) #5
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_pin_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %5, i32 noundef %1) #5
  %7 = getelementptr inbounds %struct.sh_pfc_chip, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.sh_pfc_gpio_pin, ptr %8, i32 %6
  %10 = getelementptr inbounds %struct.sh_pfc_chip, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.sh_pfc_gpio_pin, ptr %8, i32 %6, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %11, i32 %14
  %16 = load i8, ptr %9, align 1
  %17 = zext i8 %16 to i32
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.pinmux_data_reg, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = xor i32 %17, -1
  %23 = add nsw i32 %21, %22
  %24 = icmp eq i32 %2, 0
  %25 = shl nuw i32 1, %23
  br i1 %24, label %30, label %26

26:                                               ; preds = %3
  %27 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %11, i32 %14, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, ptr %27, align 4
  br label %35

30:                                               ; preds = %3
  %31 = xor i32 %25, -1
  %32 = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %11, i32 %14, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %34, %30 ], [ %29, %26 ]
  %37 = load i32, ptr %18, align 4
  %38 = getelementptr inbounds %struct.sh_pfc_chip, ptr %4, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %37, %40
  %42 = getelementptr inbounds %struct.sh_pfc_window, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = load i8, ptr %19, align 4
  %46 = zext i8 %45 to i32
  tail call void @sh_pfc_write_raw_reg(ptr noundef %44, i32 noundef %46, i32 noundef %36) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_pin_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_pfc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %34, %10
  %14 = phi i32 [ 0, %10 ], [ %35, %34 ]
  %15 = getelementptr %struct.pinmux_irq, ptr %12, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %16, align 2
  %18 = icmp sgt i16 %17, -1
  br i1 %18, label %24, label %34

19:                                               ; preds = %24
  %20 = add i32 %26, 1
  %21 = getelementptr i16, ptr %16, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = icmp sgt i16 %22, -1
  br i1 %23, label %24, label %34

24:                                               ; preds = %19, %13
  %25 = phi i16 [ %22, %19 ], [ %17, %13 ]
  %26 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %27 = zext i16 %25 to i32
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %19

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sh_pfc, ptr %4, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i32, ptr %31, i32 %14
  %33 = load i32, ptr %32, align 4
  br label %37

34:                                               ; preds = %19, %13
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %8
  br i1 %36, label %37, label %13

37:                                               ; preds = %34, %29, %2
  %38 = phi i32 [ %33, %29 ], [ 0, %2 ], [ 0, %34 ]
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_read_raw_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_get_pin_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sh_pfc_write_raw_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!9 = !{i64 2152320107, i64 2152320601, i64 2152320144, i64 2152320200, i64 2152320234, i64 2152320258, i64 2152320299, i64 2152320320, i64 2152320348, i64 2152320382}
