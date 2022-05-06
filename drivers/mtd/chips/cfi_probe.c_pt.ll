; ModuleID = '/llk/IR/drivers/mtd/chips/cfi_probe.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_probe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.chip_probe = type { ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [1 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>

@cfi_chip_probe = internal global %struct.chip_probe { ptr @.str, ptr @cfi_probe_chip }, align 4
@cfi_chipdrv = internal global %struct.mtd_chip_driver { ptr @cfi_probe, ptr null, ptr null, ptr @.str.7, %struct.list_head zeroinitializer }, align 4
@__initcall__kmod_cfi_probe__162_457_cfi_probe_init6 = internal global ptr @cfi_probe_init, section ".initcall6.init", align 4
@__exitcall_cfi_probe_exit = internal global ptr @cfi_probe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [43 x i8] c"cfi_probe.file=drivers/mtd/chips/cfi_probe\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [22 x i8] c"cfi_probe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author165 = internal constant [62 x i8] c"cfi_probe.author=David Woodhouse <dwmw2@infradead.org> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description166 = internal constant [63 x i8] c"cfi_probe.description=Probe code for CFI-compliant flash chips\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"CFI\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\015Probe at base[0x00](0x%08lx) past the end of the map(0x%08lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\015Probe at base[0x55](0x%08lx) past the end of the map(0x%08lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\017%s: Found an alias at 0x%x for the chip at 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\016%s: Found %d x%d devices at 0x%x in %d-bit bank\0A\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"\016%s: Found %d x%d devices at 0x%x in %d-bit bank. Manufacturer ID %#08x Chip ID %#08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\014Bad S70GL02GS CFI data; adjust to detect 2 chips\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author165, ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_cfi_probe_exit, ptr @__initcall__kmod_cfi_probe__162_457_cfi_probe_init6, ptr @cfi_probe_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfi_probe(ptr noundef %0) #0 {
  %2 = tail call ptr @mtd_do_chip_probe(ptr noundef %0, ptr noundef nonnull @cfi_chip_probe) #8
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_do_chip_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cfi_probe_exit() #2 section ".exit.text" {
  tail call void @unregister_mtd_chip_driver(ptr noundef nonnull @cfi_chipdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cfi_probe_init() #2 section ".init.text" {
  tail call void @register_mtd_chip_driver(ptr noundef nonnull @cfi_chipdrv) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_probe_chip(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = add i32 %6, -1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %9) #9
  br label %325

11:                                               ; preds = %4
  %12 = add i32 %1, 255
  %13 = icmp ult i32 %12, %6
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = add i32 %1, 85
  %16 = add i32 %6, -1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %16) #9
  br label %325

18:                                               ; preds = %11
  %19 = tail call i32 @cfi_qry_mode_on(i32 noundef %1, ptr noundef %0, ptr noundef %3) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %325, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %1, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %311, label %280

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, %32
  %36 = mul i32 %35, 44
  %37 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %56 [
    i32 1, label %39
    i32 2, label %45
    i32 4, label %51
  ]

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %36
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #8, !srcloc !8
  %44 = zext i8 %43 to i32
  br label %57

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %36
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #8, !srcloc !9
  %50 = zext i16 %49 to i32
  br label %57

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !10
  br label %57

56:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

57:                                               ; preds = %51, %45, %39
  %58 = phi i32 [ %44, %39 ], [ %50, %45 ], [ %55, %51 ]
  %59 = load i32, ptr %37, align 4
  switch i32 %59, label %72 [
    i32 1, label %80
    i32 2, label %60
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %80, label %64

64:                                               ; preds = %60
  %65 = icmp eq i32 %62, 3
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = trunc i32 %58 to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #8
  %69 = zext i16 %68 to i32
  br label %80

70:                                               ; preds = %64
  %71 = and i32 %58, 65535
  br label %80

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %74, 2
  %76 = icmp eq i32 %74, 3
  %77 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %78 = select i1 %76, i32 %77, i32 %58
  %79 = select i1 %75, i32 %58, i32 %78
  br label %80

80:                                               ; preds = %72, %70, %66, %60, %57
  %81 = phi i32 [ %79, %72 ], [ %58, %57 ], [ %69, %66 ], [ %71, %70 ], [ %58, %60 ]
  %82 = trunc i32 %81 to i8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %325, label %84

84:                                               ; preds = %80
  %85 = shl i32 %81, 2
  %86 = and i32 %85, 1020
  %87 = add nuw nsw i32 %86, 29
  %88 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %87, i32 noundef 3264) #10
  %89 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  store ptr %88, ptr %89, align 4
  %90 = icmp eq ptr %88, null
  br i1 %90, label %325, label %91

91:                                               ; preds = %84
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(29) %88, i8 0, i32 29, i1 false) #8
  %92 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 4
  store i32 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 12
  %94 = tail call i32 @cfi_build_cmd(i32 noundef 48, ptr noundef %0, ptr noundef %3) #8
  store i32 %94, ptr %93, align 4
  %95 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %96 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  br label %113

97:                                               ; preds = %154
  %98 = load ptr, ptr %89, align 4
  %99 = getelementptr inbounds %struct.cfi_ident, ptr %98, i32 0, i32 1
  %100 = load i16, ptr %99, align 1
  %101 = icmp eq i16 %100, 1793
  %102 = select i1 %101, i32 21845, i32 1365
  %103 = select i1 %101, i32 10922, i32 682
  %104 = load i32, ptr %33, align 4
  %105 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %3, i32 noundef %104, ptr noundef null) #8
  %106 = load i32, ptr %33, align 4
  %107 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %102, i32 noundef 0, ptr noundef %0, ptr noundef %3, i32 noundef %106, ptr noundef null) #8
  %108 = load i32, ptr %33, align 4
  %109 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %103, i32 noundef 0, ptr noundef %0, ptr noundef %3, i32 noundef %108, ptr noundef null) #8
  %110 = load i32, ptr %33, align 4
  %111 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %102, i32 noundef 0, ptr noundef %0, ptr noundef %3, i32 noundef %110, ptr noundef null) #8
  %112 = load i32, ptr %37, align 4
  switch i32 %112, label %172 [
    i32 1, label %161
    i32 2, label %165
    i32 4, label %169
  ]

113:                                              ; preds = %154, %91
  %114 = phi i32 [ 0, %91 ], [ %159, %154 ]
  %115 = add nuw nsw i32 %114, 16
  %116 = mul i32 %115, %35
  %117 = load i32, ptr %37, align 4
  switch i32 %117, label %132 [
    i32 1, label %118
    i32 2, label %123
    i32 4, label %128
  ]

118:                                              ; preds = %113
  %119 = load ptr, ptr %95, align 4
  %120 = getelementptr i8, ptr %119, i32 %116
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %120) #8, !srcloc !8
  %122 = zext i8 %121 to i32
  br label %133

123:                                              ; preds = %113
  %124 = load ptr, ptr %95, align 4
  %125 = getelementptr i8, ptr %124, i32 %116
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %125) #8, !srcloc !9
  %127 = zext i16 %126 to i32
  br label %133

128:                                              ; preds = %113
  %129 = load ptr, ptr %95, align 4
  %130 = getelementptr i8, ptr %129, i32 %116
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #8, !srcloc !10
  br label %133

132:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

133:                                              ; preds = %128, %123, %118
  %134 = phi i32 [ %122, %118 ], [ %127, %123 ], [ %131, %128 ]
  %135 = load i32, ptr %37, align 4
  switch i32 %135, label %147 [
    i32 1, label %154
    i32 2, label %136
  ]

136:                                              ; preds = %133
  %137 = load i32, ptr %96, align 4
  %138 = icmp ult i32 %137, 2
  br i1 %138, label %154, label %139

139:                                              ; preds = %136
  %140 = icmp eq i32 %137, 3
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  %142 = trunc i32 %134 to i16
  %143 = tail call i16 @llvm.bswap.i16(i16 %142) #8
  %144 = zext i16 %143 to i32
  br label %154

145:                                              ; preds = %139
  %146 = and i32 %134, 65535
  br label %154

147:                                              ; preds = %133
  %148 = load i32, ptr %96, align 4
  %149 = icmp ult i32 %148, 2
  %150 = icmp eq i32 %148, 3
  %151 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  %152 = select i1 %150, i32 %151, i32 %134
  %153 = select i1 %149, i32 %134, i32 %152
  br label %154

154:                                              ; preds = %147, %145, %141, %136, %133
  %155 = phi i32 [ %153, %147 ], [ %134, %133 ], [ %144, %141 ], [ %146, %145 ], [ %134, %136 ]
  %156 = trunc i32 %155 to i8
  %157 = load ptr, ptr %89, align 4
  %158 = getelementptr i8, ptr %157, i32 %114
  store i8 %156, ptr %158, align 1
  %159 = add nuw nsw i32 %114, 1
  %160 = icmp eq i32 %159, %87
  br i1 %160, label %97, label %113

161:                                              ; preds = %97
  %162 = load ptr, ptr %95, align 4
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %162) #8, !srcloc !8
  %164 = zext i8 %163 to i32
  br label %173

165:                                              ; preds = %97
  %166 = load ptr, ptr %95, align 4
  %167 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %166) #8, !srcloc !9
  %168 = zext i16 %167 to i32
  br label %173

169:                                              ; preds = %97
  %170 = load ptr, ptr %95, align 4
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #8, !srcloc !10
  br label %173

172:                                              ; preds = %97
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

173:                                              ; preds = %169, %165, %161
  %174 = phi i32 [ %164, %161 ], [ %168, %165 ], [ %171, %169 ]
  %175 = load i32, ptr %37, align 4
  switch i32 %175, label %189 [
    i32 1, label %176
    i32 2, label %178
  ]

176:                                              ; preds = %173
  %177 = and i32 %174, 255
  br label %196

178:                                              ; preds = %173
  %179 = load i32, ptr %96, align 4
  %180 = icmp ult i32 %179, 2
  br i1 %180, label %196, label %181

181:                                              ; preds = %178
  %182 = icmp eq i32 %179, 3
  br i1 %182, label %183, label %187

183:                                              ; preds = %181
  %184 = trunc i32 %174 to i16
  %185 = tail call i16 @llvm.bswap.i16(i16 %184) #8
  %186 = zext i16 %185 to i32
  br label %196

187:                                              ; preds = %181
  %188 = and i32 %174, 65535
  br label %196

189:                                              ; preds = %173
  %190 = load i32, ptr %96, align 4
  %191 = icmp ult i32 %190, 2
  %192 = icmp eq i32 %190, 3
  %193 = tail call i32 @llvm.bswap.i32(i32 %174) #8
  %194 = select i1 %192, i32 %193, i32 %174
  %195 = select i1 %191, i32 %174, i32 %194
  br label %196

196:                                              ; preds = %189, %187, %183, %178, %176
  %197 = phi i32 [ %177, %176 ], [ %195, %189 ], [ %186, %183 ], [ %188, %187 ], [ %174, %178 ]
  %198 = and i32 %197, 65535
  %199 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  store i32 %198, ptr %199, align 4
  %200 = load i32, ptr %37, align 4
  switch i32 %200, label %215 [
    i32 1, label %201
    i32 2, label %206
    i32 4, label %211
  ]

201:                                              ; preds = %196
  %202 = load ptr, ptr %95, align 4
  %203 = getelementptr i8, ptr %202, i32 %35
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %203) #8, !srcloc !8
  %205 = zext i8 %204 to i32
  br label %216

206:                                              ; preds = %196
  %207 = load ptr, ptr %95, align 4
  %208 = getelementptr i8, ptr %207, i32 %35
  %209 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %208) #8, !srcloc !9
  %210 = zext i16 %209 to i32
  br label %216

211:                                              ; preds = %196
  %212 = load ptr, ptr %95, align 4
  %213 = getelementptr i8, ptr %212, i32 %35
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #8, !srcloc !10
  br label %216

215:                                              ; preds = %196
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

216:                                              ; preds = %211, %206, %201
  %217 = phi i32 [ %205, %201 ], [ %210, %206 ], [ %214, %211 ]
  %218 = load i32, ptr %37, align 4
  switch i32 %218, label %232 [
    i32 1, label %219
    i32 2, label %221
  ]

219:                                              ; preds = %216
  %220 = and i32 %217, 255
  br label %239

221:                                              ; preds = %216
  %222 = load i32, ptr %96, align 4
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %239, label %224

224:                                              ; preds = %221
  %225 = icmp eq i32 %222, 3
  br i1 %225, label %226, label %230

226:                                              ; preds = %224
  %227 = trunc i32 %217 to i16
  %228 = tail call i16 @llvm.bswap.i16(i16 %227) #8
  %229 = zext i16 %228 to i32
  br label %239

230:                                              ; preds = %224
  %231 = and i32 %217, 65535
  br label %239

232:                                              ; preds = %216
  %233 = load i32, ptr %96, align 4
  %234 = icmp ult i32 %233, 2
  %235 = icmp eq i32 %233, 3
  %236 = tail call i32 @llvm.bswap.i32(i32 %217) #8
  %237 = select i1 %235, i32 %236, i32 %217
  %238 = select i1 %234, i32 %217, i32 %237
  br label %239

239:                                              ; preds = %232, %230, %226, %221, %219
  %240 = phi i32 [ %220, %219 ], [ %238, %232 ], [ %229, %226 ], [ %231, %230 ], [ %217, %221 ]
  %241 = and i32 %240, 65535
  %242 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  store i32 %241, ptr %242, align 4
  %243 = load i32, ptr %199, align 4
  %244 = icmp eq i32 %243, 1
  %245 = and i32 %240, 255
  %246 = icmp eq i32 %245, 126
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %248, label %257

248:                                              ; preds = %239
  %249 = mul i32 %35, 14
  %250 = tail call fastcc zeroext i8 @cfi_read_query(ptr noundef %0, i32 noundef %249) #8
  %251 = zext i8 %250 to i32
  %252 = shl nuw nsw i32 %251, 8
  %253 = mul i32 %35, 15
  %254 = tail call fastcc zeroext i8 @cfi_read_query(ptr noundef %0, i32 noundef %253) #8
  %255 = zext i8 %254 to i32
  %256 = or i32 %252, %255
  store i32 %256, ptr %242, align 4
  br label %257

257:                                              ; preds = %248, %239
  tail call void @cfi_qry_mode_off(i32 noundef 0, ptr noundef %0, ptr noundef %3) #8
  %258 = load i32, ptr %199, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = load i32, ptr %242, align 4
  %262 = icmp eq i32 %261, 18433
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = load ptr, ptr %89, align 4
  %265 = getelementptr inbounds %struct.cfi_ident, ptr %264, i32 0, i32 17
  store i8 27, ptr %265, align 1
  %266 = load ptr, ptr %89, align 4
  %267 = getelementptr inbounds %struct.cfi_ident, ptr %266, i32 0, i32 21
  store i32 33555455, ptr %267, align 1
  %268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %269 = load i32, ptr %199, align 4
  br label %270

270:                                              ; preds = %263, %260, %257
  %271 = phi i32 [ %258, %257 ], [ 1, %260 ], [ %269, %263 ]
  %272 = load ptr, ptr %0, align 4
  %273 = load i32, ptr %31, align 4
  %274 = load i32, ptr %33, align 4
  %275 = shl i32 %274, 3
  %276 = load i32, ptr %37, align 4
  %277 = shl i32 %276, 3
  %278 = load i32, ptr %242, align 4
  %279 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %272, i32 noundef %273, i32 noundef %275, i32 noundef 0, i32 noundef %277, i32 noundef %271, i32 noundef %278) #9
  br label %325

280:                                              ; preds = %306, %25
  %281 = phi i32 [ %308, %306 ], [ %27, %25 ]
  %282 = phi i32 [ %307, %306 ], [ 0, %25 ]
  %283 = lshr i32 %282, 5
  %284 = getelementptr i32, ptr %2, i32 %283
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %282, 31
  %287 = shl nuw i32 1, %286
  %288 = and i32 %285, %287
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %306, label %290

290:                                              ; preds = %280
  %291 = shl i32 %282, %281
  %292 = tail call i32 @cfi_qry_present(ptr noundef %0, i32 noundef %291, ptr noundef %3) #8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %306, label %294

294:                                              ; preds = %290
  tail call void @cfi_qry_mode_off(i32 noundef %291, ptr noundef %0, ptr noundef %3) #8
  %295 = tail call i32 @cfi_qry_present(ptr noundef %0, i32 noundef %291, ptr noundef %3) #8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load ptr, ptr %0, align 4
  %299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %298, i32 noundef %1, i32 noundef %291) #9
  br label %325

300:                                              ; preds = %294
  tail call void @cfi_qry_mode_off(i32 noundef %1, ptr noundef %0, ptr noundef %3) #8
  %301 = tail call i32 @cfi_qry_present(ptr noundef %0, i32 noundef %1, ptr noundef %3) #8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %0, align 4
  %305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %304, i32 noundef %1, i32 noundef %291) #9
  br label %325

306:                                              ; preds = %300, %290, %280
  %307 = add nuw i32 %282, 1
  %308 = load i32, ptr %26, align 4
  %309 = lshr i32 %1, %308
  %310 = icmp ult i32 %307, %309
  br i1 %310, label %280, label %311

311:                                              ; preds = %306, %25
  %312 = phi i32 [ 0, %25 ], [ %309, %306 ]
  tail call void @_set_bit(i32 noundef %312, ptr noundef %2) #8
  %313 = load i32, ptr %22, align 4
  %314 = add i32 %313, 1
  store i32 %314, ptr %22, align 4
  tail call void @cfi_qry_mode_off(i32 noundef %1, ptr noundef %0, ptr noundef %3) #8
  %315 = load ptr, ptr %0, align 4
  %316 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %317 = load i32, ptr %316, align 4
  %318 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 3
  %319 = load i32, ptr %318, align 4
  %320 = shl i32 %319, 3
  %321 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %322 = load i32, ptr %321, align 4
  %323 = shl i32 %322, 3
  %324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %315, i32 noundef %317, i32 noundef %320, i32 noundef %1, i32 noundef %323) #9
  br label %325

325:                                              ; preds = %311, %303, %297, %270, %84, %80, %18, %14, %8
  %326 = phi i32 [ 0, %8 ], [ 0, %14 ], [ 1, %311 ], [ 0, %18 ], [ 1, %270 ], [ 0, %80 ], [ 0, %84 ], [ 0, %303 ], [ 0, %297 ]
  ret i32 %326
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_qry_mode_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_qry_present(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_qry_mode_off(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @cfi_read_query(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %22 [
    i32 1, label %5
    i32 2, label %11
    i32 4, label %17
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #8, !srcloc !8
  %10 = zext i8 %9 to i32
  br label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %1
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !9
  %16 = zext i16 %15 to i32
  br label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !10
  br label %23

22:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

23:                                               ; preds = %17, %11, %5
  %24 = phi i32 [ %10, %5 ], [ %16, %11 ], [ %21, %17 ]
  %25 = load i32, ptr %3, align 4
  switch i32 %25, label %38 [
    i32 1, label %46
    i32 2, label %26
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %28, 3
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = trunc i32 %24 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = zext i16 %34 to i32
  br label %46

36:                                               ; preds = %30
  %37 = and i32 %24, 65535
  br label %46

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 2
  %42 = icmp eq i32 %40, 3
  %43 = tail call i32 @llvm.bswap.i32(i32 %24)
  %44 = select i1 %42, i32 %43, i32 %24
  %45 = select i1 %41, i32 %24, i32 %44
  br label %46

46:                                               ; preds = %38, %36, %32, %26, %23
  %47 = phi i32 [ %45, %38 ], [ %24, %23 ], [ %35, %32 ], [ %37, %36 ], [ %24, %26 ]
  %48 = trunc i32 %47 to i8
  ret i8 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_build_cmd(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_send_gen_cmd(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2881349}
!9 = !{i64 2880731}
!10 = !{i64 2881569}
!11 = !{i64 2151311043, i64 2151311531, i64 2151311080, i64 2151311136, i64 2151311170, i64 2151311194, i64 2151311235, i64 2151311256, i64 2151311284, i64 2151311318}
