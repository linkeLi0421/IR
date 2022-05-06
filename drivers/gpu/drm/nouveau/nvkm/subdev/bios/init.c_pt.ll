; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/init.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_init_opcode = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.126 }
%struct.anon.126 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.120, i8 }
%union.anon.120 = type { %struct.anon.124 }
%struct.anon.124 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@init_opcode = internal unnamed_addr constant [171 x %struct.nvbios_init_opcode] [%struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_io_restrict_prog }, %struct.nvbios_init_opcode { ptr @init_repeat }, %struct.nvbios_init_opcode { ptr @init_io_restrict_pll }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_end_repeat }, %struct.nvbios_init_opcode { ptr @init_copy }, %struct.nvbios_init_opcode { ptr @init_not }, %struct.nvbios_init_opcode { ptr @init_io_flag_condition }, %struct.nvbios_init_opcode { ptr @init_generic_condition }, %struct.nvbios_init_opcode { ptr @init_io_mask_or }, %struct.nvbios_init_opcode { ptr @init_io_or }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_andn_reg }, %struct.nvbios_init_opcode { ptr @init_or_reg }, %struct.nvbios_init_opcode { ptr @init_idx_addr_latched }, %struct.nvbios_init_opcode { ptr @init_io_restrict_pll2 }, %struct.nvbios_init_opcode { ptr @init_pll2 }, %struct.nvbios_init_opcode { ptr @init_i2c_byte }, %struct.nvbios_init_opcode { ptr @init_zm_i2c_byte }, %struct.nvbios_init_opcode { ptr @init_zm_i2c }, %struct.nvbios_init_opcode { ptr @init_tmds }, %struct.nvbios_init_opcode { ptr @init_zm_tmds_group }, %struct.nvbios_init_opcode { ptr @init_cr_idx_adr_latch }, %struct.nvbios_init_opcode { ptr @init_cr }, %struct.nvbios_init_opcode { ptr @init_zm_cr }, %struct.nvbios_init_opcode { ptr @init_zm_cr_group }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_condition_time }, %struct.nvbios_init_opcode { ptr @init_ltime }, %struct.nvbios_init_opcode { ptr @init_zm_reg_sequence }, %struct.nvbios_init_opcode { ptr @init_pll_indirect }, %struct.nvbios_init_opcode { ptr @init_zm_reg_indirect }, %struct.nvbios_init_opcode { ptr @init_sub_direct }, %struct.nvbios_init_opcode { ptr @init_jump }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_i2c_if }, %struct.nvbios_init_opcode { ptr @init_copy_nv_reg }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_zm_index_io }, %struct.nvbios_init_opcode { ptr @init_compute_mem }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_reset }, %struct.nvbios_init_opcode { ptr @init_configure_mem }, %struct.nvbios_init_opcode { ptr @init_configure_clk }, %struct.nvbios_init_opcode { ptr @init_configure_preinit }, %struct.nvbios_init_opcode { ptr @init_io }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_sub }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_ram_condition }, %struct.nvbios_init_opcode { ptr @init_nv_reg }, %struct.nvbios_init_opcode { ptr @init_macro }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_done }, %struct.nvbios_init_opcode { ptr @init_resume }, %struct.nvbios_init_opcode { ptr @init_strap_condition }, %struct.nvbios_init_opcode { ptr @init_time }, %struct.nvbios_init_opcode { ptr @init_condition }, %struct.nvbios_init_opcode { ptr @init_io_condition }, %struct.nvbios_init_opcode { ptr @init_zm_reg16 }, %struct.nvbios_init_opcode { ptr @init_index_io }, %struct.nvbios_init_opcode { ptr @init_pll }, %struct.nvbios_init_opcode { ptr @init_zm_reg }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_ram_restrict_pll }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_reset_begun }, %struct.nvbios_init_opcode { ptr @init_reset_end }, %struct.nvbios_init_opcode { ptr @init_gpio }, %struct.nvbios_init_opcode { ptr @init_ram_restrict_zm_reg_group }, %struct.nvbios_init_opcode { ptr @init_copy_zm_reg }, %struct.nvbios_init_opcode { ptr @init_zm_reg_group }, %struct.nvbios_init_opcode { ptr @init_reserved }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_xlat }, %struct.nvbios_init_opcode { ptr @init_zm_mask_add }, %struct.nvbios_init_opcode { ptr @init_auxch }, %struct.nvbios_init_opcode { ptr @init_zm_auxch }, %struct.nvbios_init_opcode { ptr @init_i2c_long_if }, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode zeroinitializer, %struct.nvbios_init_opcode { ptr @init_gpio_ne }, %struct.nvbios_init_opcode { ptr @init_reserved }], align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: 0x%08x[%c]: unknown opcode 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: running init tables\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"%s: 0x%08x[%c]: IO_RESTRICT_PROG\09R[0x%06x] = ((0x%04x[0x%02x] & 0x%02x) >> %d) [{\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: 0x%08x[%c]: \090x%08x *\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: 0x%08x[%c]: \090x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: 0x%08x[%c]: }]\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: 0x%08x[%c]: unknown bits in register 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: 0x%08x[%c]: script needs head\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: 0x%08x[%c]: script needs OR!!\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%s: 0x%08x[%c]: script needs OR link\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: 0x%08x[%c]: REPEAT\090x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [105 x i8] c"%s: 0x%08x[%c]: IO_RESTRICT_PLL\09R[0x%06x] =PLL= ((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) IOFCOND 0x%02x [{\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s: 0x%08x[%c]: \09%dkHz *\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%s: 0x%08x[%c]: \09%dkHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"io flag condition table\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: 0x%08x[%c]: %s pointer invalid\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"%s: 0x%08x[%c]: init data too short for %s pointer\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"%s: 0x%08x[%c]: init data not found\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"%s: 0x%08x[%c]: failed to prog pll 0x%08x to %dkHz\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"%s: 0x%08x[%c]: END_REPEAT\0A\00", align 1
@.str.20 = private unnamed_addr constant [83 x i8] c"%s: 0x%08x[%c]: COPY\090x%04x[0x%02x] &= 0x%02x |= ((R[0x%06x] %s 0x%02x) & 0x%02x)\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"%s: 0x%08x[%c]: NOT\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"%s: 0x%08x[%c]: IO_FLAG_CONDITION\090x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"%s: 0x%08x[%c]: GENERIC_CONDITION\090x%02x 0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"%s: 0x%08x[%c]: script needs dp output table data\0A\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"%s: 0x%08x[%c]: INIT_GENERIC_CONDITION: unknown 0x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%s: 0x%08x[%c]: script needs connector type\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"%s: 0x%08x[%c]: auxch read failed with %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"%s: 0x%08x[%c]: script needs output for aux\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/include/nvkm/subdev/i2c.h\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"%s: 0x%08x[%c]: IO_MASK_OR\090x03d4[0x%02x] &= ~(1 << 0x%02x)\0A\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"%s: 0x%08x[%c]: IO_OR\090x03d4[0x%02x] |= (1 << 0x%02x)\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"%s: 0x%08x[%c]: ANDN_REG\09R[0x%06x] &= ~0x%08x\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"%s: 0x%08x[%c]: OR_REG\09R[0x%06x] |= 0x%08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"%s: 0x%08x[%c]: INDEX_ADDRESS_LATCHED\09R[0x%06x] : R[0x%06x]\0A\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"%s: 0x%08x[%c]: \09CTRL &= 0x%08x |= 0x%08x\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"%s: 0x%08x[%c]: \09[0x%02x] = 0x%02x\0A\00", align 1
@.str.39 = private unnamed_addr constant [91 x i8] c"%s: 0x%08x[%c]: IO_RESTRICT_PLL2\09R[0x%06x] =PLL= ((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) [{\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"%s: 0x%08x[%c]: PLL2\09R[0x%06x] =PLL= %dkHz\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"%s: 0x%08x[%c]: I2C_BYTE\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"%s: 0x%08x[%c]: \09[0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"%s: 0x%08x[%c]: ZM_I2C_BYTE\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"%s: 0x%08x[%c]: ZM_I2C\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"%s: 0x%08x[%c]: \090x%02x\0A\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"%s: 0x%08x[%c]: i2c wr failed, %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [60 x i8] c"%s: 0x%08x[%c]: TMDS\09T[0x%02x][0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@__const.init_tmds_reg.pramdac_table = private unnamed_addr constant [4 x i32] [i32 6817968, i32 6817976, i32 6826160, i32 6826168], align 4
@.str.48 = private unnamed_addr constant [39 x i8] c"%s: 0x%08x[%c]: tmds opcodes need dcb\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"%s: 0x%08x[%c]: tmds selector 0x%02x unknown\0A\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"%s: 0x%08x[%c]: TMDS_ZM_GROUP\09T[0x%02x]\0A\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"%s: 0x%08x[%c]: CR_INDEX_ADDR C[%02x] C[%02x]\0A\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"%s: 0x%08x[%c]: \09\09[0x%02x] = 0x%02x\0A\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"%s: 0x%08x[%c]: CR\09\09C[0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"%s: 0x%08x[%c]: ZM_CR\09C[0x%02x] = 0x%02x\0A\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"%s: 0x%08x[%c]: ZM_CR_GROUP\0A\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"%s: 0x%08x[%c]: \09\09C[0x%02x] = 0x%02x\0A\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"%s: 0x%08x[%c]: CONDITION_TIME\090x%02x 0x%02x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.58 = private unnamed_addr constant [16 x i8] c"condition table\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"%s: 0x%08x[%c]: \09[0x%02x] (R[0x%06x] & 0x%08x) == 0x%08x\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"%s: 0x%08x[%c]: LTIME\090x%04x\0A\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"%s: 0x%08x[%c]: ZM_REG_SEQUENCE\090x%02x\0A\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"%s: 0x%08x[%c]: \09\09R[0x%06x] = 0x%08x\0A\00", align 1
@.str.63 = private unnamed_addr constant [66 x i8] c"%s: 0x%08x[%c]: PLL_INDIRECT\09R[0x%06x] =PLL= VBIOS[%04x] = %dkHz\0A\00", align 1
@.str.64 = private unnamed_addr constant [68 x i8] c"%s: 0x%08x[%c]: ZM_REG_INDIRECT\09R[0x%06x] = VBIOS[0x%04x] = 0x%08x\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"%s: 0x%08x[%c]: SUB_DIRECT\090x%04x\0A\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"%s: 0x%08x[%c]: error parsing sub-table\0A\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"%s: 0x%08x[%c]: JUMP\090x%04x\0A\00", align 1
@.str.68 = private unnamed_addr constant [71 x i8] c"%s: 0x%08x[%c]: I2C_IF\09I2C[0x%02x][0x%02x][0x%02x] & 0x%02x == 0x%02x\0A\00", align 1
@.str.69 = private unnamed_addr constant [94 x i8] c"%s: 0x%08x[%c]: COPY_NV_REG\09R[0x%06x] &= 0x%08x |= ((R[0x%06x] %s 0x%02x) & 0x%08x ^ 0x%08x)\0A\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"%s: 0x%08x[%c]: ZM_INDEX_IO\09I[0x%04x][0x%02x] = 0x%02x\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"%s: 0x%08x[%c]: COMPUTE_MEM\0A\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"%s: 0x%08x[%c]: RESET\09R[0x%08x] = 0x%08x, 0x%08x\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"%s: 0x%08x[%c]: CONFIGURE_MEM\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"%s: 0x%08x[%c]: CONFIGURE_CLK\0A\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"%s: 0x%08x[%c]: CONFIGURE_PREINIT\0A\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"%s: 0x%08x[%c]: IO\09\09I[0x%04x] &= 0x%02x |= 0x%02x\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"%s: 0x%08x[%c]: SUB\090x%02x\0A\00", align 1
@.str.78 = private unnamed_addr constant [64 x i8] c"%s: 0x%08x[%c]: RAM_CONDITION\09(R[0x100000] & 0x%02x) == 0x%02x\0A\00", align 1
@.str.79 = private unnamed_addr constant [54 x i8] c"%s: 0x%08x[%c]: NV_REG\09R[0x%06x] &= 0x%08x |= 0x%08x\0A\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"%s: 0x%08x[%c]: MACRO\090x%02x\0A\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"macro table\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"%s: 0x%08x[%c]: DONE\0A\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"%s: 0x%08x[%c]: RESUME\0A\00", align 1
@.str.84 = private unnamed_addr constant [66 x i8] c"%s: 0x%08x[%c]: STRAP_CONDITION\09(R[0x101000] & 0x%08x) == 0x%08x\0A\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"%s: 0x%08x[%c]: TIME\090x%04x\0A\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"%s: 0x%08x[%c]: CONDITION\090x%02x\0A\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"%s: 0x%08x[%c]: IO_CONDITION\090x%02x\0A\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"io condition table\00", align 1
@.str.89 = private unnamed_addr constant [63 x i8] c"%s: 0x%08x[%c]: \09[0x%02x] (0x%04x[0x%02x] & 0x%02x) == 0x%02x\0A\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"%s: 0x%08x[%c]: ZM_REG\09R[0x%06x] = 0x%04x\0A\00", align 1
@.str.91 = private unnamed_addr constant [64 x i8] c"%s: 0x%08x[%c]: INDEX_IO\09I[0x%04x][0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"%s: 0x%08x[%c]: PLL\09R[0x%06x] =PLL= %dkHz\0A\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"%s: 0x%08x[%c]: ZM_REG\09R[0x%06x] = 0x%08x\0A\00", align 1
@.str.94 = private unnamed_addr constant [41 x i8] c"%s: 0x%08x[%c]: RAM_RESTRICT_PLL\090x%02x\0A\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"%s: 0x%08x[%c]: %dkHz *\0A\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"%s: 0x%08x[%c]: %dkHz\0A\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"%s: 0x%08x[%c]: RESET_BEGUN\0A\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"%s: 0x%08x[%c]: RESET_END\0A\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"%s: 0x%08x[%c]: GPIO\0A\00", align 1
@.str.100 = private unnamed_addr constant [67 x i8] c"%s: 0x%08x[%c]: RAM_RESTRICT_ZM_REG_GROUP\09R[0x%08x] 0x%02x 0x%02x\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"%s: 0x%08x[%c]: \09R[0x%06x] = {\0A\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"%s: 0x%08x[%c]: \09\090x%08x *\0A\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"%s: 0x%08x[%c]: \09\090x%08x\0A\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"%s: 0x%08x[%c]: \09}\0A\00", align 1
@.str.105 = private unnamed_addr constant [51 x i8] c"%s: 0x%08x[%c]: COPY_ZM_REG\09R[0x%06x] = R[0x%06x]\0A\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"%s: 0x%08x[%c]: ZM_REG_GROUP\09R[0x%06x] =\0A\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"%s: 0x%08x[%c]: RESERVED 0x%02x\09\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.110 = private unnamed_addr constant [100 x i8] c"%s: 0x%08x[%c]: INIT_XLAT\09R[0x%06x] &= 0x%08x |= (X%02x((R[0x%06x] %s 0x%02x) & 0x%02x) << 0x%02x)\0A\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"xlat table\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"%s: 0x%08x[%c]: xlat table pointer %d invalid\0A\00", align 1
@.str.113 = private unnamed_addr constant [59 x i8] c"%s: 0x%08x[%c]: ZM_MASK_ADD\09R[0x%06x] &= 0x%08x += 0x%08x\0A\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"%s: 0x%08x[%c]: AUXCH\09AUX[0x%08x] 0x%02x\0A\00", align 1
@.str.115 = private unnamed_addr constant [50 x i8] c"%s: 0x%08x[%c]: \09AUX[0x%08x] &= 0x%02x |= 0x%02x\0A\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"%s: 0x%08x[%c]: auxch write failed with %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [45 x i8] c"%s: 0x%08x[%c]: ZM_AUXCH\09AUX[0x%08x] 0x%02x\0A\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"%s: 0x%08x[%c]: \09AUX[0x%08x] = 0x%02x\0A\00", align 1
@.str.119 = private unnamed_addr constant [80 x i8] c"%s: 0x%08x[%c]: I2C_LONG_IF\09I2C[0x%02x][0x%02x][0x%02x%02x] & 0x%02x == 0x%02x\0A\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"%s: 0x%08x[%c]: GPIO_NE\09\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"%s: 0x%08x[%c]: \09FUNC[0x%02x]\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"script table\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_exec(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %45, %1
  %14 = phi i32 [ %46, %45 ], [ %11, %1 ]
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %14) #7
  %16 = zext i8 %15 to i32
  %17 = icmp ugt i8 %15, -86
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr [171 x %struct.nvbios_init_opcode], ptr @init_opcode, i32 0, i32 %16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %18, %13
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 4
  %33 = load i32, ptr %10, align 4
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 1
  %37 = and i8 %35, 5
  %38 = icmp eq i8 %37, 5
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, ptr %7, align 4
  %42 = add i32 %41, 47
  br label %43

43:                                               ; preds = %40, %27
  %44 = phi i32 [ %42, %40 ], [ 32, %27 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef %32, i32 noundef %33, i32 noundef %44, i32 noundef %16) #8
  br label %53

45:                                               ; preds = %18
  tail call void %20(ptr noundef %0) #7
  %46 = load i32, ptr %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %13

48:                                               ; preds = %45
  %49 = load i32, ptr %7, align 4
  br label %50

50:                                               ; preds = %48, %1
  %51 = phi i32 [ %49, %48 ], [ %9, %1 ]
  %52 = add i32 %51, -1
  store i32 %52, ptr %7, align 4
  br label %53

53:                                               ; preds = %50, %43, %22
  %54 = phi i32 [ 0, %50 ], [ -22, %22 ], [ -22, %43 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_post(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  %4 = alloca %struct.nvbios_init, align 4
  %5 = alloca %struct.nvbios_init, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  br i1 %1, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef %17) #8
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 4
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 5
  %24 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 6
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %4, i32 0, i32 7
  %26 = zext i1 %1 to i8
  %27 = getelementptr inbounds i8, ptr %4, i32 24
  br label %28

28:                                               ; preds = %33, %18
  %29 = phi i32 [ -1, %18 ], [ %30, %33 ]
  %30 = add i32 %29, 1
  %31 = call fastcc zeroext i16 @init_script(ptr noundef %9, i32 noundef %30)
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = zext i16 %31 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #7
  store i32 0, ptr %27, align 4, !annotation !8
  store ptr %0, ptr %4, align 4
  store i32 %34, ptr %19, align 4
  store ptr null, ptr %20, align 4
  store i32 -1, ptr %21, align 4
  store i32 0, ptr %22, align 4
  store i32 -1, ptr %23, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store i8 %26, ptr %24, align 4
  %35 = call i32 @nvbios_exec(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %28, label %75

37:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #7, !annotation !8
  %38 = call i32 @bit_entry(ptr noundef %9, i8 noundef zeroext 73, ptr noundef nonnull %3) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.nvkm_bios, ptr %9, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = add i32 %42, 5
  %46 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %45) #7
  %47 = load i32, ptr %41, align 4
  %48 = add i32 %47, 6
  %49 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %48) #7
  br label %50

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  br label %75

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %53 = load i16, ptr %52, align 2
  %54 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %55 = load i16, ptr %54, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  %56 = icmp ne i16 %55, 0
  %57 = icmp ugt i16 %53, 15
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = zext i16 %55 to i32
  %61 = add nuw nsw i32 %60, 14
  %62 = call zeroext i16 @nvbios_rd16(ptr noundef %9, i32 noundef %61) #7
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = zext i16 %62 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #7
  %66 = getelementptr inbounds i8, ptr %5, i32 24
  store i32 0, ptr %66, align 4, !annotation !8
  store ptr %0, ptr %5, align 4
  %67 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 1
  store i32 %65, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 2
  store ptr null, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 3
  store i32 -1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 4
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 5
  store i32 -1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 6
  %73 = getelementptr inbounds %struct.nvbios_init, ptr %5, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %73, i8 0, i64 16, i1 false)
  store i8 %26, ptr %72, align 4
  %74 = call i32 @nvbios_exec(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #7
  br label %75

75:                                               ; preds = %64, %59, %51, %50, %33
  %76 = phi i32 [ %74, %64 ], [ 0, %59 ], [ 0, %51 ], [ 0, %50 ], [ %35, %33 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @init_script(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvbios_init, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store ptr %0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = add i32 %6, 5
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %9) #7
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %13, 6
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %14) #7
  %16 = zext i8 %15 to i16
  %17 = or i16 %12, %16
  %18 = add i16 %17, -1
  %19 = icmp ult i16 %18, 1295
  br i1 %19, label %20, label %31

20:                                               ; preds = %8
  %21 = icmp sgt i32 %1, 1
  %22 = icmp ult i16 %17, 256
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %5, align 4
  %26 = icmp ult i16 %17, 512
  %27 = select i1 %26, i32 14, i32 18
  %28 = add i32 %25, %27
  %29 = and i32 %28, 65535
  %30 = shl i32 %1, 1
  br label %37

31:                                               ; preds = %8, %2
  %32 = call fastcc zeroext i16 @init_table_(ptr noundef nonnull %3, i16 noundef zeroext 0, ptr noundef nonnull @.str.124)
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = zext i16 %32 to i32
  %36 = shl i32 %1, 1
  br label %37

37:                                               ; preds = %34, %24
  %38 = phi i32 [ %35, %34 ], [ %30, %24 ]
  %39 = phi i32 [ %36, %34 ], [ %29, %24 ]
  %40 = add i32 %39, %38
  %41 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %40) #7
  br label %42

42:                                               ; preds = %37, %31, %20
  %43 = phi i16 [ 0, %20 ], [ 0, %31 ], [ %41, %37 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #7
  ret i16 %43
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_restrict_prog(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 3
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 4
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 5
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 6
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %21) #7
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 7
  %25 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %24) #7
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %53

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 4
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 1
  %40 = and i8 %38, 5
  %41 = icmp eq i8 %40, 5
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 47
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %46, %43 ], [ 32, %30 ]
  %49 = zext i16 %10 to i32
  %50 = zext i8 %13 to i32
  %51 = zext i8 %16 to i32
  %52 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef %35, i32 noundef %36, i32 noundef %48, i32 noundef %25, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52) #8
  br label %53

53:                                               ; preds = %47, %1
  %54 = load i32, ptr %7, align 4
  %55 = add i32 %54, 11
  store i32 %55, ptr %7, align 4
  %56 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 1
  %59 = and i8 %57, 5
  %60 = icmp eq i8 %59, 5
  %61 = or i1 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #7
  %67 = getelementptr inbounds %struct.nvkm_subdev, ptr %63, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %68, i32 noundef %66, i16 noundef zeroext %10, i8 noundef zeroext %13) #7
  br label %70

70:                                               ; preds = %62, %53
  %71 = phi i8 [ %69, %62 ], [ 0, %53 ]
  %72 = icmp eq i8 %22, 0
  br i1 %72, label %148, label %73

73:                                               ; preds = %70
  %74 = and i8 %71, %16
  %75 = zext i8 %74 to i32
  %76 = zext i8 %19 to i32
  %77 = lshr i32 %75, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %80 = load i32, ptr %7, align 4
  br label %81

81:                                               ; preds = %143, %73
  %82 = phi i32 [ %80, %73 ], [ %145, %143 ]
  %83 = phi i8 [ 0, %73 ], [ %146, %143 ]
  %84 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %82) #7
  %85 = icmp eq i8 %83, %78
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = icmp ugt i32 %88, 4
  br i1 %85, label %90, label %125

90:                                               ; preds = %81
  br i1 %89, label %91, label %109

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 4
  %97 = load i32, ptr %7, align 4
  %98 = load i8, ptr %56, align 4
  %99 = icmp eq i8 %98, 1
  %100 = and i8 %98, 5
  %101 = icmp eq i8 %100, 5
  %102 = or i1 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, ptr %79, align 4
  %105 = add i32 %104, 47
  br label %106

106:                                              ; preds = %103, %91
  %107 = phi i32 [ %105, %103 ], [ 32, %91 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.3, ptr noundef %96, i32 noundef %97, i32 noundef %107, i32 noundef %84) #8
  %108 = load ptr, ptr %0, align 4
  br label %109

109:                                              ; preds = %106, %90
  %110 = phi ptr [ %108, %106 ], [ %86, %90 ]
  %111 = getelementptr inbounds %struct.nvkm_subdev, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %25) #7
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %143, label %115

115:                                              ; preds = %109
  %116 = load i8, ptr %56, align 4
  %117 = icmp eq i8 %116, 1
  %118 = and i8 %116, 5
  %119 = icmp eq i8 %118, 5
  %120 = or i1 %117, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %84) #7, !srcloc !10
  br label %143

125:                                              ; preds = %81
  br i1 %89, label %126, label %143

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nvkm_device, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 4
  %132 = load i32, ptr %7, align 4
  %133 = load i8, ptr %56, align 4
  %134 = icmp eq i8 %133, 1
  %135 = and i8 %133, 5
  %136 = icmp eq i8 %135, 5
  %137 = or i1 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i32, ptr %79, align 4
  %140 = add i32 %139, 47
  br label %141

141:                                              ; preds = %138, %126
  %142 = phi i32 [ %140, %138 ], [ 32, %126 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %130, ptr noundef nonnull @.str.4, ptr noundef %131, i32 noundef %132, i32 noundef %142, i32 noundef %84) #8
  br label %143

143:                                              ; preds = %141, %125, %121, %115, %109
  %144 = load i32, ptr %7, align 4
  %145 = add i32 %144, 4
  store i32 %145, ptr %7, align 4
  %146 = add nuw i8 %83, 1
  %147 = icmp ult i8 %146, %22
  br i1 %147, label %81, label %148

148:                                              ; preds = %143, %70
  %149 = load ptr, ptr %0, align 4
  %150 = getelementptr inbounds %struct.nvkm_subdev, ptr %149, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = icmp ugt i32 %151, 4
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.nvkm_subdev, ptr %149, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.nvkm_device, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.nvkm_subdev, ptr %149, i32 0, i32 4
  %159 = load i32, ptr %7, align 4
  %160 = load i8, ptr %56, align 4
  %161 = icmp eq i8 %160, 1
  %162 = and i8 %160, 5
  %163 = icmp eq i8 %162, 5
  %164 = or i1 %161, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 47
  br label %169

169:                                              ; preds = %165, %153
  %170 = phi i32 [ %168, %165 ], [ 32, %153 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.5, ptr noundef %158, i32 noundef %159, i32 noundef %170) #8
  br label %171

171:                                              ; preds = %169, %148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_repeat(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 4
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 1
  %27 = and i8 %25, 5
  %28 = icmp eq i8 %27, 5
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 47
  br label %34

34:                                               ; preds = %30, %17
  %35 = phi i32 [ %33, %30 ], [ 32, %17 ]
  %36 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef %22, i32 noundef %23, i32 noundef %35, i32 noundef %36) #8
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 2
  store i32 %39, ptr %11, align 4
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 9
  store i32 %39, ptr %40, align 4
  %41 = icmp eq i8 %10, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = zext i8 %10 to i32
  %46 = add nsw i32 %45, -1
  store i32 %39, ptr %7, align 4
  %47 = tail call i32 @nvbios_exec(ptr noundef %0)
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %72, %42
  %50 = phi i32 [ %74, %72 ], [ %46, %42 ]
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 4
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 4
  %61 = load i32, ptr %7, align 4
  %62 = load i8, ptr %43, align 4
  %63 = icmp eq i8 %62, 1
  %64 = and i8 %62, 5
  %65 = icmp eq i8 %64, 5
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, ptr %44, align 4
  %69 = add i32 %68, 47
  br label %70

70:                                               ; preds = %67, %55
  %71 = phi i32 [ %69, %67 ], [ 32, %55 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.10, ptr noundef %60, i32 noundef %61, i32 noundef %71, i32 noundef %50) #8
  br label %72

72:                                               ; preds = %70, %49
  %73 = load i32, ptr %11, align 4
  %74 = add nsw i32 %50, -1
  store i32 %73, ptr %7, align 4
  %75 = tail call i32 @nvbios_exec(ptr noundef %0)
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %77, label %49

77:                                               ; preds = %72, %42
  %78 = load i32, ptr %40, align 4
  br label %79

79:                                               ; preds = %77, %37
  %80 = phi i32 [ %78, %77 ], [ %39, %37 ]
  store i32 %80, ptr %7, align 4
  %81 = and i32 %12, 65535
  store i32 %81, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_restrict_pll(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 3
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 4
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 5
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 6
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %21) #7
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 7
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %24) #7
  %26 = load i32, ptr %7, align 4
  %27 = add i32 %26, 8
  %28 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %27) #7
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 4
  br i1 %32, label %33, label %57

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 4
  %39 = load i32, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 1
  %43 = and i8 %41, 5
  %44 = icmp eq i8 %43, 5
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 47
  br label %50

50:                                               ; preds = %46, %33
  %51 = phi i32 [ %49, %46 ], [ 32, %33 ]
  %52 = zext i16 %10 to i32
  %53 = zext i8 %13 to i32
  %54 = zext i8 %16 to i32
  %55 = zext i8 %19 to i32
  %56 = sext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef %38, i32 noundef %39, i32 noundef %51, i32 noundef %28, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %50, %1
  %58 = load i32, ptr %7, align 4
  %59 = add i32 %58, 12
  store i32 %59, ptr %7, align 4
  %60 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %61 = load i8, ptr %60, align 4
  %62 = icmp eq i8 %61, 1
  %63 = and i8 %61, 5
  %64 = icmp eq i8 %63, 5
  %65 = or i1 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #7
  %71 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %72, i32 noundef %70, i16 noundef zeroext %10, i8 noundef zeroext %13) #7
  br label %74

74:                                               ; preds = %66, %57
  %75 = phi i8 [ %73, %66 ], [ 0, %57 ]
  %76 = icmp eq i8 %25, 0
  br i1 %76, label %180, label %77

77:                                               ; preds = %74
  %78 = and i8 %75, %16
  %79 = zext i8 %78 to i32
  %80 = zext i8 %19 to i32
  %81 = lshr i32 %79, %80
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %84 = icmp sgt i8 %22, 0
  %85 = load i32, ptr %7, align 4
  br label %86

86:                                               ; preds = %175, %77
  %87 = phi i32 [ %85, %77 ], [ %177, %175 ]
  %88 = phi i8 [ 0, %77 ], [ %178, %175 ]
  %89 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %87) #7
  %90 = zext i16 %89 to i32
  %91 = mul nuw nsw i32 %90, 10
  %92 = icmp eq i8 %88, %82
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %95, 4
  br i1 %92, label %97, label %157

97:                                               ; preds = %86
  br i1 %96, label %98, label %115

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 4
  %104 = load i32, ptr %7, align 4
  %105 = load i8, ptr %60, align 4
  %106 = icmp eq i8 %105, 1
  %107 = and i8 %105, 5
  %108 = icmp eq i8 %107, 5
  %109 = or i1 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load i32, ptr %83, align 4
  %112 = add i32 %111, 47
  br label %113

113:                                              ; preds = %110, %98
  %114 = phi i32 [ %112, %110 ], [ 32, %98 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.12, ptr noundef %103, i32 noundef %104, i32 noundef %114, i32 noundef %91) #8
  br label %115

115:                                              ; preds = %113, %97
  br i1 %84, label %116, label %120

116:                                              ; preds = %115
  %117 = tail call fastcc zeroext i1 @init_io_flag_condition_met(ptr noundef %0, i8 noundef zeroext %22)
  %118 = mul nuw nsw i32 %90, 20
  %119 = select i1 %117, i32 %118, i32 %91
  br label %120

120:                                              ; preds = %116, %115
  %121 = phi i32 [ %91, %115 ], [ %119, %116 ]
  %122 = load i8, ptr %60, align 4
  %123 = icmp eq i8 %122, 1
  %124 = and i8 %122, 5
  %125 = icmp eq i8 %124, 5
  %126 = or i1 %123, %125
  br i1 %126, label %127, label %175

127:                                              ; preds = %120
  %128 = load ptr, ptr %0, align 4
  %129 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvkm_device, ptr %130, i32 0, i32 22
  %132 = load ptr, ptr %131, align 4
  %133 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %132, i32 noundef %28, i32 noundef %121) #7
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %175, label %135

135:                                              ; preds = %127
  %136 = load ptr, ptr %0, align 4
  %137 = getelementptr inbounds %struct.nvkm_subdev, ptr %136, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp ugt i32 %138, 1
  br i1 %139, label %140, label %175

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.nvkm_subdev, ptr %136, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nvkm_device, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_subdev, ptr %136, i32 0, i32 4
  %146 = load i32, ptr %7, align 4
  %147 = load i8, ptr %60, align 4
  %148 = icmp eq i8 %147, 1
  %149 = and i8 %147, 5
  %150 = icmp eq i8 %149, 5
  %151 = or i1 %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, ptr %83, align 4
  %154 = add i32 %153, 47
  br label %155

155:                                              ; preds = %152, %140
  %156 = phi i32 [ %154, %152 ], [ 32, %140 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.18, ptr noundef %145, i32 noundef %146, i32 noundef %156, i32 noundef %28, i32 noundef %121) #8
  br label %175

157:                                              ; preds = %86
  br i1 %96, label %158, label %175

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nvkm_device, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 4
  %164 = load i32, ptr %7, align 4
  %165 = load i8, ptr %60, align 4
  %166 = icmp eq i8 %165, 1
  %167 = and i8 %165, 5
  %168 = icmp eq i8 %167, 5
  %169 = or i1 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = load i32, ptr %83, align 4
  %172 = add i32 %171, 47
  br label %173

173:                                              ; preds = %170, %158
  %174 = phi i32 [ %172, %170 ], [ 32, %158 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %162, ptr noundef nonnull @.str.13, ptr noundef %163, i32 noundef %164, i32 noundef %174, i32 noundef %91) #8
  br label %175

175:                                              ; preds = %173, %157, %155, %135, %127, %120
  %176 = load i32, ptr %7, align 4
  %177 = add i32 %176, 2
  store i32 %177, ptr %7, align 4
  %178 = add nuw i8 %88, 1
  %179 = icmp ult i8 %178, %25
  br i1 %179, label %86, label %180

180:                                              ; preds = %175, %74
  %181 = load ptr, ptr %0, align 4
  %182 = getelementptr inbounds %struct.nvkm_subdev, ptr %181, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = icmp ugt i32 %183, 4
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.nvkm_subdev, ptr %181, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.nvkm_device, ptr %187, i32 0, i32 2
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.nvkm_subdev, ptr %181, i32 0, i32 4
  %191 = load i32, ptr %7, align 4
  %192 = load i8, ptr %60, align 4
  %193 = icmp eq i8 %192, 1
  %194 = and i8 %192, 5
  %195 = icmp eq i8 %194, 5
  %196 = or i1 %193, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 47
  br label %201

201:                                              ; preds = %197, %185
  %202 = phi i32 [ %200, %197 ], [ 32, %185 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %189, ptr noundef nonnull @.str.5, ptr noundef %190, i32 noundef %191, i32 noundef %202) #8
  br label %203

203:                                              ; preds = %201, %180
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_end_repeat(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 1
  %17 = and i8 %15, 5
  %18 = icmp eq i8 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 47
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i32 [ %23, %20 ], [ 32, %6 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef %13, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 9
  store i32 %29, ptr %34, align 4
  store i32 0, ptr %27, align 4
  br label %35

35:                                               ; preds = %33, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_copy(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 6
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 7
  %19 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 9
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %21) #7
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 10
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %24) #7
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %59

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 4
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 1
  %40 = and i8 %38, 5
  %41 = icmp eq i8 %40, 5
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 47
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %46, %43 ], [ 32, %30 ]
  %49 = zext i16 %19 to i32
  %50 = zext i8 %22 to i32
  %51 = zext i8 %25 to i32
  %52 = zext i8 %13 to i32
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr @.str.22, ptr @.str.21
  %56 = sub nuw nsw i32 256, %52
  %57 = select i1 %54, i32 %52, i32 %56
  %58 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.20, ptr noundef %35, i32 noundef %36, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %10, ptr noundef nonnull %55, i32 noundef %57, i32 noundef %58) #8
  br label %59

59:                                               ; preds = %47, %1
  %60 = load i32, ptr %7, align 4
  %61 = add i32 %60, 11
  store i32 %61, ptr %7, align 4
  %62 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 1
  %65 = and i8 %63, 5
  %66 = icmp eq i8 %65, 5
  %67 = or i1 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0) #7
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %69, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %74, i32 noundef %72, i16 noundef zeroext %19, i8 noundef zeroext %22) #7
  br label %76

76:                                               ; preds = %68, %59
  %77 = phi i8 [ %75, %68 ], [ 0, %59 ]
  %78 = and i8 %77, %25
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %95, label %84

84:                                               ; preds = %76
  %85 = load i8, ptr %62, align 4
  %86 = icmp eq i8 %85, 1
  %87 = and i8 %85, 5
  %88 = icmp eq i8 %87, 5
  %89 = or i1 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 11
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 %82
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %95

95:                                               ; preds = %90, %84, %76
  %96 = phi i32 [ %94, %90 ], [ 0, %84 ], [ 0, %76 ]
  %97 = zext i8 %13 to i32
  %98 = lshr i32 %96, %97
  %99 = sub nuw nsw i32 256, %97
  %100 = shl i32 %96, %99
  %101 = icmp slt i8 %13, 0
  %102 = select i1 %101, i32 %100, i32 %98
  %103 = trunc i32 %102 to i8
  %104 = and i8 %16, %103
  %105 = or i8 %104, %78
  %106 = load ptr, ptr %0, align 4
  %107 = getelementptr inbounds %struct.nvkm_subdev, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 15
  %110 = load i32, ptr %109, align 8
  %111 = icmp ult i32 %110, 80
  br i1 %111, label %112, label %118

112:                                              ; preds = %95
  %113 = icmp eq i16 %19, 980
  %114 = icmp eq i8 %22, 68
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %117, align 4
  br label %118

118:                                              ; preds = %116, %112, %95
  %119 = load i8, ptr %62, align 4
  %120 = icmp eq i8 %119, 1
  %121 = and i8 %119, 5
  %122 = icmp eq i8 %121, 5
  %123 = or i1 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = tail call i32 @llvm.smax.i32(i32 %126, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %108, i32 noundef %127, i16 noundef zeroext %19, i8 noundef zeroext %22, i8 noundef zeroext %105) #7
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i32, ptr %109, align 8
  %130 = icmp ult i32 %129, 80
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = icmp eq i16 %19, 980
  %133 = icmp eq i8 %22, 68
  %134 = and i1 %132, %133
  %135 = icmp eq i8 %105, 3
  %136 = and i1 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %138, align 4
  br label %139

139:                                              ; preds = %137, %131, %128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_not(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 1
  %17 = and i8 %15, 5
  %18 = icmp eq i8 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 47
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i32 [ %23, %20 ], [ 32, %6 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef %11, i32 noundef %13, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = xor i8 %31, 2
  store i8 %32, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_flag_condition(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 2
  store i32 %37, ptr %7, align 4
  %38 = tail call fastcc zeroext i1 @init_io_flag_condition_met(ptr noundef %0, i8 noundef zeroext %10)
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_generic_condition(ptr noundef %0) #0 {
  %2 = alloca %struct.nvbios_connE, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.nvbios_dpout, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %15 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  %18 = tail call zeroext i8 @nvbios_rd08(ptr noundef %14, i32 noundef %17) #7
  %19 = load i32, ptr %15, align 4
  %20 = add i32 %19, 2
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %14, i32 noundef %20) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 0, ptr %9, align 1, !annotation !8
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 4
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = zext i8 %18 to i32
  br label %49

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 4
  %34 = load i32, ptr %15, align 4
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 1
  %38 = and i8 %36, 5
  %39 = icmp eq i8 %38, 5
  %40 = or i1 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 47
  br label %45

45:                                               ; preds = %41, %28
  %46 = phi i32 [ %44, %41 ], [ 32, %28 ]
  %47 = zext i8 %18 to i32
  %48 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.25, ptr noundef %33, i32 noundef %34, i32 noundef %46, i32 noundef %47, i32 noundef %48) #8
  br label %49

49:                                               ; preds = %45, %26
  %50 = phi i32 [ %27, %26 ], [ %47, %45 ]
  %51 = load i32, ptr %15, align 4
  %52 = add i32 %51, 3
  store i32 %52, ptr %15, align 4
  switch i8 %18, label %164 [
    i8 0, label %53
    i8 1, label %106
    i8 2, label %106
    i8 5, label %152
    i8 7, label %160
  ]

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 21
  %58 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %59 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 1
  %62 = and i8 %60, 5
  %63 = icmp eq i8 %62, 5
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dcb_output, ptr %67, i32 0, i32 6
  %71 = load i8, ptr %70, align 2
  %72 = call i32 @nvbios_connEp(ptr noundef %58, i8 noundef zeroext %71, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load ptr, ptr %0, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = phi ptr [ %75, %74 ], [ %54, %65 ]
  %78 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 4
  %87 = load i32, ptr %15, align 4
  %88 = load i8, ptr %59, align 4
  %89 = icmp eq i8 %88, 1
  %90 = and i8 %88, 5
  %91 = icmp eq i8 %90, 5
  %92 = or i1 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 47
  br label %97

97:                                               ; preds = %93, %81
  %98 = phi i32 [ %96, %93 ], [ 32, %81 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.28, ptr noundef %86, i32 noundef %87, i32 noundef %98) #8
  br label %99

99:                                               ; preds = %97, %76, %53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  br label %103

100:                                              ; preds = %69
  %101 = load i8, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  %102 = icmp eq i8 %101, 71
  br i1 %102, label %192, label %103

103:                                              ; preds = %100, %99
  %104 = load i8, ptr %59, align 4
  %105 = or i8 %104, 2
  store i8 %105, ptr %59, align 4
  br label %192

106:                                              ; preds = %49, %49
  %107 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %130, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.dcb_output, ptr %108, i32 0, i32 9
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds %struct.dcb_output, ptr %108, i32 0, i32 13
  %115 = load i32, ptr %114, align 4
  %116 = shl i32 %115, 6
  %117 = or i32 %116, %113
  %118 = trunc i32 %117 to i16
  %119 = call zeroext i16 @nvbios_dpout_match(ptr noundef %14, i16 noundef zeroext 6, i16 noundef zeroext %118, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5) #7
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.nvbios_dpout, ptr %5, i32 0, i32 2
  %123 = load i8, ptr %122, align 4
  %124 = and i8 %123, %18
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %192

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %128 = load i8, ptr %127, align 4
  %129 = or i8 %128, 2
  store i8 %129, ptr %127, align 4
  br label %192

130:                                              ; preds = %110, %106
  %131 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %132 = load i8, ptr %131, align 4
  %133 = icmp eq i8 %132, 1
  %134 = and i8 %132, 5
  %135 = icmp eq i8 %134, 5
  %136 = or i1 %133, %135
  br i1 %136, label %137, label %192

137:                                              ; preds = %130
  %138 = load ptr, ptr %0, align 4
  %139 = getelementptr inbounds %struct.nvkm_subdev, ptr %138, i32 0, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = icmp ugt i32 %140, 1
  br i1 %141, label %142, label %192

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.nvkm_subdev, ptr %138, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.nvkm_device, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.nvkm_subdev, ptr %138, i32 0, i32 4
  %148 = load i32, ptr %15, align 4
  %149 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, 47
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.26, ptr noundef %147, i32 noundef %148, i32 noundef %151) #8
  br label %192

152:                                              ; preds = %49
  %153 = tail call fastcc zeroext i8 @init_rdauxr(ptr noundef %0, i32 noundef 13)
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %158 = load i8, ptr %157, align 4
  %159 = or i8 %158, 2
  store i8 %159, ptr %157, align 4
  br label %192

160:                                              ; preds = %49
  %161 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %162 = load i8, ptr %161, align 4
  %163 = or i8 %162, 2
  store i8 %163, ptr %161, align 4
  br label %192

164:                                              ; preds = %49
  %165 = load ptr, ptr %0, align 4
  %166 = getelementptr inbounds %struct.nvkm_subdev, ptr %165, i32 0, i32 5
  %167 = load i32, ptr %166, align 4
  %168 = icmp ugt i32 %167, 1
  br i1 %168, label %169, label %188

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.nvkm_subdev, ptr %165, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.nvkm_device, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.nvkm_subdev, ptr %165, i32 0, i32 4
  %175 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %176 = load i8, ptr %175, align 4
  %177 = icmp eq i8 %176, 1
  %178 = and i8 %176, 5
  %179 = icmp eq i8 %178, 5
  %180 = or i1 %177, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 47
  br label %185

185:                                              ; preds = %181, %169
  %186 = phi i32 [ %184, %181 ], [ 32, %169 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %173, ptr noundef nonnull @.str.27, ptr noundef %174, i32 noundef %52, i32 noundef %186, i32 noundef %50) #8
  %187 = load i32, ptr %15, align 4
  br label %188

188:                                              ; preds = %185, %164
  %189 = phi i32 [ %187, %185 ], [ %52, %164 ]
  %190 = zext i8 %21 to i32
  %191 = add i32 %189, %190
  store i32 %191, ptr %15, align 4
  br label %192

192:                                              ; preds = %188, %160, %156, %152, %142, %137, %130, %126, %121, %103, %100
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_mask_or(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 1
  %14 = and i8 %12, 5
  %15 = icmp eq i8 %14, 5
  %16 = or i1 %13, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 4
  %32 = load i32, ptr %7, align 4
  %33 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.8, ptr noundef %31, i32 noundef %32, i32 noundef %35) #8
  br label %36

36:                                               ; preds = %26, %21, %17, %1
  %37 = phi i32 [ %19, %17 ], [ 0, %21 ], [ 0, %26 ], [ 0, %1 ]
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 4
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 4
  %48 = load i32, ptr %7, align 4
  %49 = load i8, ptr %11, align 4
  %50 = icmp eq i8 %49, 1
  %51 = and i8 %49, 5
  %52 = icmp eq i8 %51, 5
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 47
  br label %58

58:                                               ; preds = %54, %42
  %59 = phi i32 [ %57, %54 ], [ 32, %42 ]
  %60 = zext i8 %10 to i32
  %61 = and i32 %37, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.32, ptr noundef %47, i32 noundef %48, i32 noundef %59, i32 noundef %60, i32 noundef %61) #8
  br label %62

62:                                               ; preds = %58, %36
  %63 = load i32, ptr %7, align 4
  %64 = add i32 %63, 2
  store i32 %64, ptr %7, align 4
  %65 = load i8, ptr %11, align 4
  %66 = icmp eq i8 %65, 1
  %67 = and i8 %65, 5
  %68 = icmp eq i8 %67, 5
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 0) #7
  %75 = getelementptr inbounds %struct.nvkm_subdev, ptr %71, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %76, i32 noundef %74, i16 noundef zeroext 980, i8 noundef zeroext %10) #7
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i8 [ %77, %70 ], [ 0, %62 ]
  %80 = and i32 %37, 255
  %81 = shl nuw i32 1, %80
  %82 = trunc i32 %81 to i8
  %83 = xor i8 %82, -1
  %84 = and i8 %79, %83
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 15
  %89 = load i32, ptr %88, align 8
  %90 = icmp ult i32 %89, 80
  %91 = icmp eq i8 %10, 68
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %78
  %96 = load i8, ptr %11, align 4
  %97 = icmp eq i8 %96, 1
  %98 = and i8 %96, 5
  %99 = icmp eq i8 %98, 5
  %100 = or i1 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @llvm.smax.i32(i32 %103, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %87, i32 noundef %104, i16 noundef zeroext 980, i8 noundef zeroext %10, i8 noundef zeroext %84) #7
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, ptr %88, align 8
  %107 = icmp ult i32 %106, 80
  %108 = icmp eq i8 %84, 3
  %109 = and i1 %91, %108
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %105
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_or(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 1
  %14 = and i8 %12, 5
  %15 = icmp eq i8 %14, 5
  %16 = or i1 %13, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 4
  %32 = load i32, ptr %7, align 4
  %33 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.8, ptr noundef %31, i32 noundef %32, i32 noundef %35) #8
  br label %36

36:                                               ; preds = %26, %21, %17, %1
  %37 = phi i32 [ %19, %17 ], [ 0, %21 ], [ 0, %26 ], [ 0, %1 ]
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 4
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 4
  %48 = load i32, ptr %7, align 4
  %49 = load i8, ptr %11, align 4
  %50 = icmp eq i8 %49, 1
  %51 = and i8 %49, 5
  %52 = icmp eq i8 %51, 5
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 47
  br label %58

58:                                               ; preds = %54, %42
  %59 = phi i32 [ %57, %54 ], [ 32, %42 ]
  %60 = zext i8 %10 to i32
  %61 = and i32 %37, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.33, ptr noundef %47, i32 noundef %48, i32 noundef %59, i32 noundef %60, i32 noundef %61) #8
  br label %62

62:                                               ; preds = %58, %36
  %63 = load i32, ptr %7, align 4
  %64 = add i32 %63, 2
  store i32 %64, ptr %7, align 4
  %65 = load i8, ptr %11, align 4
  %66 = icmp eq i8 %65, 1
  %67 = and i8 %65, 5
  %68 = icmp eq i8 %67, 5
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 0) #7
  %75 = getelementptr inbounds %struct.nvkm_subdev, ptr %71, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %76, i32 noundef %74, i16 noundef zeroext 980, i8 noundef zeroext %10) #7
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i8 [ %77, %70 ], [ 0, %62 ]
  %80 = and i32 %37, 255
  %81 = shl nuw i32 1, %80
  %82 = trunc i32 %81 to i8
  %83 = or i8 %79, %82
  %84 = load ptr, ptr %0, align 4
  %85 = getelementptr inbounds %struct.nvkm_subdev, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 15
  %88 = load i32, ptr %87, align 8
  %89 = icmp ult i32 %88, 80
  %90 = icmp eq i8 %10, 68
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %92, %78
  %95 = load i8, ptr %11, align 4
  %96 = icmp eq i8 %95, 1
  %97 = and i8 %95, 5
  %98 = icmp eq i8 %97, 5
  %99 = or i1 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @llvm.smax.i32(i32 %102, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %86, i32 noundef %103, i16 noundef zeroext 980, i8 noundef zeroext %10, i8 noundef zeroext %83) #7
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, ptr %87, align 8
  %106 = icmp ult i32 %105, 80
  %107 = icmp eq i8 %83, 3
  %108 = and i1 %90, %107
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %111, align 4
  br label %112

112:                                              ; preds = %110, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_andn_reg(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.34, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %13) #8
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi ptr [ %37, %35 ], [ %14, %1 ]
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 9
  store i32 %41, ptr %7, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %62, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 1
  %50 = and i8 %48, 5
  %51 = icmp eq i8 %50, 5
  %52 = or i1 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %58 = xor i32 %13, -1
  %59 = and i32 %57, %58
  %60 = load ptr, ptr %54, align 4
  %61 = getelementptr i8, ptr %60, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #7, !srcloc !10
  br label %62

62:                                               ; preds = %53, %46, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_or_reg(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.35, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %13) #8
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi ptr [ %37, %35 ], [ %14, %1 ]
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 9
  store i32 %41, ptr %7, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %61, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 1
  %50 = and i8 %48, 5
  %51 = icmp eq i8 %50, 5
  %52 = or i1 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %58 = or i32 %57, %13
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr i8, ptr %59, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !10
  br label %61

61:                                               ; preds = %53, %46, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_idx_addr_latched(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 9
  %16 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 13
  %19 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 17
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %21) #7
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 4
  br i1 %26, label %27, label %69

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 4
  %33 = load i32, ptr %7, align 4
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 1
  %37 = and i8 %35, 5
  %38 = icmp eq i8 %37, 5
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 47
  br label %44

44:                                               ; preds = %40, %27
  %45 = phi i32 [ %43, %40 ], [ 32, %27 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef %32, i32 noundef %33, i32 noundef %45, i32 noundef %10, i32 noundef %13) #8
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 4
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 4
  %56 = load i32, ptr %7, align 4
  %57 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 1
  %60 = and i8 %58, 5
  %61 = icmp eq i8 %60, 5
  %62 = or i1 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 47
  br label %67

67:                                               ; preds = %63, %50
  %68 = phi i32 [ %66, %63 ], [ 32, %50 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.37, ptr noundef %55, i32 noundef %56, i32 noundef %68, i32 noundef %16, i32 noundef %19) #8
  br label %69

69:                                               ; preds = %67, %44, %1
  %70 = load i32, ptr %7, align 4
  %71 = add i32 %70, 18
  store i32 %71, ptr %7, align 4
  %72 = icmp eq i8 %22, 0
  br i1 %72, label %156, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  br label %76

76:                                               ; preds = %154, %73
  %77 = phi i32 [ %71, %73 ], [ %155, %154 ]
  %78 = phi i8 [ %22, %73 ], [ %79, %154 ]
  %79 = add i8 %78, -1
  %80 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %77) #7
  %81 = load i32, ptr %7, align 4
  %82 = add i32 %81, 1
  %83 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %82) #7
  %84 = load ptr, ptr %0, align 4
  %85 = getelementptr inbounds %struct.nvkm_subdev, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, 4
  br i1 %87, label %90, label %88

88:                                               ; preds = %76
  %89 = zext i8 %83 to i32
  br label %110

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.nvkm_subdev, ptr %84, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.nvkm_subdev, ptr %84, i32 0, i32 4
  %96 = load i32, ptr %7, align 4
  %97 = load i8, ptr %74, align 4
  %98 = icmp eq i8 %97, 1
  %99 = and i8 %97, 5
  %100 = icmp eq i8 %99, 5
  %101 = or i1 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load i32, ptr %75, align 4
  %104 = add i32 %103, 47
  br label %105

105:                                              ; preds = %102, %90
  %106 = phi i32 [ %104, %102 ], [ 32, %90 ]
  %107 = zext i8 %80 to i32
  %108 = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.38, ptr noundef %95, i32 noundef %96, i32 noundef %106, i32 noundef %107, i32 noundef %108) #8
  %109 = load ptr, ptr %0, align 4
  br label %110

110:                                              ; preds = %105, %88
  %111 = phi i32 [ %89, %88 ], [ %108, %105 ]
  %112 = phi ptr [ %84, %88 ], [ %109, %105 ]
  %113 = load i32, ptr %7, align 4
  %114 = add i32 %113, 2
  store i32 %114, ptr %7, align 4
  %115 = getelementptr inbounds %struct.nvkm_subdev, ptr %112, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %13) #7
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %129, label %119

119:                                              ; preds = %110
  %120 = load i8, ptr %74, align 4
  %121 = icmp eq i8 %120, 1
  %122 = and i8 %120, 5
  %123 = icmp eq i8 %122, 5
  %124 = or i1 %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 11
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %111) #7, !srcloc !10
  br label %129

129:                                              ; preds = %125, %119, %110
  %130 = zext i8 %80 to i32
  %131 = or i32 %19, %130
  %132 = load ptr, ptr %0, align 4
  %133 = getelementptr inbounds %struct.nvkm_subdev, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %152, label %137

137:                                              ; preds = %129
  %138 = load i8, ptr %74, align 4
  %139 = icmp eq i8 %138, 1
  %140 = and i8 %138, 5
  %141 = icmp eq i8 %140, 5
  %142 = or i1 %139, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 11
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %145, i32 %135
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %148 = and i32 %147, %16
  %149 = or i32 %131, %148
  %150 = load ptr, ptr %144, align 4
  %151 = getelementptr i8, ptr %150, i32 %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #7, !srcloc !10
  br label %152

152:                                              ; preds = %143, %137, %129
  %153 = icmp eq i8 %79, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %152
  %155 = load i32, ptr %7, align 4
  br label %76

156:                                              ; preds = %152, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_restrict_pll2(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 3
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 4
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 5
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 6
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %21) #7
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 7
  %25 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %24) #7
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %53

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 4
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 1
  %40 = and i8 %38, 5
  %41 = icmp eq i8 %40, 5
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 47
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %46, %43 ], [ 32, %30 ]
  %49 = zext i16 %10 to i32
  %50 = zext i8 %13 to i32
  %51 = zext i8 %16 to i32
  %52 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.39, ptr noundef %35, i32 noundef %36, i32 noundef %48, i32 noundef %25, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52) #8
  br label %53

53:                                               ; preds = %47, %1
  %54 = load i32, ptr %7, align 4
  %55 = add i32 %54, 11
  store i32 %55, ptr %7, align 4
  %56 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 1
  %59 = and i8 %57, 5
  %60 = icmp eq i8 %59, 5
  %61 = or i1 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #7
  %67 = getelementptr inbounds %struct.nvkm_subdev, ptr %63, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %68, i32 noundef %66, i16 noundef zeroext %10, i8 noundef zeroext %13) #7
  br label %70

70:                                               ; preds = %62, %53
  %71 = phi i8 [ %69, %62 ], [ 0, %53 ]
  %72 = icmp eq i8 %22, 0
  br i1 %72, label %167, label %73

73:                                               ; preds = %70
  %74 = and i8 %71, %16
  %75 = zext i8 %74 to i32
  %76 = zext i8 %19 to i32
  %77 = lshr i32 %75, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %80 = load i32, ptr %7, align 4
  br label %81

81:                                               ; preds = %162, %73
  %82 = phi i32 [ %80, %73 ], [ %164, %162 ]
  %83 = phi i8 [ 0, %73 ], [ %165, %162 ]
  %84 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %82) #7
  %85 = icmp eq i8 %83, %78
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = icmp ugt i32 %88, 4
  br i1 %85, label %90, label %144

90:                                               ; preds = %81
  br i1 %89, label %91, label %108

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 4
  %97 = load i32, ptr %7, align 4
  %98 = load i8, ptr %56, align 4
  %99 = icmp eq i8 %98, 1
  %100 = and i8 %98, 5
  %101 = icmp eq i8 %100, 5
  %102 = or i1 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, ptr %79, align 4
  %105 = add i32 %104, 47
  br label %106

106:                                              ; preds = %103, %91
  %107 = phi i32 [ %105, %103 ], [ 32, %91 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.12, ptr noundef %96, i32 noundef %97, i32 noundef %107, i32 noundef %84) #8
  br label %108

108:                                              ; preds = %106, %90
  %109 = load i8, ptr %56, align 4
  %110 = icmp eq i8 %109, 1
  %111 = and i8 %109, 5
  %112 = icmp eq i8 %111, 5
  %113 = or i1 %110, %112
  br i1 %113, label %114, label %162

114:                                              ; preds = %108
  %115 = load ptr, ptr %0, align 4
  %116 = getelementptr inbounds %struct.nvkm_subdev, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 22
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %119, i32 noundef %25, i32 noundef %84) #7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %162, label %122

122:                                              ; preds = %114
  %123 = load ptr, ptr %0, align 4
  %124 = getelementptr inbounds %struct.nvkm_subdev, ptr %123, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %125, 1
  br i1 %126, label %127, label %162

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.nvkm_subdev, ptr %123, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.nvkm_device, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.nvkm_subdev, ptr %123, i32 0, i32 4
  %133 = load i32, ptr %7, align 4
  %134 = load i8, ptr %56, align 4
  %135 = icmp eq i8 %134, 1
  %136 = and i8 %134, 5
  %137 = icmp eq i8 %136, 5
  %138 = or i1 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, ptr %79, align 4
  %141 = add i32 %140, 47
  br label %142

142:                                              ; preds = %139, %127
  %143 = phi i32 [ %141, %139 ], [ 32, %127 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.18, ptr noundef %132, i32 noundef %133, i32 noundef %143, i32 noundef %25, i32 noundef %84) #8
  br label %162

144:                                              ; preds = %81
  br i1 %89, label %145, label %162

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvkm_device, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 4
  %151 = load i32, ptr %7, align 4
  %152 = load i8, ptr %56, align 4
  %153 = icmp eq i8 %152, 1
  %154 = and i8 %152, 5
  %155 = icmp eq i8 %154, 5
  %156 = or i1 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  %158 = load i32, ptr %79, align 4
  %159 = add i32 %158, 47
  br label %160

160:                                              ; preds = %157, %145
  %161 = phi i32 [ %159, %157 ], [ 32, %145 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %149, ptr noundef nonnull @.str.13, ptr noundef %150, i32 noundef %151, i32 noundef %161, i32 noundef %84) #8
  br label %162

162:                                              ; preds = %160, %144, %142, %122, %114, %108
  %163 = load i32, ptr %7, align 4
  %164 = add i32 %163, 4
  store i32 %164, ptr %7, align 4
  %165 = add nuw i8 %83, 1
  %166 = icmp ult i8 %165, %22
  br i1 %166, label %81, label %167

167:                                              ; preds = %162, %70
  %168 = load ptr, ptr %0, align 4
  %169 = getelementptr inbounds %struct.nvkm_subdev, ptr %168, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = icmp ugt i32 %170, 4
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.nvkm_subdev, ptr %168, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nvkm_device, ptr %174, i32 0, i32 2
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %struct.nvkm_subdev, ptr %168, i32 0, i32 4
  %178 = load i32, ptr %7, align 4
  %179 = load i8, ptr %56, align 4
  %180 = icmp eq i8 %179, 1
  %181 = and i8 %179, 5
  %182 = icmp eq i8 %181, 5
  %183 = or i1 %180, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %172
  %185 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 47
  br label %188

188:                                              ; preds = %184, %172
  %189 = phi i32 [ %187, %184 ], [ 32, %172 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %176, ptr noundef nonnull @.str.5, ptr noundef %177, i32 noundef %178, i32 noundef %189) #8
  br label %190

190:                                              ; preds = %188, %167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_pll2(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.40, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %13) #8
  br label %37

37:                                               ; preds = %35, %1
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 9
  store i32 %39, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 1
  %43 = and i8 %41, 5
  %44 = icmp eq i8 %43, 5
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %37
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 22
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %51, i32 noundef %10, i32 noundef %13) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, 1
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 4
  %65 = load i32, ptr %7, align 4
  %66 = load i8, ptr %40, align 4
  %67 = icmp eq i8 %66, 1
  %68 = and i8 %66, 5
  %69 = icmp eq i8 %68, 5
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 47
  br label %75

75:                                               ; preds = %71, %59
  %76 = phi i32 [ %74, %71 ], [ 32, %59 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.18, ptr noundef %64, i32 noundef %65, i32 noundef %76, i32 noundef %10, i32 noundef %13) #8
  br label %77

77:                                               ; preds = %75, %54, %46, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_i2c_byte(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %11) #7
  %13 = load i32, ptr %9, align 4
  %14 = add i32 %13, 2
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %14) #7
  %16 = lshr i8 %15, 1
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, 3
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %18) #7
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  %30 = load i32, ptr %9, align 4
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 1
  %34 = and i8 %32, 5
  %35 = icmp eq i8 %34, 5
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 47
  br label %41

41:                                               ; preds = %37, %24
  %42 = phi i32 [ %40, %37 ], [ 32, %24 ]
  %43 = zext i8 %12 to i32
  %44 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.41, ptr noundef %29, i32 noundef %30, i32 noundef %42, i32 noundef %43, i32 noundef %44) #8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load i32, ptr %9, align 4
  %47 = add i32 %46, 4
  store i32 %47, ptr %9, align 4
  %48 = icmp eq i8 %19, 0
  br i1 %48, label %136, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %52 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %53 = zext i8 %12 to i32
  %54 = icmp eq i8 %12, -127
  %55 = select i1 %54, i32 -2, i32 %53
  %56 = getelementptr inbounds i8, ptr %2, i32 1
  %57 = getelementptr inbounds i8, ptr %3, i32 4
  %58 = zext i8 %16 to i16
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %61

61:                                               ; preds = %134, %49
  %62 = phi i32 [ %47, %49 ], [ %135, %134 ]
  %63 = phi i8 [ %19, %49 ], [ %64, %134 ]
  %64 = add i8 %63, -1
  %65 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %62) #7
  %66 = load i32, ptr %9, align 4
  %67 = add i32 %66, 1
  %68 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %67) #7
  %69 = load i32, ptr %9, align 4
  %70 = add i32 %69, 2
  %71 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %70) #7
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %74, 4
  br i1 %75, label %76, label %96

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %72, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_subdev, ptr %72, i32 0, i32 4
  %82 = load i32, ptr %9, align 4
  %83 = load i8, ptr %50, align 4
  %84 = icmp eq i8 %83, 1
  %85 = and i8 %83, 5
  %86 = icmp eq i8 %85, 5
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, ptr %51, align 4
  %90 = add i32 %89, 47
  br label %91

91:                                               ; preds = %88, %76
  %92 = phi i32 [ %90, %88 ], [ 32, %76 ]
  %93 = zext i8 %65 to i32
  %94 = zext i8 %68 to i32
  %95 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.42, ptr noundef %81, i32 noundef %82, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95) #8
  br label %96

96:                                               ; preds = %91, %61
  %97 = load i32, ptr %9, align 4
  %98 = add i32 %97, 3
  store i32 %98, ptr %9, align 4
  %99 = call fastcc i32 @init_rdi2cr(ptr noundef %0, i8 noundef zeroext %12, i8 noundef zeroext %16, i8 noundef zeroext %65)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %96
  %102 = trunc i32 %99 to i8
  %103 = and i8 %68, %102
  %104 = or i8 %103, %71
  %105 = load ptr, ptr %0, align 4
  %106 = getelementptr inbounds %struct.nvkm_subdev, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 26
  %109 = load ptr, ptr %108, align 4
  switch i8 %12, label %118 [
    i8 -1, label %110
    i8 -128, label %119
  ]

110:                                              ; preds = %101
  %111 = load ptr, ptr %52, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.dcb_output, ptr %111, i32 0, i32 14
  %115 = load i8, ptr %114, align 4, !range !13
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i32 -1, i32 -2
  br label %119

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %113, %110, %101
  %120 = phi i32 [ -1, %110 ], [ %55, %118 ], [ %117, %113 ], [ -1, %101 ]
  %121 = call ptr @nvkm_i2c_bus_find(ptr noundef %109, i32 noundef %120) #7
  %122 = icmp eq ptr %121, null
  %123 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %121, i32 0, i32 5
  br i1 %122, label %132, label %124

124:                                              ; preds = %119
  %125 = load i8, ptr %50, align 4
  %126 = icmp eq i8 %125, 1
  %127 = and i8 %125, 5
  %128 = icmp eq i8 %127, 5
  %129 = or i1 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i8 %65, ptr %2, align 2
  store i8 %104, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  store i32 2, ptr %57, align 4, !annotation !8
  store i16 %58, ptr %3, align 4
  store i16 0, ptr %59, align 2
  store ptr %2, ptr %60, align 4
  %131 = call i32 @i2c_transfer(ptr noundef nonnull %123, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  br label %132

132:                                              ; preds = %130, %124, %119, %96
  %133 = icmp eq i8 %64, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %132
  %135 = load i32, ptr %9, align 4
  br label %61

136:                                              ; preds = %132, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_i2c_byte(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %11) #7
  %13 = load i32, ptr %9, align 4
  %14 = add i32 %13, 2
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %14) #7
  %16 = lshr i8 %15, 1
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, 3
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %18) #7
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  %30 = load i32, ptr %9, align 4
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 1
  %34 = and i8 %32, 5
  %35 = icmp eq i8 %34, 5
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 47
  br label %41

41:                                               ; preds = %37, %24
  %42 = phi i32 [ %40, %37 ], [ 32, %24 ]
  %43 = zext i8 %12 to i32
  %44 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.43, ptr noundef %29, i32 noundef %30, i32 noundef %42, i32 noundef %43, i32 noundef %44) #8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load i32, ptr %9, align 4
  %47 = add i32 %46, 4
  store i32 %47, ptr %9, align 4
  %48 = icmp eq i8 %19, 0
  br i1 %48, label %127, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %52 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %53 = zext i8 %12 to i32
  %54 = icmp eq i8 %12, -127
  %55 = select i1 %54, i32 -2, i32 %53
  %56 = getelementptr inbounds i8, ptr %2, i32 1
  %57 = getelementptr inbounds i8, ptr %3, i32 4
  %58 = zext i8 %16 to i16
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %61

61:                                               ; preds = %125, %49
  %62 = phi i32 [ %47, %49 ], [ %126, %125 ]
  %63 = phi i8 [ %19, %49 ], [ %64, %125 ]
  %64 = add i8 %63, -1
  %65 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %62) #7
  %66 = load i32, ptr %9, align 4
  %67 = add i32 %66, 1
  %68 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %67) #7
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.nvkm_subdev, ptr %69, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 4
  br i1 %72, label %73, label %93

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.nvkm_subdev, ptr %69, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nvkm_subdev, ptr %69, i32 0, i32 4
  %79 = load i32, ptr %9, align 4
  %80 = load i8, ptr %50, align 4
  %81 = icmp eq i8 %80, 1
  %82 = and i8 %80, 5
  %83 = icmp eq i8 %82, 5
  %84 = or i1 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, ptr %51, align 4
  %87 = add i32 %86, 47
  br label %88

88:                                               ; preds = %85, %73
  %89 = phi i32 [ %87, %85 ], [ 32, %73 ]
  %90 = zext i8 %65 to i32
  %91 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.38, ptr noundef %78, i32 noundef %79, i32 noundef %89, i32 noundef %90, i32 noundef %91) #8
  %92 = load ptr, ptr %0, align 4
  br label %93

93:                                               ; preds = %88, %61
  %94 = phi ptr [ %92, %88 ], [ %69, %61 ]
  %95 = load i32, ptr %9, align 4
  %96 = add i32 %95, 2
  store i32 %96, ptr %9, align 4
  %97 = getelementptr inbounds %struct.nvkm_subdev, ptr %94, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 26
  %100 = load ptr, ptr %99, align 4
  switch i8 %12, label %109 [
    i8 -1, label %101
    i8 -128, label %110
  ]

101:                                              ; preds = %93
  %102 = load ptr, ptr %52, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.dcb_output, ptr %102, i32 0, i32 14
  %106 = load i8, ptr %105, align 4, !range !13
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i32 -1, i32 -2
  br label %110

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %104, %101, %93
  %111 = phi i32 [ -1, %101 ], [ %55, %109 ], [ %108, %104 ], [ -1, %93 ]
  %112 = call ptr @nvkm_i2c_bus_find(ptr noundef %100, i32 noundef %111) #7
  %113 = icmp eq ptr %112, null
  %114 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %112, i32 0, i32 5
  br i1 %113, label %123, label %115

115:                                              ; preds = %110
  %116 = load i8, ptr %50, align 4
  %117 = icmp eq i8 %116, 1
  %118 = and i8 %116, 5
  %119 = icmp eq i8 %118, 5
  %120 = or i1 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i8 %65, ptr %2, align 2
  store i8 %68, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  store i32 2, ptr %57, align 4, !annotation !8
  store i16 %58, ptr %3, align 4
  store i16 0, ptr %59, align 2
  store ptr %2, ptr %60, align 4
  %122 = call i32 @i2c_transfer(ptr noundef nonnull %114, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  br label %123

123:                                              ; preds = %121, %115, %110
  %124 = icmp eq i8 %64, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %123
  %126 = load i32, ptr %9, align 4
  br label %61

127:                                              ; preds = %123, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_i2c(ptr nocapture noundef %0) #0 {
  %2 = alloca [256 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %11) #7
  %13 = load i32, ptr %9, align 4
  %14 = add i32 %13, 2
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %14) #7
  %16 = lshr i8 %15, 1
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, 3
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %18) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %2, i8 0, i32 256, i1 false), !annotation !8
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  %30 = load i32, ptr %9, align 4
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 1
  %34 = and i8 %32, 5
  %35 = icmp eq i8 %34, 5
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 47
  br label %41

41:                                               ; preds = %37, %24
  %42 = phi i32 [ %40, %37 ], [ 32, %24 ]
  %43 = zext i8 %12 to i32
  %44 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.44, ptr noundef %29, i32 noundef %30, i32 noundef %42, i32 noundef %43, i32 noundef %44) #8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load i32, ptr %9, align 4
  %47 = add i32 %46, 4
  store i32 %47, ptr %9, align 4
  %48 = icmp eq i8 %19, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %52 = zext i8 %19 to i32
  br label %53

53:                                               ; preds = %80, %49
  %54 = phi i32 [ %47, %49 ], [ %82, %80 ]
  %55 = phi i32 [ 0, %49 ], [ %83, %80 ]
  %56 = tail call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %54) #7
  %57 = getelementptr [256 x i8], ptr %2, i32 0, i32 %55
  store i8 %56, ptr %57, align 1
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 4
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %58, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_subdev, ptr %58, i32 0, i32 4
  %68 = load i32, ptr %9, align 4
  %69 = load i8, ptr %50, align 4
  %70 = icmp eq i8 %69, 1
  %71 = and i8 %69, 5
  %72 = icmp eq i8 %71, 5
  %73 = or i1 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, ptr %51, align 4
  %76 = add i32 %75, 47
  br label %77

77:                                               ; preds = %74, %62
  %78 = phi i32 [ %76, %74 ], [ 32, %62 ]
  %79 = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.45, ptr noundef %67, i32 noundef %68, i32 noundef %78, i32 noundef %79) #8
  br label %80

80:                                               ; preds = %77, %53
  %81 = load i32, ptr %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %9, align 4
  %83 = add nuw nsw i32 %55, 1
  %84 = icmp eq i32 %83, %52
  br i1 %84, label %85, label %53

85:                                               ; preds = %80, %45
  %86 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %87 = load i8, ptr %86, align 4
  %88 = icmp eq i8 %87, 1
  %89 = and i8 %87, 5
  %90 = icmp eq i8 %89, 5
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %85
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 26
  %97 = load ptr, ptr %96, align 4
  switch i8 %12, label %107 [
    i8 -1, label %98
    i8 -128, label %111
  ]

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.dcb_output, ptr %100, i32 0, i32 14
  %104 = load i8, ptr %103, align 4, !range !13
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 -1, i32 -2
  br label %111

107:                                              ; preds = %92
  %108 = zext i8 %12 to i32
  %109 = icmp eq i8 %12, -127
  %110 = select i1 %109, i32 -2, i32 %108
  br label %111

111:                                              ; preds = %107, %102, %98, %92
  %112 = phi i32 [ -1, %98 ], [ %110, %107 ], [ %106, %102 ], [ -1, %92 ]
  %113 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %97, i32 noundef %112) #7
  %114 = icmp eq ptr %113, null
  %115 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %113, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %116 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %116, align 4, !annotation !8
  %117 = zext i8 %16 to i16
  store i16 %117, ptr %3, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %120 = zext i8 %19 to i16
  store i16 %120, ptr %119, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %121, align 4
  %122 = icmp eq ptr %115, null
  %123 = select i1 %114, i1 true, i1 %122
  br i1 %123, label %150, label %124

124:                                              ; preds = %111
  %125 = call i32 @i2c_transfer(ptr noundef nonnull %115, ptr noundef nonnull %3, i32 noundef 1) #7
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %150, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %0, align 4
  %129 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = icmp ugt i32 %130, 1
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 4
  %138 = load i32, ptr %9, align 4
  %139 = load i8, ptr %86, align 4
  %140 = icmp eq i8 %139, 1
  %141 = and i8 %139, 5
  %142 = icmp eq i8 %141, 5
  %143 = or i1 %140, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 47
  br label %148

148:                                              ; preds = %144, %132
  %149 = phi i32 [ %147, %144 ], [ 32, %132 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %136, ptr noundef nonnull @.str.46, ptr noundef %137, i32 noundef %138, i32 noundef %149, i32 noundef %125) #8
  br label %150

150:                                              ; preds = %148, %127, %124, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  br label %151

151:                                              ; preds = %150, %85
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_tmds(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 3
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 4
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = tail call fastcc i32 @init_tmds_reg(ptr noundef %0, i8 noundef zeroext %10)
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 4
  br i1 %24, label %25, label %48

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %21, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %21, i32 0, i32 4
  %31 = load i32, ptr %7, align 4
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 1
  %35 = and i8 %33, 5
  %36 = icmp eq i8 %35, 5
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 47
  br label %42

42:                                               ; preds = %38, %25
  %43 = phi i32 [ %41, %38 ], [ 32, %25 ]
  %44 = zext i8 %10 to i32
  %45 = zext i8 %13 to i32
  %46 = zext i8 %16 to i32
  %47 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.47, ptr noundef %30, i32 noundef %31, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47) #8
  br label %48

48:                                               ; preds = %42, %1
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 5
  store i32 %50, ptr %7, align 4
  %51 = icmp eq i32 %20, 0
  br i1 %51, label %129, label %52

52:                                               ; preds = %48
  %53 = zext i8 %13 to i32
  %54 = or i32 %53, 65536
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %20) #7
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %71, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 1
  %64 = and i8 %62, 5
  %65 = icmp eq i8 %64, 5
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %54) #7, !srcloc !10
  br label %71

71:                                               ; preds = %67, %60, %52
  %72 = add i32 %20, 4
  %73 = zext i8 %19 to i32
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %72) #7
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %91, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, 1
  %83 = and i8 %81, 5
  %84 = icmp eq i8 %83, 5
  %85 = or i1 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 11
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 %77
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %91

91:                                               ; preds = %86, %79, %71
  %92 = phi i32 [ %90, %86 ], [ 0, %79 ], [ 0, %71 ]
  %93 = zext i8 %16 to i32
  %94 = and i32 %92, %93
  %95 = or i32 %94, %73
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr inbounds %struct.nvkm_subdev, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %72) #7
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %112, label %101

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, 1
  %105 = and i8 %103, 5
  %106 = icmp eq i8 %105, 5
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 11
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %95) #7, !srcloc !10
  br label %112

112:                                              ; preds = %108, %101, %91
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr inbounds %struct.nvkm_subdev, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %20) #7
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %129, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %120 = load i8, ptr %119, align 4
  %121 = icmp eq i8 %120, 1
  %122 = and i8 %120, 5
  %123 = icmp eq i8 %122, 5
  %124 = or i1 %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 11
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %53) #7, !srcloc !10
  br label %129

129:                                              ; preds = %125, %118, %112, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_tmds_group(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = tail call fastcc i32 @init_tmds_reg(ptr noundef %0, i8 noundef zeroext %10)
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 4
  %25 = load i32, ptr %7, align 4
  %26 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 1
  %29 = and i8 %27, 5
  %30 = icmp eq i8 %29, 5
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 47
  br label %36

36:                                               ; preds = %32, %19
  %37 = phi i32 [ %35, %32 ], [ 32, %19 ]
  %38 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.50, ptr noundef %24, i32 noundef %25, i32 noundef %37, i32 noundef %38) #8
  br label %39

39:                                               ; preds = %36, %1
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 3
  store i32 %41, ptr %7, align 4
  %42 = icmp eq i8 %13, 0
  br i1 %42, label %121, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %46 = add i32 %14, 4
  br label %47

47:                                               ; preds = %119, %43
  %48 = phi i32 [ %41, %43 ], [ %120, %119 ]
  %49 = phi i8 [ %13, %43 ], [ %50, %119 ]
  %50 = add i8 %49, -1
  %51 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %48) #7
  %52 = load i32, ptr %7, align 4
  %53 = add i32 %52, 1
  %54 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %53) #7
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, 4
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = zext i8 %54 to i32
  br label %81

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 4
  %67 = load i32, ptr %7, align 4
  %68 = load i8, ptr %44, align 4
  %69 = icmp eq i8 %68, 1
  %70 = and i8 %68, 5
  %71 = icmp eq i8 %70, 5
  %72 = or i1 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, ptr %45, align 4
  %75 = add i32 %74, 47
  br label %76

76:                                               ; preds = %73, %61
  %77 = phi i32 [ %75, %73 ], [ 32, %61 ]
  %78 = zext i8 %51 to i32
  %79 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.38, ptr noundef %66, i32 noundef %67, i32 noundef %77, i32 noundef %78, i32 noundef %79) #8
  %80 = load ptr, ptr %0, align 4
  br label %81

81:                                               ; preds = %76, %59
  %82 = phi i32 [ %60, %59 ], [ %79, %76 ]
  %83 = phi ptr [ %55, %59 ], [ %80, %76 ]
  %84 = load i32, ptr %7, align 4
  %85 = add i32 %84, 2
  store i32 %85, ptr %7, align 4
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %83, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %46) #7
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %100, label %90

90:                                               ; preds = %81
  %91 = load i8, ptr %44, align 4
  %92 = icmp eq i8 %91, 1
  %93 = and i8 %91, 5
  %94 = icmp eq i8 %93, 5
  %95 = or i1 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %82) #7, !srcloc !10
  br label %100

100:                                              ; preds = %96, %90, %81
  %101 = zext i8 %51 to i32
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.nvkm_subdev, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %14) #7
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %117, label %107

107:                                              ; preds = %100
  %108 = load i8, ptr %44, align 4
  %109 = icmp eq i8 %108, 1
  %110 = and i8 %108, 5
  %111 = icmp eq i8 %110, 5
  %112 = or i1 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 11
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %101) #7, !srcloc !10
  br label %117

117:                                              ; preds = %113, %107, %100
  %118 = icmp eq i8 %50, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %117
  %120 = load i32, ptr %7, align 4
  br label %47

121:                                              ; preds = %117, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_cr_idx_adr_latch(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 3
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 4
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  %30 = load i32, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 1
  %34 = and i8 %32, 5
  %35 = icmp eq i8 %34, 5
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 47
  br label %41

41:                                               ; preds = %37, %24
  %42 = phi i32 [ %40, %37 ], [ 32, %24 ]
  %43 = zext i8 %10 to i32
  %44 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.51, ptr noundef %29, i32 noundef %30, i32 noundef %42, i32 noundef %43, i32 noundef %44) #8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load i32, ptr %7, align 4
  %47 = add i32 %46, 5
  store i32 %47, ptr %7, align 4
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 1
  %51 = and i8 %49, 5
  %52 = icmp eq i8 %51, 5
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 0) #7
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %60, i32 noundef %58, i16 noundef zeroext 980, i8 noundef zeroext %10) #7
  br label %62

62:                                               ; preds = %54, %45
  %63 = phi i8 [ %61, %54 ], [ 0, %45 ]
  %64 = icmp eq i8 %19, 0
  br i1 %64, label %155, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %67 = icmp eq i8 %10, 68
  %68 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %69 = icmp eq i8 %13, 68
  br label %70

70:                                               ; preds = %153, %65
  %71 = phi i8 [ %19, %65 ], [ %73, %153 ]
  %72 = phi i8 [ %16, %65 ], [ %104, %153 ]
  %73 = add i8 %71, -1
  %74 = load i32, ptr %7, align 4
  %75 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %74) #7
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 4
  br i1 %79, label %80, label %100

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 4
  %86 = load i32, ptr %7, align 4
  %87 = load i8, ptr %48, align 4
  %88 = icmp eq i8 %87, 1
  %89 = and i8 %87, 5
  %90 = icmp eq i8 %89, 5
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, ptr %66, align 4
  %94 = add i32 %93, 47
  br label %95

95:                                               ; preds = %92, %80
  %96 = phi i32 [ %94, %92 ], [ 32, %80 ]
  %97 = zext i8 %72 to i32
  %98 = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.52, ptr noundef %85, i32 noundef %86, i32 noundef %96, i32 noundef %97, i32 noundef %98) #8
  %99 = load ptr, ptr %0, align 4
  br label %100

100:                                              ; preds = %95, %70
  %101 = phi ptr [ %99, %95 ], [ %76, %70 ]
  %102 = load i32, ptr %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %7, align 4
  %104 = add i8 %72, 1
  %105 = getelementptr inbounds %struct.nvkm_subdev, ptr %101, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 15
  %108 = load i32, ptr %107, align 8
  %109 = icmp ult i32 %108, 80
  %110 = select i1 %109, i1 %67, i1 false
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  store i32 0, ptr %68, align 4
  br label %112

112:                                              ; preds = %111, %100
  %113 = load i8, ptr %48, align 4
  %114 = icmp eq i8 %113, 1
  %115 = and i8 %113, 5
  %116 = icmp eq i8 %115, 5
  %117 = or i1 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, ptr %68, align 4
  %120 = tail call i32 @llvm.smax.i32(i32 %119, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %106, i32 noundef %120, i16 noundef zeroext 980, i8 noundef zeroext %10, i8 noundef zeroext %72) #7
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i32, ptr %107, align 8
  %123 = icmp ult i32 %122, 80
  %124 = icmp eq i8 %72, 3
  %125 = and i1 %67, %124
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 1, ptr %68, align 4
  br label %128

128:                                              ; preds = %127, %121
  %129 = load ptr, ptr %0, align 4
  %130 = getelementptr inbounds %struct.nvkm_subdev, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 15
  %133 = load i32, ptr %132, align 8
  %134 = icmp ult i32 %133, 80
  %135 = select i1 %134, i1 %69, i1 false
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 0, ptr %68, align 4
  br label %137

137:                                              ; preds = %136, %128
  %138 = load i8, ptr %48, align 4
  %139 = icmp eq i8 %138, 1
  %140 = and i8 %138, 5
  %141 = icmp eq i8 %140, 5
  %142 = or i1 %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, ptr %68, align 4
  %145 = tail call i32 @llvm.smax.i32(i32 %144, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %131, i32 noundef %145, i16 noundef zeroext 980, i8 noundef zeroext %13, i8 noundef zeroext %75) #7
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i32, ptr %132, align 8
  %148 = icmp ult i32 %147, 80
  %149 = icmp eq i8 %75, 3
  %150 = and i1 %69, %149
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 1, ptr %68, align 4
  br label %153

153:                                              ; preds = %152, %146
  %154 = icmp eq i8 %73, 0
  br i1 %154, label %155, label %70

155:                                              ; preds = %153, %62
  %156 = load ptr, ptr %0, align 4
  %157 = getelementptr inbounds %struct.nvkm_subdev, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.nvkm_device, ptr %158, i32 0, i32 15
  %160 = load i32, ptr %159, align 8
  %161 = icmp ult i32 %160, 80
  %162 = icmp eq i8 %10, 68
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %165, align 4
  br label %166

166:                                              ; preds = %164, %155
  %167 = load i8, ptr %48, align 4
  %168 = icmp eq i8 %167, 1
  %169 = and i8 %167, 5
  %170 = icmp eq i8 %169, 5
  %171 = or i1 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %174 = load i32, ptr %173, align 4
  %175 = tail call i32 @llvm.smax.i32(i32 %174, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %158, i32 noundef %175, i16 noundef zeroext 980, i8 noundef zeroext %10, i8 noundef zeroext %63) #7
  br label %176

176:                                              ; preds = %172, %166
  %177 = load i32, ptr %159, align 8
  %178 = icmp ult i32 %177, 80
  %179 = icmp eq i8 %63, 3
  %180 = and i1 %162, %179
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %183, align 4
  br label %184

184:                                              ; preds = %182, %176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_cr(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 3
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %27 = load i32, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = and i8 %29, 5
  %32 = icmp eq i8 %31, 5
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 47
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i32 [ %37, %34 ], [ 32, %21 ]
  %40 = zext i8 %10 to i32
  %41 = zext i8 %13 to i32
  %42 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.53, ptr noundef %26, i32 noundef %27, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42) #8
  br label %43

43:                                               ; preds = %38, %1
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 4
  store i32 %45, ptr %7, align 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 1
  %49 = and i8 %47, 5
  %50 = icmp eq i8 %49, 5
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0) #7
  %57 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %58, i32 noundef %56, i16 noundef zeroext 980, i8 noundef zeroext %10) #7
  br label %60

60:                                               ; preds = %52, %43
  %61 = phi i8 [ %59, %52 ], [ 0, %43 ]
  %62 = and i8 %61, %13
  %63 = or i8 %62, %16
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr inbounds %struct.nvkm_subdev, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 15
  %68 = load i32, ptr %67, align 8
  %69 = icmp ult i32 %68, 80
  %70 = icmp eq i8 %10, 68
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i8, ptr %46, align 4
  %76 = icmp eq i8 %75, 1
  %77 = and i8 %75, 5
  %78 = icmp eq i8 %77, 5
  %79 = or i1 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 @llvm.smax.i32(i32 %82, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %66, i32 noundef %83, i16 noundef zeroext 980, i8 noundef zeroext %10, i8 noundef zeroext %63) #7
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, ptr %67, align 8
  %86 = icmp ult i32 %85, 80
  %87 = icmp eq i8 %63, 3
  %88 = and i1 %70, %87
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_cr(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  %37 = zext i8 %10 to i32
  %38 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.54, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %37, i32 noundef %38) #8
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %35, %1
  %41 = phi ptr [ %39, %35 ], [ %14, %1 ]
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, 3
  store i32 %43, ptr %7, align 4
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 15
  %47 = load i32, ptr %46, align 8
  %48 = icmp ult i32 %47, 80
  %49 = icmp eq i8 %10, 68
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 1
  %57 = and i8 %55, 5
  %58 = icmp eq i8 %57, 5
  %59 = or i1 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %45, i32 noundef %63, i16 noundef zeroext 980, i8 noundef zeroext %10, i8 noundef zeroext %13) #7
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, ptr %46, align 8
  %66 = icmp ult i32 %65, 80
  %67 = icmp eq i8 %13, 3
  %68 = and i1 %49, %67
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_cr_group(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.55, ptr noundef %20, i32 noundef %21, i32 noundef %33) #8
  br label %34

34:                                               ; preds = %32, %1
  %35 = load i32, ptr %7, align 4
  %36 = add i32 %35, 2
  store i32 %36, ptr %7, align 4
  %37 = icmp eq i8 %10, 0
  br i1 %37, label %106, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %41 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  br label %42

42:                                               ; preds = %104, %38
  %43 = phi i32 [ %36, %38 ], [ %105, %104 ]
  %44 = phi i8 [ %10, %38 ], [ %45, %104 ]
  %45 = add i8 %44, -1
  %46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %43) #7
  %47 = load i32, ptr %7, align 4
  %48 = add i32 %47, 1
  %49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %48) #7
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 4
  br i1 %53, label %54, label %74

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 4
  %60 = load i32, ptr %7, align 4
  %61 = load i8, ptr %39, align 4
  %62 = icmp eq i8 %61, 1
  %63 = and i8 %61, 5
  %64 = icmp eq i8 %63, 5
  %65 = or i1 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, ptr %40, align 4
  %68 = add i32 %67, 47
  br label %69

69:                                               ; preds = %66, %54
  %70 = phi i32 [ %68, %66 ], [ 32, %54 ]
  %71 = zext i8 %46 to i32
  %72 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.56, ptr noundef %59, i32 noundef %60, i32 noundef %70, i32 noundef %71, i32 noundef %72) #8
  %73 = load ptr, ptr %0, align 4
  br label %74

74:                                               ; preds = %69, %42
  %75 = phi ptr [ %73, %69 ], [ %50, %42 ]
  %76 = load i32, ptr %7, align 4
  %77 = add i32 %76, 2
  store i32 %77, ptr %7, align 4
  %78 = getelementptr inbounds %struct.nvkm_subdev, ptr %75, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 15
  %81 = load i32, ptr %80, align 8
  %82 = icmp ult i32 %81, 80
  %83 = icmp eq i8 %46, 68
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 0, ptr %41, align 4
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i8, ptr %39, align 4
  %88 = icmp eq i8 %87, 1
  %89 = and i8 %87, 5
  %90 = icmp eq i8 %89, 5
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, ptr %41, align 4
  %94 = tail call i32 @llvm.smax.i32(i32 %93, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %79, i32 noundef %94, i16 noundef zeroext 980, i8 noundef zeroext %46, i8 noundef zeroext %49) #7
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32, ptr %80, align 8
  %97 = icmp ult i32 %96, 80
  %98 = icmp eq i8 %49, 3
  %99 = and i1 %83, %98
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, ptr %41, align 4
  br label %102

102:                                              ; preds = %101, %95
  %103 = icmp eq i8 %45, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %7, align 4
  br label %42

106:                                              ; preds = %102, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_condition_time(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %14, 50
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 100)
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 4
  %28 = load i32, ptr %7, align 4
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 1
  %32 = and i8 %30, 5
  %33 = icmp eq i8 %32, 5
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 47
  br label %39

39:                                               ; preds = %35, %22
  %40 = phi i32 [ %38, %35 ], [ 32, %22 ]
  %41 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.57, ptr noundef %27, i32 noundef %28, i32 noundef %40, i32 noundef %41, i32 noundef %14) #8
  br label %42

42:                                               ; preds = %39, %1
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, 3
  store i32 %44, ptr %7, align 4
  %45 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 1
  %48 = and i8 %46, 5
  %49 = icmp eq i8 %48, 5
  %50 = or i1 %47, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %42
  %52 = icmp eq i8 %17, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %56, %51
  %54 = phi i8 [ %57, %56 ], [ %17, %51 ]
  %55 = tail call fastcc zeroext i1 @init_condition_met(ptr noundef %0, i8 noundef zeroext %10)
  br i1 %55, label %84, label %56

56:                                               ; preds = %53
  %57 = add nsw i8 %54, -1
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #7
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #7
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #7
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #7
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #7
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #7
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #7
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #7
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #7
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #7
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #7
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #7
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #7
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #7
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #7
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #7
  %78 = icmp eq i8 %57, 0
  br i1 %78, label %79, label %53

79:                                               ; preds = %56
  %80 = load i8, ptr %45, align 4
  br label %81

81:                                               ; preds = %79, %51
  %82 = phi i8 [ %80, %79 ], [ %46, %51 ]
  %83 = or i8 %82, 2
  store i8 %83, ptr %45, align 4
  br label %84

84:                                               ; preds = %81, %53, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_ltime(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.60, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 3
  store i32 %37, ptr %7, align 4
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %39 = load i8, ptr %38, align 4
  %40 = icmp ne i8 %39, 1
  %41 = and i8 %39, 5
  %42 = icmp ne i8 %41, 5
  %43 = and i1 %40, %42
  %44 = icmp eq i16 %10, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %35
  %47 = zext i16 %10 to i32
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ %50, %48 ], [ %47, %46 ]
  %50 = add nsw i32 %49, -1
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %48

53:                                               ; preds = %48, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_reg_sequence(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  %37 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.61, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %37) #8
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 6
  store i32 %40, ptr %7, align 4
  %41 = icmp eq i8 %13, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  br label %45

45:                                               ; preds = %93, %42
  %46 = phi i32 [ %40, %42 ], [ %95, %93 ]
  %47 = phi i8 [ %13, %42 ], [ %49, %93 ]
  %48 = phi i32 [ %10, %42 ], [ %94, %93 ]
  %49 = add i8 %47, -1
  %50 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %46) #7
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 4
  br i1 %54, label %55, label %73

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 4
  %61 = load i32, ptr %7, align 4
  %62 = load i8, ptr %43, align 4
  %63 = icmp eq i8 %62, 1
  %64 = and i8 %62, 5
  %65 = icmp eq i8 %64, 5
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, ptr %44, align 4
  %69 = add i32 %68, 47
  br label %70

70:                                               ; preds = %67, %55
  %71 = phi i32 [ %69, %67 ], [ 32, %55 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.62, ptr noundef %60, i32 noundef %61, i32 noundef %71, i32 noundef %48, i32 noundef %50) #8
  %72 = load ptr, ptr %0, align 4
  br label %73

73:                                               ; preds = %70, %45
  %74 = phi ptr [ %72, %70 ], [ %51, %45 ]
  %75 = load i32, ptr %7, align 4
  %76 = add i32 %75, 4
  store i32 %76, ptr %7, align 4
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %48) #7
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %91, label %81

81:                                               ; preds = %73
  %82 = load i8, ptr %43, align 4
  %83 = icmp eq i8 %82, 1
  %84 = and i8 %82, 5
  %85 = icmp eq i8 %84, 5
  %86 = or i1 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 11
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %50) #7, !srcloc !10
  br label %91

91:                                               ; preds = %87, %81, %73
  %92 = icmp eq i8 %49, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = add i32 %48, 4
  %95 = load i32, ptr %7, align 4
  br label %45

96:                                               ; preds = %91, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_pll_indirect(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %12) #7
  %14 = zext i16 %13 to i32
  %15 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %14) #7
  %16 = zext i16 %15 to i32
  %17 = mul nuw nsw i32 %16, 1000
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 4
  %28 = load i32, ptr %7, align 4
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 1
  %32 = and i8 %30, 5
  %33 = icmp eq i8 %32, 5
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 47
  br label %39

39:                                               ; preds = %35, %22
  %40 = phi i32 [ %38, %35 ], [ 32, %22 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.63, ptr noundef %27, i32 noundef %28, i32 noundef %40, i32 noundef %10, i32 noundef %14, i32 noundef %17) #8
  br label %41

41:                                               ; preds = %39, %1
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, 7
  store i32 %43, ptr %7, align 4
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 1
  %47 = and i8 %45, 5
  %48 = icmp eq i8 %47, 5
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %41
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 22
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %55, i32 noundef %10, i32 noundef %17) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 4
  %69 = load i32, ptr %7, align 4
  %70 = load i8, ptr %44, align 4
  %71 = icmp eq i8 %70, 1
  %72 = and i8 %70, 5
  %73 = icmp eq i8 %72, 5
  %74 = or i1 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 47
  br label %79

79:                                               ; preds = %75, %63
  %80 = phi i32 [ %78, %75 ], [ 32, %63 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.18, ptr noundef %68, i32 noundef %69, i32 noundef %80, i32 noundef %10, i32 noundef %17) #8
  br label %81

81:                                               ; preds = %79, %58, %50, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_reg_indirect(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %12) #7
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %14) #7
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 4
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 1
  %30 = and i8 %28, 5
  %31 = icmp eq i8 %30, 5
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 47
  br label %37

37:                                               ; preds = %33, %20
  %38 = phi i32 [ %36, %33 ], [ 32, %20 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.64, ptr noundef %25, i32 noundef %26, i32 noundef %38, i32 noundef %10, i32 noundef %14, i32 noundef %15) #8
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %37, %1
  %41 = phi ptr [ %39, %37 ], [ %16, %1 ]
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, 7
  store i32 %43, ptr %7, align 4
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %14) #7
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %59, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 1
  %52 = and i8 %50, 5
  %53 = icmp eq i8 %52, 5
  %54 = or i1 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %15) #7, !srcloc !10
  br label %59

59:                                               ; preds = %55, %48, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_sub_direct(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.65, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 1
  %39 = and i8 %37, 5
  %40 = icmp eq i8 %39, 5
  %41 = or i1 %38, %40
  %42 = load i32, ptr %7, align 4
  br i1 %41, label %43, label %72

43:                                               ; preds = %35
  %44 = zext i16 %10 to i32
  store i32 %44, ptr %7, align 4
  %45 = tail call i32 @nvbios_exec(ptr noundef %0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.nvkm_subdev, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nvkm_subdev, ptr %48, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_subdev, ptr %48, i32 0, i32 4
  %58 = load i32, ptr %7, align 4
  %59 = load i8, ptr %36, align 4
  %60 = icmp eq i8 %59, 1
  %61 = and i8 %59, 5
  %62 = icmp eq i8 %61, 5
  %63 = or i1 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 47
  br label %68

68:                                               ; preds = %64, %52
  %69 = phi i32 [ %67, %64 ], [ 32, %52 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.66, ptr noundef %57, i32 noundef %58, i32 noundef %69) #8
  br label %75

70:                                               ; preds = %43
  %71 = and i32 %42, 65535
  br label %72

72:                                               ; preds = %70, %35
  %73 = phi i32 [ %71, %70 ], [ %42, %35 ]
  %74 = add i32 %73, 3
  store i32 %74, ptr %7, align 4
  br label %75

75:                                               ; preds = %72, %68, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_jump(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.67, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 1
  %39 = and i8 %37, 5
  %40 = icmp eq i8 %39, 5
  %41 = or i1 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = zext i16 %10 to i32
  br label %47

44:                                               ; preds = %35
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 3
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %46, %44 ], [ %43, %42 ]
  store i32 %48, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_i2c_if(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 3
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 4
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 5
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %21) #7
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 4
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = zext i8 %19 to i32
  %29 = zext i8 %22 to i32
  br label %54

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 4
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 1
  %40 = and i8 %38, 5
  %41 = icmp eq i8 %40, 5
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 47
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %46, %43 ], [ 32, %30 ]
  %49 = zext i8 %10 to i32
  %50 = zext i8 %13 to i32
  %51 = zext i8 %16 to i32
  %52 = zext i8 %19 to i32
  %53 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.68, ptr noundef %35, i32 noundef %36, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53) #8
  br label %54

54:                                               ; preds = %47, %27
  %55 = phi i32 [ %29, %27 ], [ %53, %47 ]
  %56 = phi i32 [ %28, %27 ], [ %52, %47 ]
  %57 = load i32, ptr %7, align 4
  %58 = add i32 %57, 6
  store i32 %58, ptr %7, align 4
  %59 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %60 = load i8, ptr %59, align 4
  %61 = or i8 %60, 4
  store i8 %61, ptr %59, align 4
  %62 = tail call fastcc i32 @init_rdi2cr(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %13, i8 noundef zeroext %16)
  %63 = and i32 %62, %56
  %64 = icmp eq i32 %63, %55
  %65 = load i8, ptr %59, align 4
  %66 = or i8 %65, 2
  %67 = select i1 %64, i8 %65, i8 %66
  %68 = and i8 %67, -5
  store i8 %68, ptr %59, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_copy_nv_reg(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 6
  %16 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 10
  %19 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 14
  %22 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %21) #7
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 18
  %25 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %24) #7
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %56

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 4
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 1
  %40 = and i8 %38, 5
  %41 = icmp eq i8 %40, 5
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 47
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %46, %43 ], [ 32, %30 ]
  %49 = zext i8 %13 to i32
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, ptr @.str.22, ptr @.str.21
  %53 = sub nuw nsw i32 256, %49
  %54 = select i1 %51, i32 %49, i32 %53
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.69, ptr noundef %35, i32 noundef %36, i32 noundef %48, i32 noundef %22, i32 noundef %25, i32 noundef %10, ptr noundef nonnull %52, i32 noundef %54, i32 noundef %16, i32 noundef %19) #8
  %55 = load ptr, ptr %0, align 4
  br label %56

56:                                               ; preds = %47, %1
  %57 = phi ptr [ %55, %47 ], [ %26, %1 ]
  %58 = load i32, ptr %7, align 4
  %59 = add i32 %58, 22
  store i32 %59, ptr %7, align 4
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %76, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = icmp eq i8 %66, 1
  %68 = and i8 %66, 5
  %69 = icmp eq i8 %68, 5
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 %62
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %76

76:                                               ; preds = %71, %64, %56
  %77 = phi i32 [ %75, %71 ], [ 0, %64 ], [ 0, %56 ]
  %78 = zext i8 %13 to i32
  %79 = lshr i32 %77, %78
  %80 = sub nuw nsw i32 256, %78
  %81 = shl i32 %77, %80
  %82 = icmp slt i8 %13, 0
  %83 = select i1 %82, i32 %81, i32 %79
  %84 = and i32 %83, %16
  %85 = xor i32 %84, %19
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr inbounds %struct.nvkm_subdev, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %22) #7
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %107, label %91

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 1
  %95 = and i8 %93, 5
  %96 = icmp eq i8 %95, 5
  %97 = or i1 %94, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %89
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %103 = and i32 %102, %25
  %104 = or i32 %103, %85
  %105 = load ptr, ptr %99, align 4
  %106 = getelementptr i8, ptr %105, i32 %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #7, !srcloc !10
  br label %107

107:                                              ; preds = %98, %91, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_index_io(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 3
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 4
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %27 = load i32, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = and i8 %29, 5
  %32 = icmp eq i8 %31, 5
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 47
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i32 [ %37, %34 ], [ 32, %21 ]
  %40 = zext i16 %10 to i32
  %41 = zext i8 %13 to i32
  %42 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.70, ptr noundef %26, i32 noundef %27, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42) #8
  %43 = load ptr, ptr %0, align 4
  br label %44

44:                                               ; preds = %38, %1
  %45 = phi ptr [ %43, %38 ], [ %17, %1 ]
  %46 = load i32, ptr %7, align 4
  %47 = add i32 %46, 5
  store i32 %47, ptr %7, align 4
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 15
  %51 = load i32, ptr %50, align 8
  %52 = icmp ult i32 %51, 80
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = icmp eq i16 %10, 980
  %55 = icmp eq i8 %13, 68
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %53, %44
  %60 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %61 = load i8, ptr %60, align 4
  %62 = icmp eq i8 %61, 1
  %63 = and i8 %61, 5
  %64 = icmp eq i8 %63, 5
  %65 = or i1 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %49, i32 noundef %69, i16 noundef zeroext %10, i8 noundef zeroext %13, i8 noundef zeroext %16) #7
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, ptr %50, align 8
  %72 = icmp ult i32 %71, 80
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = icmp eq i16 %10, 980
  %75 = icmp eq i8 %13, 68
  %76 = and i1 %74, %75
  %77 = icmp eq i8 %16, 3
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %73, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_compute_mem(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 1
  %19 = and i8 %17, 5
  %20 = icmp eq i8 %19, 5
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 47
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %25, %22 ], [ 32, %10 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.71, ptr noundef %13, i32 noundef %15, i32 noundef %27) #8
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 4
  %34 = or i8 %33, 4
  store i8 %34, ptr %32, align 4
  %35 = and i8 %34, 5
  %36 = icmp eq i8 %35, 5
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  tail call void @nvkm_devinit_meminit(ptr noundef %6) #7
  %38 = load i8, ptr %32, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i8 [ %38, %37 ], [ %34, %28 ]
  %41 = and i8 %40, -5
  store i8 %41, ptr %32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 9
  %16 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %27 = load i32, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = and i8 %29, 5
  %32 = icmp eq i8 %31, 5
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 47
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i32 [ %37, %34 ], [ 32, %21 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.72, ptr noundef %26, i32 noundef %27, i32 noundef %39, i32 noundef %10, i32 noundef %13, i32 noundef %16) #8
  %40 = load ptr, ptr %0, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi ptr [ %40, %38 ], [ %17, %1 ]
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, 13
  store i32 %44, ptr %7, align 4
  %45 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %46 = load i8, ptr %45, align 4
  %47 = or i8 %46, 4
  store i8 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %42, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 22
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @nvkm_devinit_mmio(ptr noundef %51, i32 noundef 6220) #7
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %68, label %54

54:                                               ; preds = %41
  %55 = load i8, ptr %45, align 4
  %56 = icmp eq i8 %55, 1
  %57 = and i8 %55, 5
  %58 = icmp eq i8 %57, 5
  %59 = or i1 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 %52
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %65 = and i32 %64, -3841
  %66 = load ptr, ptr %61, align 4
  %67 = getelementptr i8, ptr %66, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !10
  br label %68

68:                                               ; preds = %60, %54, %41
  %69 = phi i32 [ %64, %60 ], [ 0, %54 ], [ 0, %41 ]
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr inbounds %struct.nvkm_subdev, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  %76 = load i8, ptr %45, align 4
  %77 = icmp eq i8 %76, 1
  %78 = and i8 %76, 5
  %79 = icmp eq i8 %78, 5
  %80 = or i1 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %13) #7, !srcloc !10
  br label %85

85:                                               ; preds = %81, %75, %68
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 2147480) #7
  %87 = load ptr, ptr %0, align 4
  %88 = getelementptr inbounds %struct.nvkm_subdev, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %102, label %92

92:                                               ; preds = %85
  %93 = load i8, ptr %45, align 4
  %94 = icmp eq i8 %93, 1
  %95 = and i8 %93, 5
  %96 = icmp eq i8 %95, 5
  %97 = or i1 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %16) #7, !srcloc !10
  br label %102

102:                                              ; preds = %98, %92, %85
  %103 = load ptr, ptr %0, align 4
  %104 = getelementptr inbounds %struct.nvkm_subdev, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 22
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @nvkm_devinit_mmio(ptr noundef %107, i32 noundef 6220) #7
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %120, label %110

110:                                              ; preds = %102
  %111 = load i8, ptr %45, align 4
  %112 = icmp eq i8 %111, 1
  %113 = and i8 %111, 5
  %114 = icmp eq i8 %113, 5
  %115 = or i1 %112, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 11
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %69) #7, !srcloc !10
  br label %120

120:                                              ; preds = %116, %110, %102
  %121 = load ptr, ptr %0, align 4
  %122 = getelementptr inbounds %struct.nvkm_subdev, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 22
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @nvkm_devinit_mmio(ptr noundef %125, i32 noundef 6224) #7
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %142, label %128

128:                                              ; preds = %120
  %129 = load i8, ptr %45, align 4
  %130 = icmp eq i8 %129, 1
  %131 = and i8 %129, 5
  %132 = icmp eq i8 %131, 5
  %133 = or i1 %130, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 11
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 %126
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %139 = and i32 %138, -2
  %140 = load ptr, ptr %135, align 4
  %141 = getelementptr i8, ptr %140, i32 %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #7, !srcloc !10
  br label %142

142:                                              ; preds = %134, %128, %120
  %143 = load i8, ptr %45, align 4
  %144 = and i8 %143, -5
  store i8 %144, ptr %45, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_configure_mem(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 1
  %19 = and i8 %17, 5
  %20 = icmp eq i8 %19, 5
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 47
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %25, %22 ], [ 32, %10 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.73, ptr noundef %13, i32 noundef %15, i32 noundef %27) #8
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.nvkm_bios, ptr %6, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = icmp ugt i8 %33, 2
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 1
  %49 = and i8 %47, 5
  %50 = icmp eq i8 %49, 5
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 47
  br label %56

56:                                               ; preds = %52, %40
  %57 = phi i32 [ %55, %52 ], [ 32, %40 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.82, ptr noundef %45, i32 noundef %31, i32 noundef %57) #8
  br label %58

58:                                               ; preds = %56, %35
  store i32 0, ptr %29, align 4
  br label %166

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %61 = load i8, ptr %60, align 4
  %62 = or i8 %61, 4
  store i8 %62, ptr %60, align 4
  %63 = tail call fastcc zeroext i16 @init_configure_mem_clk(ptr noundef %0)
  %64 = getelementptr inbounds %struct.nvkm_bios, ptr %6, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %59
  %68 = add i32 %65, 5
  %69 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %68) #7
  %70 = load i32, ptr %64, align 4
  %71 = add i32 %70, 6
  %72 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %71) #7
  %73 = icmp ugt i8 %69, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, ptr %64, align 4
  %76 = add i32 %75, 26
  %77 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %76) #7
  br label %78

78:                                               ; preds = %74, %67, %59
  %79 = phi i16 [ %77, %74 ], [ 0, %67 ], [ 0, %59 ]
  %80 = zext i16 %63 to i32
  %81 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %80) #7
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %64, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = add i32 %85, 5
  %89 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %88) #7
  %90 = load i32, ptr %64, align 4
  %91 = add i32 %90, 6
  %92 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %91) #7
  %93 = icmp ugt i8 %89, 2
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, ptr %64, align 4
  %96 = add i32 %95, 28
  %97 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %96) #7
  br label %98

98:                                               ; preds = %94, %87, %84, %78
  %99 = phi i16 [ %79, %78 ], [ %97, %94 ], [ 0, %87 ], [ 0, %84 ]
  %100 = add i16 %63, 6
  %101 = load i8, ptr %60, align 4
  %102 = icmp eq i8 %101, 1
  %103 = and i8 %101, 5
  %104 = icmp eq i8 %103, 5
  %105 = or i1 %102, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 @llvm.smax.i32(i32 %109, i32 0) #7
  %111 = getelementptr inbounds %struct.nvkm_subdev, ptr %107, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %112, i32 noundef %110, i16 noundef zeroext 964, i8 noundef zeroext 1) #7
  %114 = or i8 %113, 32
  %115 = load i8, ptr %60, align 4
  %116 = and i8 %115, 5
  br label %117

117:                                              ; preds = %106, %98
  %118 = phi i8 [ %103, %98 ], [ %116, %106 ]
  %119 = phi i8 [ %101, %98 ], [ %115, %106 ]
  %120 = phi i8 [ 32, %98 ], [ %114, %106 ]
  %121 = icmp eq i8 %119, 1
  %122 = icmp eq i8 %118, 5
  %123 = or i1 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load ptr, ptr %0, align 4
  %126 = getelementptr inbounds %struct.nvkm_subdev, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = tail call i32 @llvm.smax.i32(i32 %129, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %127, i32 noundef %130, i16 noundef zeroext 964, i8 noundef zeroext 1, i8 noundef zeroext %120) #7
  br label %131

131:                                              ; preds = %124, %117
  br label %132

132:                                              ; preds = %160, %131
  %133 = phi i16 [ %161, %160 ], [ %100, %131 ]
  %134 = phi i16 [ %162, %160 ], [ %99, %131 ]
  %135 = zext i16 %134 to i32
  %136 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %135) #7
  switch i32 %136, label %137 [
    i32 -1, label %163
    i32 1049116, label %142
    i32 1049296, label %142
    i32 1049300, label %142
  ]

137:                                              ; preds = %132
  %138 = zext i16 %133 to i32
  %139 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %138) #7
  %140 = add i16 %133, 4
  %141 = icmp eq i32 %139, -1
  br i1 %141, label %160, label %142

142:                                              ; preds = %137, %132, %132, %132
  %143 = phi i16 [ %140, %137 ], [ %133, %132 ], [ %133, %132 ], [ %133, %132 ]
  %144 = phi i32 [ %139, %137 ], [ 1, %132 ], [ 1, %132 ], [ 1, %132 ]
  %145 = load ptr, ptr %0, align 4
  %146 = getelementptr inbounds %struct.nvkm_subdev, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %136) #7
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %160, label %150

150:                                              ; preds = %142
  %151 = load i8, ptr %60, align 4
  %152 = icmp eq i8 %151, 1
  %153 = and i8 %151, 5
  %154 = icmp eq i8 %153, 5
  %155 = or i1 %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.nvkm_device, ptr %147, i32 0, i32 11
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %144) #7, !srcloc !10
  br label %160

160:                                              ; preds = %156, %150, %142, %137
  %161 = phi i16 [ %140, %137 ], [ %143, %142 ], [ %143, %150 ], [ %143, %156 ]
  %162 = add i16 %134, 4
  br label %132

163:                                              ; preds = %132
  %164 = load i8, ptr %60, align 4
  %165 = and i8 %164, -5
  store i8 %165, ptr %60, align 4
  br label %166

166:                                              ; preds = %163, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_configure_clk(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 1
  %19 = and i8 %17, 5
  %20 = icmp eq i8 %19, 5
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 47
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %25, %22 ], [ 32, %10 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.74, ptr noundef %13, i32 noundef %15, i32 noundef %27) #8
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.nvkm_bios, ptr %6, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = icmp ugt i8 %33, 2
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 1
  %49 = and i8 %47, 5
  %50 = icmp eq i8 %49, 5
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 47
  br label %56

56:                                               ; preds = %52, %40
  %57 = phi i32 [ %55, %52 ], [ 32, %40 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.82, ptr noundef %45, i32 noundef %31, i32 noundef %57) #8
  br label %58

58:                                               ; preds = %56, %35
  store i32 0, ptr %29, align 4
  br label %153

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %61 = load i8, ptr %60, align 4
  %62 = or i8 %61, 4
  store i8 %62, ptr %60, align 4
  %63 = tail call fastcc zeroext i16 @init_configure_mem_clk(ptr noundef %0)
  %64 = zext i16 %63 to i32
  %65 = add nuw nsw i32 %64, 4
  %66 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %65) #7
  %67 = mul i16 %66, 10
  %68 = zext i16 %67 to i32
  %69 = load i8, ptr %60, align 4
  %70 = icmp eq i8 %69, 1
  %71 = and i8 %69, 5
  %72 = icmp eq i8 %71, 5
  %73 = or i1 %70, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %59
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.nvkm_subdev, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 22
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %79, i32 noundef 6817024, i32 noundef %68) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %74
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.nvkm_subdev, ptr %83, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.nvkm_subdev, ptr %83, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_subdev, ptr %83, i32 0, i32 4
  %93 = load i32, ptr %29, align 4
  %94 = load i8, ptr %60, align 4
  %95 = icmp eq i8 %94, 1
  %96 = and i8 %94, 5
  %97 = icmp eq i8 %96, 5
  %98 = or i1 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 47
  br label %103

103:                                              ; preds = %99, %87
  %104 = phi i32 [ %102, %99 ], [ 32, %87 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.18, ptr noundef %92, i32 noundef %93, i32 noundef %104, i32 noundef 6817024, i32 noundef %68) #8
  br label %105

105:                                              ; preds = %103, %82, %74, %59
  %106 = add nuw nsw i32 %64, 2
  %107 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %106) #7
  %108 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %64) #7
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i16 10, i16 20
  %112 = mul i16 %111, %107
  %113 = zext i16 %112 to i32
  %114 = load i8, ptr %60, align 4
  %115 = icmp eq i8 %114, 1
  %116 = and i8 %114, 5
  %117 = icmp eq i8 %116, 5
  %118 = or i1 %115, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %105
  %120 = load ptr, ptr %0, align 4
  %121 = getelementptr inbounds %struct.nvkm_subdev, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 22
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %124, i32 noundef 6817028, i32 noundef %113) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %150, label %127

127:                                              ; preds = %119
  %128 = load ptr, ptr %0, align 4
  %129 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = icmp ugt i32 %130, 1
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 4
  %138 = load i32, ptr %29, align 4
  %139 = load i8, ptr %60, align 4
  %140 = icmp eq i8 %139, 1
  %141 = and i8 %139, 5
  %142 = icmp eq i8 %141, 5
  %143 = or i1 %140, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 47
  br label %148

148:                                              ; preds = %144, %132
  %149 = phi i32 [ %147, %144 ], [ 32, %132 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %136, ptr noundef nonnull @.str.18, ptr noundef %137, i32 noundef %138, i32 noundef %149, i32 noundef 6817028, i32 noundef %113) #8
  br label %150

150:                                              ; preds = %148, %127, %119, %105
  %151 = load i8, ptr %60, align 4
  %152 = and i8 %151, -5
  store i8 %152, ptr %60, align 4
  br label %153

153:                                              ; preds = %150, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_configure_preinit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 1
  %19 = and i8 %17, 5
  %20 = icmp eq i8 %19, 5
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 47
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %25, %22 ], [ 32, %10 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.75, ptr noundef %13, i32 noundef %15, i32 noundef %27) #8
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.nvkm_bios, ptr %6, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = icmp ugt i8 %33, 2
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 1
  %49 = and i8 %47, 5
  %50 = icmp eq i8 %49, 5
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 47
  br label %56

56:                                               ; preds = %52, %40
  %57 = phi i32 [ %55, %52 ], [ 32, %40 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.82, ptr noundef %45, i32 noundef %31, i32 noundef %57) #8
  br label %58

58:                                               ; preds = %56, %35
  store i32 0, ptr %29, align 4
  br label %105

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %61 = load i8, ptr %60, align 4
  %62 = or i8 %61, 4
  store i8 %62, ptr %60, align 4
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 22
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @nvkm_devinit_mmio(ptr noundef %67, i32 noundef 1052672) #7
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %81, label %70

70:                                               ; preds = %59
  %71 = load i8, ptr %60, align 4
  %72 = icmp eq i8 %71, 1
  %73 = and i8 %71, 5
  %74 = icmp eq i8 %73, 5
  %75 = or i1 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 %68
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %81

81:                                               ; preds = %76, %70, %59
  %82 = phi i32 [ %80, %76 ], [ 0, %70 ], [ 0, %59 ]
  %83 = load i8, ptr %60, align 4
  %84 = icmp eq i8 %83, 1
  %85 = and i8 %83, 5
  %86 = icmp eq i8 %85, 5
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr inbounds %struct.nvkm_subdev, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = shl i32 %82, 2
  %93 = and i32 %92, 240
  %94 = lshr i32 %82, 6
  %95 = and i32 %94, 1
  %96 = or i32 %93, %95
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 @llvm.smax.i32(i32 %99, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %91, i32 noundef %100, i16 noundef zeroext 980, i8 noundef zeroext 60, i8 noundef zeroext %97) #7
  %101 = load i8, ptr %60, align 4
  br label %102

102:                                              ; preds = %88, %81
  %103 = phi i8 [ %83, %81 ], [ %101, %88 ]
  %104 = and i8 %103, -5
  store i8 %104, ptr %60, align 4
  br label %105

105:                                              ; preds = %102, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 3
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 4
  %16 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = and i16 %16, 255
  br label %47

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %29 = load i32, ptr %7, align 4
  %30 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 1
  %33 = and i8 %31, 5
  %34 = icmp eq i8 %33, 5
  %35 = or i1 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 47
  br label %40

40:                                               ; preds = %36, %23
  %41 = phi i32 [ %39, %36 ], [ 32, %23 ]
  %42 = zext i16 %10 to i32
  %43 = and i16 %13, 255
  %44 = zext i16 %43 to i32
  %45 = and i16 %16, 255
  %46 = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.76, ptr noundef %28, i32 noundef %29, i32 noundef %41, i32 noundef %42, i32 noundef %44, i32 noundef %46) #8
  br label %47

47:                                               ; preds = %40, %21
  %48 = phi i16 [ %22, %21 ], [ %45, %40 ]
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 5
  store i32 %50, ptr %7, align 4
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 15
  %54 = load i32, ptr %53, align 8
  %55 = icmp ugt i32 %54, 79
  %56 = icmp eq i16 %10, 963
  %57 = select i1 %55, i1 %56, i1 false
  %58 = icmp eq i16 %48, 1
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %296

60:                                               ; preds = %47
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 22
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @nvkm_devinit_mmio(ptr noundef %65, i32 noundef 6373632) #7
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %84, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %70 = load i8, ptr %69, align 4
  %71 = icmp eq i8 %70, 1
  %72 = and i8 %70, 5
  %73 = icmp eq i8 %72, 5
  %74 = or i1 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %66
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %80 = and i32 %79, 260046847
  %81 = or i32 %80, 8388608
  %82 = load ptr, ptr %76, align 4
  %83 = getelementptr i8, ptr %82, i32 %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #7, !srcloc !10
  br label %84

84:                                               ; preds = %75, %68, %60
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 22
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @nvkm_devinit_mmio(ptr noundef %89, i32 noundef 57740) #7
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %107, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %94 = load i8, ptr %93, align 4
  %95 = icmp eq i8 %94, 1
  %96 = and i8 %94, 5
  %97 = icmp eq i8 %96, 5
  %98 = or i1 %95, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %90
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %104 = or i32 %103, 131072
  %105 = load ptr, ptr %100, align 4
  %106 = getelementptr i8, ptr %105, i32 %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #7, !srcloc !10
  br label %107

107:                                              ; preds = %99, %92, %84
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.nvkm_subdev, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 22
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @nvkm_devinit_mmio(ptr noundef %112, i32 noundef 6375680) #7
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %131, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %117 = load i8, ptr %116, align 4
  %118 = icmp eq i8 %117, 1
  %119 = and i8 %117, 5
  %120 = icmp eq i8 %119, 5
  %121 = or i1 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %113
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %127 = and i32 %126, 260046847
  %128 = or i32 %127, 8388608
  %129 = load ptr, ptr %123, align 4
  %130 = getelementptr i8, ptr %129, i32 %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #7, !srcloc !10
  br label %131

131:                                              ; preds = %122, %115, %107
  %132 = load ptr, ptr %0, align 4
  %133 = getelementptr inbounds %struct.nvkm_subdev, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 22
  %136 = load ptr, ptr %135, align 4
  %137 = tail call i32 @nvkm_devinit_mmio(ptr noundef %136, i32 noundef 512) #7
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %154, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %141 = load i8, ptr %140, align 4
  %142 = icmp eq i8 %141, 1
  %143 = and i8 %141, 5
  %144 = icmp eq i8 %143, 5
  %145 = or i1 %142, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 11
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 %137
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %151 = and i32 %150, -1073741825
  %152 = load ptr, ptr %147, align 4
  %153 = getelementptr i8, ptr %152, i32 %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #7, !srcloc !10
  br label %154

154:                                              ; preds = %146, %139, %131
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #7
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #7
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #7
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #7
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #7
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 214748000) #7
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748000) #7
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 214748000) #7
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 214748000) #7
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748000) #7
  %165 = load ptr, ptr %0, align 4
  %166 = getelementptr inbounds %struct.nvkm_subdev, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.nvkm_device, ptr %167, i32 0, i32 22
  %169 = load ptr, ptr %168, align 4
  %170 = tail call i32 @nvkm_devinit_mmio(ptr noundef %169, i32 noundef 57740) #7
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %187, label %172

172:                                              ; preds = %154
  %173 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %174 = load i8, ptr %173, align 4
  %175 = icmp eq i8 %174, 1
  %176 = and i8 %174, 5
  %177 = icmp eq i8 %176, 5
  %178 = or i1 %175, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.nvkm_device, ptr %167, i32 0, i32 11
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %181, i32 %170
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %184 = and i32 %183, -131073
  %185 = load ptr, ptr %180, align 4
  %186 = getelementptr i8, ptr %185, i32 %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #7, !srcloc !10
  br label %187

187:                                              ; preds = %179, %172, %154
  %188 = load ptr, ptr %0, align 4
  %189 = getelementptr inbounds %struct.nvkm_subdev, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_device, ptr %190, i32 0, i32 22
  %192 = load ptr, ptr %191, align 4
  %193 = tail call i32 @nvkm_devinit_mmio(ptr noundef %192, i32 noundef 512) #7
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %210, label %195

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %197 = load i8, ptr %196, align 4
  %198 = icmp eq i8 %197, 1
  %199 = and i8 %197, 5
  %200 = icmp eq i8 %199, 5
  %201 = or i1 %198, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.nvkm_device, ptr %190, i32 0, i32 11
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 %193
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %207 = or i32 %206, 1073741824
  %208 = load ptr, ptr %203, align 4
  %209 = getelementptr i8, ptr %208, i32 %193
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #7, !srcloc !10
  br label %210

210:                                              ; preds = %202, %195, %187
  %211 = load ptr, ptr %0, align 4
  %212 = getelementptr inbounds %struct.nvkm_subdev, ptr %211, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.nvkm_device, ptr %213, i32 0, i32 22
  %215 = load ptr, ptr %214, align 4
  %216 = tail call i32 @nvkm_devinit_mmio(ptr noundef %215, i32 noundef 6373632) #7
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %229, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %220 = load i8, ptr %219, align 4
  %221 = icmp eq i8 %220, 1
  %222 = and i8 %220, 5
  %223 = icmp eq i8 %222, 5
  %224 = or i1 %221, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.nvkm_device, ptr %213, i32 0, i32 11
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr i8, ptr %227, i32 %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 8388632) #7, !srcloc !10
  br label %229

229:                                              ; preds = %225, %218, %210
  %230 = load ptr, ptr %0, align 4
  %231 = getelementptr inbounds %struct.nvkm_subdev, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.nvkm_device, ptr %232, i32 0, i32 22
  %234 = load ptr, ptr %233, align 4
  %235 = tail call i32 @nvkm_devinit_mmio(ptr noundef %234, i32 noundef 6375680) #7
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %248, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %239 = load i8, ptr %238, align 4
  %240 = icmp eq i8 %239, 1
  %241 = and i8 %239, 5
  %242 = icmp eq i8 %241, 5
  %243 = or i1 %240, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.nvkm_device, ptr %232, i32 0, i32 11
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr i8, ptr %246, i32 %235
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 8388632) #7, !srcloc !10
  br label %248

248:                                              ; preds = %244, %237, %229
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %249(i32 noundef 214748000) #7
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %250(i32 noundef 214748000) #7
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %251(i32 noundef 214748000) #7
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 214748000) #7
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %253(i32 noundef 214748000) #7
  %254 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %254(i32 noundef 214748000) #7
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748000) #7
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 214748000) #7
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 214748000) #7
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %258(i32 noundef 214748000) #7
  %259 = load ptr, ptr %0, align 4
  %260 = getelementptr inbounds %struct.nvkm_subdev, ptr %259, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.nvkm_device, ptr %261, i32 0, i32 22
  %263 = load ptr, ptr %262, align 4
  %264 = tail call i32 @nvkm_devinit_mmio(ptr noundef %263, i32 noundef 6373632) #7
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %277, label %266

266:                                              ; preds = %248
  %267 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %268 = load i8, ptr %267, align 4
  %269 = icmp eq i8 %268, 1
  %270 = and i8 %268, 5
  %271 = icmp eq i8 %270, 5
  %272 = or i1 %269, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.nvkm_device, ptr %261, i32 0, i32 11
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr i8, ptr %275, i32 %264
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 268435480) #7, !srcloc !10
  br label %277

277:                                              ; preds = %273, %266, %248
  %278 = load ptr, ptr %0, align 4
  %279 = getelementptr inbounds %struct.nvkm_subdev, ptr %278, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.nvkm_device, ptr %280, i32 0, i32 22
  %282 = load ptr, ptr %281, align 4
  %283 = tail call i32 @nvkm_devinit_mmio(ptr noundef %282, i32 noundef 6375680) #7
  %284 = icmp eq i32 %283, -1
  br i1 %284, label %296, label %285

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %287 = load i8, ptr %286, align 4
  %288 = icmp eq i8 %287, 1
  %289 = and i8 %287, 5
  %290 = icmp eq i8 %289, 5
  %291 = or i1 %288, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.nvkm_device, ptr %280, i32 0, i32 11
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr i8, ptr %294, i32 %283
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 268435480) #7, !srcloc !10
  br label %296

296:                                              ; preds = %292, %285, %277, %47
  %297 = trunc i16 %16 to i8
  %298 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %299 = load i8, ptr %298, align 4
  %300 = icmp eq i8 %299, 1
  %301 = and i8 %299, 5
  %302 = icmp eq i8 %301, 5
  %303 = or i1 %300, %302
  br i1 %303, label %304, label %313

304:                                              ; preds = %296
  %305 = load ptr, ptr %0, align 4
  %306 = getelementptr inbounds %struct.nvkm_subdev, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %309 = load i32, ptr %308, align 4
  %310 = tail call zeroext i8 @nvkm_rdport(ptr noundef %307, i32 noundef %309, i16 noundef zeroext %10) #7
  %311 = load i8, ptr %298, align 4
  %312 = and i8 %311, 5
  br label %313

313:                                              ; preds = %304, %296
  %314 = phi i8 [ %301, %296 ], [ %312, %304 ]
  %315 = phi i8 [ %299, %296 ], [ %311, %304 ]
  %316 = phi i8 [ 0, %296 ], [ %310, %304 ]
  %317 = icmp eq i8 %315, 1
  %318 = icmp eq i8 %314, 5
  %319 = or i1 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %313
  %321 = trunc i16 %13 to i8
  %322 = and i8 %316, %321
  %323 = or i8 %322, %297
  %324 = load ptr, ptr %0, align 4
  %325 = getelementptr inbounds %struct.nvkm_subdev, ptr %324, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %328 = load i32, ptr %327, align 4
  tail call void @nvkm_wrport(ptr noundef %326, i32 noundef %328, i16 noundef zeroext %10, i8 noundef zeroext %323) #7
  br label %329

329:                                              ; preds = %320, %313
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_sub(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = zext i8 %10 to i32
  br label %37

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 1
  %27 = and i8 %25, 5
  %28 = icmp eq i8 %27, 5
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 47
  br label %34

34:                                               ; preds = %30, %17
  %35 = phi i32 [ %33, %30 ], [ 32, %17 ]
  %36 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.77, ptr noundef %22, i32 noundef %23, i32 noundef %35, i32 noundef %36) #8
  br label %37

37:                                               ; preds = %34, %15
  %38 = phi i32 [ %16, %15 ], [ %36, %34 ]
  %39 = tail call fastcc zeroext i16 @init_script(ptr noundef %6, i32 noundef %38)
  %40 = zext i16 %39 to i32
  %41 = icmp eq i16 %39, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 1
  %46 = and i8 %44, 5
  %47 = icmp eq i8 %46, 5
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = load i32, ptr %7, align 4
  store i32 %40, ptr %7, align 4
  %51 = tail call i32 @nvbios_exec(ptr noundef %0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 4
  %64 = load i32, ptr %7, align 4
  %65 = load i8, ptr %43, align 4
  %66 = icmp eq i8 %65, 1
  %67 = and i8 %65, 5
  %68 = icmp eq i8 %67, 5
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 47
  br label %74

74:                                               ; preds = %70, %58
  %75 = phi i32 [ %73, %70 ], [ 32, %58 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.66, ptr noundef %63, i32 noundef %64, i32 noundef %75) #8
  br label %81

76:                                               ; preds = %49
  %77 = and i32 %50, 65535
  store i32 %77, ptr %7, align 4
  br label %78

78:                                               ; preds = %76, %42, %37
  %79 = load i32, ptr %7, align 4
  %80 = add i32 %79, 2
  store i32 %80, ptr %7, align 4
  br label %81

81:                                               ; preds = %78, %74, %53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_ram_condition(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 2
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  %37 = zext i8 %10 to i32
  %38 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.78, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %37, i32 noundef %38) #8
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %35, %1
  %41 = phi ptr [ %39, %35 ], [ %14, %1 ]
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, 3
  store i32 %43, ptr %7, align 4
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 22
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @nvkm_devinit_mmio(ptr noundef %47, i32 noundef 1048576) #7
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %62, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 1
  %54 = and i8 %52, 5
  %55 = icmp eq i8 %54, 5
  %56 = or i1 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %48
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %62

62:                                               ; preds = %57, %50, %40
  %63 = phi i32 [ %61, %57 ], [ 0, %50 ], [ 0, %40 ]
  %64 = zext i8 %10 to i32
  %65 = and i32 %63, %64
  %66 = zext i8 %13 to i32
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %70 = load i8, ptr %69, align 4
  %71 = or i8 %70, 2
  store i8 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_nv_reg(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 9
  %16 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %27 = load i32, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = and i8 %29, 5
  %32 = icmp eq i8 %31, 5
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 47
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i32 [ %37, %34 ], [ 32, %21 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.79, ptr noundef %26, i32 noundef %27, i32 noundef %39, i32 noundef %10, i32 noundef %13, i32 noundef %16) #8
  %40 = load ptr, ptr %0, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi ptr [ %40, %38 ], [ %17, %1 ]
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, 13
  store i32 %44, ptr %7, align 4
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 1
  %53 = and i8 %51, 5
  %54 = icmp eq i8 %53, 5
  %55 = or i1 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 %47
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %61 = and i32 %60, %13
  %62 = or i32 %61, %16
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr i8, ptr %63, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #7, !srcloc !10
  br label %65

65:                                               ; preds = %56, %49, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_macro(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.80, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = tail call fastcc zeroext i16 @init_table_(ptr noundef %0, i16 noundef zeroext 4, ptr noundef nonnull @.str.81)
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %87, label %38

38:                                               ; preds = %35
  %39 = zext i16 %36 to i32
  %40 = zext i8 %10 to i32
  %41 = shl nuw nsw i32 %40, 3
  %42 = add nuw nsw i32 %41, %39
  %43 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %42) #7
  %44 = add nuw nsw i32 %42, 4
  %45 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %44) #7
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 4
  br i1 %49, label %50, label %70

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 4
  %56 = load i32, ptr %7, align 4
  %57 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 1
  %60 = and i8 %58, 5
  %61 = icmp eq i8 %60, 5
  %62 = or i1 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 47
  br label %67

67:                                               ; preds = %63, %50
  %68 = phi i32 [ %66, %63 ], [ 32, %50 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.62, ptr noundef %55, i32 noundef %56, i32 noundef %68, i32 noundef %43, i32 noundef %45) #8
  %69 = load ptr, ptr %0, align 4
  br label %70

70:                                               ; preds = %67, %38
  %71 = phi ptr [ %69, %67 ], [ %46, %38 ]
  %72 = getelementptr inbounds %struct.nvkm_subdev, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %43) #7
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 1
  %80 = and i8 %78, 5
  %81 = icmp eq i8 %80, 5
  %82 = or i1 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %45) #7, !srcloc !10
  br label %87

87:                                               ; preds = %83, %76, %70, %35
  %88 = load i32, ptr %7, align 4
  %89 = add i32 %88, 2
  store i32 %89, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_done(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 1
  %17 = and i8 %15, 5
  %18 = icmp eq i8 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 47
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i32 [ %23, %20 ], [ 32, %6 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.82, ptr noundef %11, i32 noundef %13, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  store i32 0, ptr %27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_resume(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 1
  %17 = and i8 %15, 5
  %18 = icmp eq i8 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 47
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i32 [ %23, %20 ], [ 32, %6 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.83, ptr noundef %11, i32 noundef %13, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, -3
  store i8 %32, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_strap_condition(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.84, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %13) #8
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi ptr [ %37, %35 ], [ %14, %1 ]
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 9
  store i32 %41, ptr %7, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 22
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @nvkm_devinit_mmio(ptr noundef %45, i32 noundef 1052672) #7
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %60, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 1
  %52 = and i8 %50, 5
  %53 = icmp eq i8 %52, 5
  %54 = or i1 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %46
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %60

60:                                               ; preds = %55, %48, %38
  %61 = phi i32 [ %59, %55 ], [ 0, %48 ], [ 0, %38 ]
  %62 = and i32 %61, %10
  %63 = icmp eq i32 %62, %13
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = or i8 %66, 2
  store i8 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_time(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.85, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 3
  store i32 %37, ptr %7, align 4
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 1
  %41 = and i8 %39, 5
  %42 = icmp eq i8 %41, 5
  %43 = or i1 %40, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = zext i16 %10 to i32
  %46 = icmp ult i16 %10, 1000
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %48(i32 noundef %45) #7
  br label %57

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %45, 900
  %51 = udiv i32 %50, 1000
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i32 [ %54, %52 ], [ %51, %49 ]
  %54 = add nsw i32 %53, -1
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %52

57:                                               ; preds = %52, %47, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_condition(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.86, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 2
  store i32 %37, ptr %7, align 4
  %38 = tail call fastcc zeroext i1 @init_condition_met(ptr noundef %0, i8 noundef zeroext %10)
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_io_condition(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, 5
  %26 = icmp eq i8 %25, 5
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  br label %32

32:                                               ; preds = %28, %15
  %33 = phi i32 [ %31, %28 ], [ 32, %15 ]
  %34 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.87, ptr noundef %20, i32 noundef %21, i32 noundef %33, i32 noundef %34) #8
  %35 = load ptr, ptr %0, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = phi ptr [ %35, %32 ], [ %11, %1 ]
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 2
  store i32 %39, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 21
  %43 = load ptr, ptr %42, align 8
  %44 = tail call fastcc zeroext i16 @init_table_(ptr noundef %0, i16 noundef zeroext 8, ptr noundef nonnull @.str.88) #7
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %104, label %46

46:                                               ; preds = %36
  %47 = zext i16 %44 to i32
  %48 = zext i8 %10 to i32
  %49 = mul nuw nsw i32 %48, 5
  %50 = add nuw nsw i32 %49, %47
  %51 = tail call zeroext i16 @nvbios_rd16(ptr noundef %43, i32 noundef %50) #7
  %52 = add nuw nsw i32 %50, 2
  %53 = tail call zeroext i8 @nvbios_rd08(ptr noundef %43, i32 noundef %52) #7
  %54 = add nuw nsw i32 %50, 3
  %55 = tail call zeroext i8 @nvbios_rd08(ptr noundef %43, i32 noundef %54) #7
  %56 = add nuw nsw i32 %50, 4
  %57 = tail call zeroext i8 @nvbios_rd08(ptr noundef %43, i32 noundef %56) #7
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 4
  br i1 %61, label %62, label %85

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %58, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_subdev, ptr %58, i32 0, i32 4
  %68 = load i32, ptr %7, align 4
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %70 = load i8, ptr %69, align 4
  %71 = icmp eq i8 %70, 1
  %72 = and i8 %70, 5
  %73 = icmp eq i8 %72, 5
  %74 = or i1 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 47
  br label %79

79:                                               ; preds = %75, %62
  %80 = phi i32 [ %78, %75 ], [ 32, %62 ]
  %81 = zext i16 %51 to i32
  %82 = zext i8 %53 to i32
  %83 = zext i8 %55 to i32
  %84 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.89, ptr noundef %67, i32 noundef %68, i32 noundef %80, i32 noundef %48, i32 noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %84) #8
  br label %85

85:                                               ; preds = %79, %46
  %86 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %87 = load i8, ptr %86, align 4
  %88 = icmp eq i8 %87, 1
  %89 = and i8 %87, 5
  %90 = icmp eq i8 %89, 5
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @llvm.smax.i32(i32 %95, i32 0) #7
  %97 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %98, i32 noundef %96, i16 noundef zeroext %51, i8 noundef zeroext %53) #7
  br label %100

100:                                              ; preds = %92, %85
  %101 = phi i8 [ %99, %92 ], [ 0, %85 ]
  %102 = and i8 %101, %55
  %103 = icmp eq i8 %102, %57
  br i1 %103, label %108, label %104

104:                                              ; preds = %100, %36
  %105 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %106 = load i8, ptr %105, align 4
  %107 = or i8 %106, 2
  store i8 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_reg16(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = zext i16 %13 to i32
  br label %41

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 1
  %30 = and i8 %28, 5
  %31 = icmp eq i8 %30, 5
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 47
  br label %37

37:                                               ; preds = %33, %20
  %38 = phi i32 [ %36, %33 ], [ 32, %20 ]
  %39 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.90, ptr noundef %25, i32 noundef %26, i32 noundef %38, i32 noundef %10, i32 noundef %39) #8
  %40 = load ptr, ptr %0, align 4
  br label %41

41:                                               ; preds = %37, %18
  %42 = phi i32 [ %19, %18 ], [ %39, %37 ]
  %43 = phi ptr [ %14, %18 ], [ %40, %37 ]
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 7
  store i32 %45, ptr %7, align 4
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %61, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 1
  %54 = and i8 %52, 5
  %55 = icmp eq i8 %54, 5
  %56 = or i1 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %42) #7, !srcloc !10
  br label %61

61:                                               ; preds = %57, %50, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_index_io(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 3
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 4
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 5
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  %30 = load i32, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 1
  %34 = and i8 %32, 5
  %35 = icmp eq i8 %34, 5
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 47
  br label %41

41:                                               ; preds = %37, %24
  %42 = phi i32 [ %40, %37 ], [ 32, %24 ]
  %43 = zext i16 %10 to i32
  %44 = and i16 %13, 255
  %45 = zext i16 %44 to i32
  %46 = zext i8 %16 to i32
  %47 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.91, ptr noundef %29, i32 noundef %30, i32 noundef %42, i32 noundef %43, i32 noundef %45, i32 noundef %46, i32 noundef %47) #8
  br label %48

48:                                               ; preds = %41, %1
  %49 = trunc i16 %13 to i8
  %50 = load i32, ptr %7, align 4
  %51 = add i32 %50, 6
  store i32 %51, ptr %7, align 4
  %52 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 1
  %55 = and i8 %53, 5
  %56 = icmp eq i8 %55, 5
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0) #7
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %64, i32 noundef %62, i16 noundef zeroext %10, i8 noundef zeroext %49) #7
  br label %66

66:                                               ; preds = %58, %48
  %67 = phi i8 [ %65, %58 ], [ 0, %48 ]
  %68 = and i8 %67, %16
  %69 = or i8 %68, %19
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr inbounds %struct.nvkm_subdev, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 15
  %74 = load i32, ptr %73, align 8
  %75 = icmp ult i32 %74, 80
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = icmp eq i16 %10, 980
  %78 = icmp eq i8 %49, 68
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %76, %66
  %83 = load i8, ptr %52, align 4
  %84 = icmp eq i8 %83, 1
  %85 = and i8 %83, 5
  %86 = icmp eq i8 %85, 5
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 @llvm.smax.i32(i32 %90, i32 0) #7
  tail call void @nvkm_wrvgai(ptr noundef %72, i32 noundef %91, i16 noundef zeroext %10, i8 noundef zeroext %49, i8 noundef zeroext %69) #7
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, ptr %73, align 8
  %94 = icmp ult i32 %93, 80
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = icmp eq i16 %10, 980
  %97 = icmp eq i8 %49, 68
  %98 = and i1 %96, %97
  %99 = icmp eq i8 %69, 3
  %100 = and i1 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  store i32 1, ptr %102, align 4
  br label %103

103:                                              ; preds = %101, %95, %92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_pll(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %12) #7
  %14 = zext i16 %13 to i32
  %15 = mul nuw nsw i32 %14, 10
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 4
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 1
  %30 = and i8 %28, 5
  %31 = icmp eq i8 %30, 5
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 47
  br label %37

37:                                               ; preds = %33, %20
  %38 = phi i32 [ %36, %33 ], [ 32, %20 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.92, ptr noundef %25, i32 noundef %26, i32 noundef %38, i32 noundef %10, i32 noundef %15) #8
  br label %39

39:                                               ; preds = %37, %1
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 7
  store i32 %41, ptr %7, align 4
  %42 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 1
  %45 = and i8 %43, 5
  %46 = icmp eq i8 %45, 5
  %47 = or i1 %44, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %39
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 22
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %53, i32 noundef %10, i32 noundef %15) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %0, align 4
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %57, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_subdev, ptr %57, i32 0, i32 4
  %67 = load i32, ptr %7, align 4
  %68 = load i8, ptr %42, align 4
  %69 = icmp eq i8 %68, 1
  %70 = and i8 %68, 5
  %71 = icmp eq i8 %70, 5
  %72 = or i1 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 47
  br label %77

77:                                               ; preds = %73, %61
  %78 = phi i32 [ %76, %73 ], [ 32, %61 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.18, ptr noundef %66, i32 noundef %67, i32 noundef %78, i32 noundef %10, i32 noundef %15) #8
  br label %79

79:                                               ; preds = %77, %56, %48, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_reg(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.93, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %13) #8
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi ptr [ %37, %35 ], [ %14, %1 ]
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 9
  store i32 %41, ptr %7, align 4
  %42 = icmp eq i32 %10, 512
  %43 = zext i1 %42 to i32
  %44 = or i32 %13, %43
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %60, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 1
  %53 = and i8 %51, 5
  %54 = icmp eq i8 %53, 5
  %55 = or i1 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %44) #7, !srcloc !10
  br label %60

60:                                               ; preds = %56, %49, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_ram_restrict_pll(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 21
  %15 = load ptr, ptr %14, align 8
  %16 = tail call zeroext i8 @nvbios_ramcfg_count(ptr noundef %15) #7
  %17 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %0, align 4
  br i1 %19, label %29, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 21
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_bios, ptr %25, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = icmp ult i8 %27, 112
  br i1 %28, label %29, label %34

29:                                               ; preds = %21, %1
  %30 = tail call zeroext i8 @nvbios_ramcfg_index(ptr noundef %20) #7
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, -2147483648
  store i32 %32, ptr %17, align 4
  %33 = load ptr, ptr %0, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi ptr [ %33, %29 ], [ %20, %21 ]
  %36 = phi i32 [ %32, %29 ], [ %18, %21 ]
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 4
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 4
  %47 = load i32, ptr %7, align 4
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 1
  %51 = and i8 %49, 5
  %52 = icmp eq i8 %51, 5
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 47
  br label %58

58:                                               ; preds = %54, %41
  %59 = phi i32 [ %57, %54 ], [ 32, %41 ]
  %60 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.94, ptr noundef %46, i32 noundef %47, i32 noundef %59, i32 noundef %60) #8
  br label %61

61:                                               ; preds = %58, %34
  %62 = load i32, ptr %7, align 4
  %63 = add i32 %62, 2
  store i32 %63, ptr %7, align 4
  %64 = icmp eq i8 %16, 0
  br i1 %64, label %155, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %68 = zext i8 %10 to i32
  br label %69

69:                                               ; preds = %150, %65
  %70 = phi i32 [ %63, %65 ], [ %152, %150 ]
  %71 = phi i8 [ 0, %65 ], [ %153, %150 ]
  %72 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %70) #7
  %73 = icmp eq i8 %71, %37
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = icmp ugt i32 %76, 4
  br i1 %73, label %78, label %132

78:                                               ; preds = %69
  br i1 %77, label %79, label %96

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 4
  %85 = load i32, ptr %7, align 4
  %86 = load i8, ptr %66, align 4
  %87 = icmp eq i8 %86, 1
  %88 = and i8 %86, 5
  %89 = icmp eq i8 %88, 5
  %90 = or i1 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, ptr %67, align 4
  %93 = add i32 %92, 47
  br label %94

94:                                               ; preds = %91, %79
  %95 = phi i32 [ %93, %91 ], [ 32, %79 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.95, ptr noundef %84, i32 noundef %85, i32 noundef %95, i32 noundef %72) #8
  br label %96

96:                                               ; preds = %94, %78
  %97 = load i8, ptr %66, align 4
  %98 = icmp eq i8 %97, 1
  %99 = and i8 %97, 5
  %100 = icmp eq i8 %99, 5
  %101 = or i1 %98, %100
  br i1 %101, label %102, label %150

102:                                              ; preds = %96
  %103 = load ptr, ptr %0, align 4
  %104 = getelementptr inbounds %struct.nvkm_subdev, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 22
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %107, i32 noundef %68, i32 noundef %72) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %150, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr %0, align 4
  %112 = getelementptr inbounds %struct.nvkm_subdev, ptr %111, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %150

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.nvkm_subdev, ptr %111, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.nvkm_subdev, ptr %111, i32 0, i32 4
  %121 = load i32, ptr %7, align 4
  %122 = load i8, ptr %66, align 4
  %123 = icmp eq i8 %122, 1
  %124 = and i8 %122, 5
  %125 = icmp eq i8 %124, 5
  %126 = or i1 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load i32, ptr %67, align 4
  %129 = add i32 %128, 47
  br label %130

130:                                              ; preds = %127, %115
  %131 = phi i32 [ %129, %127 ], [ 32, %115 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %119, ptr noundef nonnull @.str.18, ptr noundef %120, i32 noundef %121, i32 noundef %131, i32 noundef %68, i32 noundef %72) #8
  br label %150

132:                                              ; preds = %69
  br i1 %77, label %133, label %150

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_subdev, ptr %74, i32 0, i32 4
  %139 = load i32, ptr %7, align 4
  %140 = load i8, ptr %66, align 4
  %141 = icmp eq i8 %140, 1
  %142 = and i8 %140, 5
  %143 = icmp eq i8 %142, 5
  %144 = or i1 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i32, ptr %67, align 4
  %147 = add i32 %146, 47
  br label %148

148:                                              ; preds = %145, %133
  %149 = phi i32 [ %147, %145 ], [ 32, %133 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull @.str.96, ptr noundef %138, i32 noundef %139, i32 noundef %149, i32 noundef %72) #8
  br label %150

150:                                              ; preds = %148, %132, %130, %110, %102, %96
  %151 = load i32, ptr %7, align 4
  %152 = add i32 %151, 4
  store i32 %152, ptr %7, align 4
  %153 = add nuw i8 %71, 1
  %154 = icmp ult i8 %153, %16
  br i1 %154, label %69, label %155

155:                                              ; preds = %150, %61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_reset_begun(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 1
  %17 = and i8 %15, 5
  %18 = icmp eq i8 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 47
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i32 [ %23, %20 ], [ 32, %6 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.97, ptr noundef %11, i32 noundef %13, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_reset_end(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 1
  %17 = and i8 %15, 5
  %18 = icmp eq i8 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 47
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i32 [ %23, %20 ], [ 32, %6 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.98, ptr noundef %11, i32 noundef %13, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_gpio(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 1
  %19 = and i8 %17, 5
  %20 = icmp eq i8 %19, 5
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 47
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %25, %22 ], [ 32, %10 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.99, ptr noundef %13, i32 noundef %15, i32 noundef %27) #8
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 1
  %35 = and i8 %33, 5
  %36 = icmp eq i8 %35, 5
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  tail call void @nvkm_gpio_reset(ptr noundef %6, i8 noundef zeroext -1) #7
  br label %39

39:                                               ; preds = %38, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_ram_restrict_zm_reg_group(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 6
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 21
  %21 = load ptr, ptr %20, align 8
  %22 = tail call zeroext i8 @nvbios_ramcfg_count(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %0, align 4
  br i1 %25, label %35, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 21
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_bios, ptr %31, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = icmp ult i8 %33, 112
  br i1 %34, label %35, label %40

35:                                               ; preds = %27, %1
  %36 = tail call zeroext i8 @nvbios_ramcfg_index(ptr noundef %26) #7
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, -2147483648
  store i32 %38, ptr %23, align 4
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %35, %27
  %41 = phi ptr [ %39, %35 ], [ %26, %27 ]
  %42 = phi i32 [ %38, %35 ], [ %24, %27 ]
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 4
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 4
  %53 = load i32, ptr %7, align 4
  %54 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 1
  %57 = and i8 %55, 5
  %58 = icmp eq i8 %57, 5
  %59 = or i1 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 47
  br label %64

64:                                               ; preds = %60, %47
  %65 = phi i32 [ %63, %60 ], [ 32, %47 ]
  %66 = zext i8 %13 to i32
  %67 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.100, ptr noundef %52, i32 noundef %53, i32 noundef %65, i32 noundef %10, i32 noundef %66, i32 noundef %67) #8
  br label %68

68:                                               ; preds = %64, %40
  %69 = load i32, ptr %7, align 4
  %70 = add i32 %69, 7
  store i32 %70, ptr %7, align 4
  %71 = icmp eq i8 %16, 0
  br i1 %71, label %197, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %75 = icmp eq i8 %22, 0
  %76 = zext i8 %13 to i32
  br label %77

77:                                               ; preds = %193, %72
  %78 = phi i8 [ 0, %72 ], [ %195, %193 ]
  %79 = phi i32 [ %10, %72 ], [ %194, %193 ]
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.nvkm_subdev, ptr %80, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, 4
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.nvkm_subdev, ptr %80, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.nvkm_subdev, ptr %80, i32 0, i32 4
  %90 = load i32, ptr %7, align 4
  %91 = load i8, ptr %73, align 4
  %92 = icmp eq i8 %91, 1
  %93 = and i8 %91, 5
  %94 = icmp eq i8 %93, 5
  %95 = or i1 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, ptr %74, align 4
  %98 = add i32 %97, 47
  br label %99

99:                                               ; preds = %96, %84
  %100 = phi i32 [ %98, %96 ], [ 32, %84 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.101, ptr noundef %89, i32 noundef %90, i32 noundef %100, i32 noundef %79) #8
  br label %101

101:                                              ; preds = %99, %77
  br i1 %75, label %171, label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %7, align 4
  br label %104

104:                                              ; preds = %166, %102
  %105 = phi i32 [ %168, %166 ], [ %103, %102 ]
  %106 = phi i8 [ %169, %166 ], [ 0, %102 ]
  %107 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %105) #7
  %108 = icmp eq i8 %106, %43
  %109 = load ptr, ptr %0, align 4
  %110 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp ugt i32 %111, 4
  br i1 %108, label %113, label %148

113:                                              ; preds = %104
  br i1 %112, label %114, label %132

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 4
  %120 = load i32, ptr %7, align 4
  %121 = load i8, ptr %73, align 4
  %122 = icmp eq i8 %121, 1
  %123 = and i8 %121, 5
  %124 = icmp eq i8 %123, 5
  %125 = or i1 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %114
  %127 = load i32, ptr %74, align 4
  %128 = add i32 %127, 47
  br label %129

129:                                              ; preds = %126, %114
  %130 = phi i32 [ %128, %126 ], [ 32, %114 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.102, ptr noundef %119, i32 noundef %120, i32 noundef %130, i32 noundef %107) #8
  %131 = load ptr, ptr %0, align 4
  br label %132

132:                                              ; preds = %129, %113
  %133 = phi ptr [ %131, %129 ], [ %109, %113 ]
  %134 = getelementptr inbounds %struct.nvkm_subdev, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %79) #7
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %166, label %138

138:                                              ; preds = %132
  %139 = load i8, ptr %73, align 4
  %140 = icmp eq i8 %139, 1
  %141 = and i8 %139, 5
  %142 = icmp eq i8 %141, 5
  %143 = or i1 %140, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 11
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %146, i32 %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %107) #7, !srcloc !10
  br label %166

148:                                              ; preds = %104
  br i1 %112, label %149, label %166

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 4
  %155 = load i32, ptr %7, align 4
  %156 = load i8, ptr %73, align 4
  %157 = icmp eq i8 %156, 1
  %158 = and i8 %156, 5
  %159 = icmp eq i8 %158, 5
  %160 = or i1 %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %149
  %162 = load i32, ptr %74, align 4
  %163 = add i32 %162, 47
  br label %164

164:                                              ; preds = %161, %149
  %165 = phi i32 [ %163, %161 ], [ 32, %149 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %153, ptr noundef nonnull @.str.103, ptr noundef %154, i32 noundef %155, i32 noundef %165, i32 noundef %107) #8
  br label %166

166:                                              ; preds = %164, %148, %144, %138, %132
  %167 = load i32, ptr %7, align 4
  %168 = add i32 %167, 4
  store i32 %168, ptr %7, align 4
  %169 = add nuw i8 %106, 1
  %170 = icmp ult i8 %169, %22
  br i1 %170, label %104, label %171

171:                                              ; preds = %166, %101
  %172 = load ptr, ptr %0, align 4
  %173 = getelementptr inbounds %struct.nvkm_subdev, ptr %172, i32 0, i32 5
  %174 = load i32, ptr %173, align 4
  %175 = icmp ugt i32 %174, 4
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.nvkm_subdev, ptr %172, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.nvkm_subdev, ptr %172, i32 0, i32 4
  %182 = load i32, ptr %7, align 4
  %183 = load i8, ptr %73, align 4
  %184 = icmp eq i8 %183, 1
  %185 = and i8 %183, 5
  %186 = icmp eq i8 %185, 5
  %187 = or i1 %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %176
  %189 = load i32, ptr %74, align 4
  %190 = add i32 %189, 47
  br label %191

191:                                              ; preds = %188, %176
  %192 = phi i32 [ %190, %188 ], [ 32, %176 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %180, ptr noundef nonnull @.str.104, ptr noundef %181, i32 noundef %182, i32 noundef %192) #8
  br label %193

193:                                              ; preds = %191, %171
  %194 = add i32 %79, %76
  %195 = add nuw i8 %78, 1
  %196 = icmp ult i8 %195, %16
  br i1 %196, label %77, label %197

197:                                              ; preds = %193, %68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_copy_zm_reg(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.105, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %13, i32 noundef %10) #8
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi ptr [ %37, %35 ], [ %14, %1 ]
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 9
  store i32 %41, ptr %7, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 1
  %50 = and i8 %48, 5
  %51 = icmp eq i8 %50, 5
  %52 = or i1 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %58

58:                                               ; preds = %53, %46, %38
  %59 = phi i32 [ %57, %53 ], [ 0, %46 ], [ 0, %38 ]
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %13) #7
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %76, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq i8 %67, 1
  %69 = and i8 %67, 5
  %70 = icmp eq i8 %69, 5
  %71 = or i1 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %59) #7, !srcloc !10
  br label %76

76:                                               ; preds = %72, %65, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_reg_group(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.106, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10) #8
  br label %37

37:                                               ; preds = %35, %1
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 6
  store i32 %39, ptr %7, align 4
  %40 = icmp eq i8 %13, 0
  br i1 %40, label %91, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  br label %44

44:                                               ; preds = %87, %41
  %45 = phi i8 [ %13, %41 ], [ %47, %87 ]
  %46 = phi i32 [ %39, %41 ], [ %89, %87 ]
  %47 = add i8 %45, -1
  %48 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %46) #7
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %49, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 4
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %49, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %49, i32 0, i32 4
  %59 = load i32, ptr %7, align 4
  %60 = load i8, ptr %42, align 4
  %61 = icmp eq i8 %60, 1
  %62 = and i8 %60, 5
  %63 = icmp eq i8 %62, 5
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, ptr %43, align 4
  %67 = add i32 %66, 47
  br label %68

68:                                               ; preds = %65, %53
  %69 = phi i32 [ %67, %65 ], [ 32, %53 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.4, ptr noundef %58, i32 noundef %59, i32 noundef %69, i32 noundef %48) #8
  %70 = load ptr, ptr %0, align 4
  br label %71

71:                                               ; preds = %68, %44
  %72 = phi ptr [ %70, %68 ], [ %49, %44 ]
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = load i8, ptr %42, align 4
  %79 = icmp eq i8 %78, 1
  %80 = and i8 %78, 5
  %81 = icmp eq i8 %80, 5
  %82 = or i1 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %48) #7, !srcloc !10
  br label %87

87:                                               ; preds = %83, %77, %71
  %88 = load i32, ptr %7, align 4
  %89 = add i32 %88, 4
  store i32 %89, ptr %7, align 4
  %90 = icmp eq i8 %47, 0
  br i1 %90, label %91, label %44

91:                                               ; preds = %87, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_reserved(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %8) #7
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, -86
  %12 = select i1 %11, i32 4, i32 1
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 4
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 1
  %27 = and i8 %25, 5
  %28 = icmp eq i8 %27, 5
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 47
  br label %34

34:                                               ; preds = %30, %17
  %35 = phi i32 [ %33, %30 ], [ 32, %17 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.107, ptr noundef %22, i32 noundef %23, i32 noundef %35, i32 noundef %10) #8
  br label %36

36:                                               ; preds = %34, %1
  br i1 %11, label %37, label %86

37:                                               ; preds = %36
  %38 = call i32 @llvm.umax.i32(i32 %12, i32 2)
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 4
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 1
  %46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %45) #7
  %47 = zext i8 %46 to i32
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %47) #8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 4
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, 2
  %57 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %56) #7
  %58 = zext i8 %57 to i32
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %58) #8
  br label %60

60:                                               ; preds = %54, %49
  %61 = icmp eq i32 %38, 3
  br i1 %61, label %86, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %63, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 4
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, ptr %7, align 4
  %69 = add i32 %68, 3
  %70 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %69) #7
  %71 = zext i8 %70 to i32
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %71) #8
  br label %73

73:                                               ; preds = %67, %62
  %74 = icmp eq i32 %38, 4
  br i1 %74, label %86, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 4
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, ptr %7, align 4
  %82 = add i32 %81, 4
  %83 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %82) #7
  %84 = zext i8 %83 to i32
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %84) #8
  br label %86

86:                                               ; preds = %80, %75, %73, %60, %36
  %87 = load ptr, ptr %0, align 4
  %88 = getelementptr inbounds %struct.nvkm_subdev, ptr %87, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #8
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i32, ptr %7, align 4
  %95 = add i32 %94, %12
  store i32 %95, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_xlat(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 6
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %15) #7
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 7
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %18) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 8
  %22 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %21) #7
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 12
  %25 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %24) #7
  %26 = load i32, ptr %7, align 4
  %27 = add i32 %26, 16
  %28 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %27) #7
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 4
  br i1 %32, label %33, label %62

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 4
  %39 = load i32, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 1
  %43 = and i8 %41, 5
  %44 = icmp eq i8 %43, 5
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 47
  br label %50

50:                                               ; preds = %46, %33
  %51 = phi i32 [ %49, %46 ], [ 32, %33 ]
  %52 = zext i8 %19 to i32
  %53 = zext i8 %13 to i32
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.22, ptr @.str.21
  %57 = sub nuw nsw i32 256, %53
  %58 = select i1 %55, i32 %53, i32 %57
  %59 = zext i8 %16 to i32
  %60 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.110, ptr noundef %38, i32 noundef %39, i32 noundef %51, i32 noundef %22, i32 noundef %25, i32 noundef %52, i32 noundef %10, ptr noundef nonnull %56, i32 noundef %58, i32 noundef %59, i32 noundef %60) #8
  %61 = load ptr, ptr %0, align 4
  br label %62

62:                                               ; preds = %50, %1
  %63 = phi ptr [ %61, %50 ], [ %29, %1 ]
  %64 = load i32, ptr %7, align 4
  %65 = add i32 %64, 17
  store i32 %65, ptr %7, align 4
  %66 = getelementptr inbounds %struct.nvkm_subdev, ptr %63, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 1
  %74 = and i8 %72, 5
  %75 = icmp eq i8 %74, 5
  %76 = or i1 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %68
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %82

82:                                               ; preds = %77, %70, %62
  %83 = phi i32 [ %81, %77 ], [ 0, %70 ], [ 0, %62 ]
  %84 = zext i8 %13 to i32
  %85 = lshr i32 %83, %84
  %86 = sub nuw nsw i32 256, %84
  %87 = shl i32 %83, %86
  %88 = icmp slt i8 %13, 0
  %89 = select i1 %88, i32 %87, i32 %85
  %90 = trunc i32 %89 to i8
  %91 = and i8 %16, %90
  %92 = load ptr, ptr %0, align 4
  %93 = getelementptr inbounds %struct.nvkm_subdev, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 21
  %96 = load ptr, ptr %95, align 8
  %97 = tail call fastcc zeroext i16 @init_table_(ptr noundef %0, i16 noundef zeroext 16, ptr noundef nonnull @.str.111) #7
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %136, label %99

99:                                               ; preds = %82
  %100 = zext i16 %97 to i32
  %101 = zext i8 %19 to i32
  %102 = shl nuw nsw i32 %101, 1
  %103 = add nuw nsw i32 %102, %100
  %104 = tail call zeroext i16 @nvbios_rd16(ptr noundef %96, i32 noundef %103) #7
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %99
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.nvkm_subdev, ptr %107, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = icmp ugt i32 %109, 1
  br i1 %110, label %111, label %136

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.nvkm_subdev, ptr %107, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nvkm_subdev, ptr %107, i32 0, i32 4
  %117 = load i32, ptr %7, align 4
  %118 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 1
  %121 = and i8 %119, 5
  %122 = icmp eq i8 %121, 5
  %123 = or i1 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, 47
  br label %128

128:                                              ; preds = %124, %111
  %129 = phi i32 [ %127, %124 ], [ 32, %111 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.112, ptr noundef %116, i32 noundef %117, i32 noundef %129, i32 noundef %101) #8
  br label %136

130:                                              ; preds = %99
  %131 = zext i16 %104 to i32
  %132 = zext i8 %91 to i32
  %133 = add nuw nsw i32 %131, %132
  %134 = tail call zeroext i8 @nvbios_rd08(ptr noundef %96, i32 noundef %133) #7
  %135 = zext i8 %134 to i32
  br label %136

136:                                              ; preds = %130, %128, %106, %82
  %137 = phi i32 [ %135, %130 ], [ 0, %82 ], [ 0, %106 ], [ 0, %128 ]
  %138 = zext i8 %28 to i32
  %139 = shl i32 %137, %138
  %140 = load ptr, ptr %0, align 4
  %141 = getelementptr inbounds %struct.nvkm_subdev, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %22) #7
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %161, label %145

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %147 = load i8, ptr %146, align 4
  %148 = icmp eq i8 %147, 1
  %149 = and i8 %147, 5
  %150 = icmp eq i8 %149, 5
  %151 = or i1 %148, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.nvkm_device, ptr %142, i32 0, i32 11
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 %143
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %157 = and i32 %156, %25
  %158 = or i32 %157, %139
  %159 = load ptr, ptr %153, align 4
  %160 = getelementptr i8, ptr %159, i32 %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #7, !srcloc !10
  br label %161

161:                                              ; preds = %152, %145, %136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_mask_add(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 9
  %16 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %15) #7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %27 = load i32, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = and i8 %29, 5
  %32 = icmp eq i8 %31, 5
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 47
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i32 [ %37, %34 ], [ 32, %21 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.113, ptr noundef %26, i32 noundef %27, i32 noundef %39, i32 noundef %10, i32 noundef %13, i32 noundef %16) #8
  %40 = load ptr, ptr %0, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi ptr [ %40, %38 ], [ %17, %1 ]
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, 13
  store i32 %44, ptr %7, align 4
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 1
  %53 = and i8 %51, 5
  %54 = icmp eq i8 %53, 5
  %55 = or i1 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 %47
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %61

61:                                               ; preds = %56, %49, %41
  %62 = phi i32 [ %60, %56 ], [ 0, %49 ], [ 0, %41 ]
  %63 = and i32 %62, %13
  %64 = add i32 %62, %16
  %65 = xor i32 %13, -1
  %66 = and i32 %64, %65
  %67 = or i32 %66, %63
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr inbounds %struct.nvkm_subdev, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %10) #7
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %84, label %73

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %75 = load i8, ptr %74, align 4
  %76 = icmp eq i8 %75, 1
  %77 = and i8 %75, 5
  %78 = icmp eq i8 %77, 5
  %79 = or i1 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %67) #7, !srcloc !10
  br label %84

84:                                               ; preds = %80, %73, %61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_auxch(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  %37 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.114, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %37) #8
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 6
  store i32 %40, ptr %7, align 4
  %41 = icmp eq i8 %13, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  br label %45

45:                                               ; preds = %76, %42
  %46 = phi i8 [ %13, %42 ], [ %48, %76 ]
  %47 = phi i32 [ %40, %42 ], [ %81, %76 ]
  %48 = add i8 %46, -1
  %49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %47) #7
  %50 = load i32, ptr %7, align 4
  %51 = add i32 %50, 1
  %52 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %51) #7
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, 4
  br i1 %56, label %57, label %76

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 4
  %63 = load i32, ptr %7, align 4
  %64 = load i8, ptr %43, align 4
  %65 = icmp eq i8 %64, 1
  %66 = and i8 %64, 5
  %67 = icmp eq i8 %66, 5
  %68 = or i1 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, ptr %44, align 4
  %71 = add i32 %70, 47
  br label %72

72:                                               ; preds = %69, %57
  %73 = phi i32 [ %71, %69 ], [ 32, %57 ]
  %74 = zext i8 %49 to i32
  %75 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.115, ptr noundef %62, i32 noundef %63, i32 noundef %73, i32 noundef %10, i32 noundef %74, i32 noundef %75) #8
  br label %76

76:                                               ; preds = %72, %45
  %77 = tail call fastcc zeroext i8 @init_rdauxr(ptr noundef %0, i32 noundef %10)
  %78 = and i8 %77, %49
  %79 = or i8 %78, %52
  tail call fastcc void @init_wrauxr(ptr noundef %0, i32 noundef %10, i8 noundef zeroext %79)
  %80 = load i32, ptr %7, align 4
  %81 = add i32 %80, 2
  store i32 %81, ptr %7, align 4
  %82 = icmp eq i8 %48, 0
  br i1 %82, label %83, label %45

83:                                               ; preds = %76, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_zm_auxch(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @nvbios_rd32(ptr noundef %6, i32 noundef %9) #7
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, 5
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %12) #7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 47
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i32 [ %34, %31 ], [ 32, %18 ]
  %37 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.117, ptr noundef %23, i32 noundef %24, i32 noundef %36, i32 noundef %10, i32 noundef %37) #8
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 6
  store i32 %40, ptr %7, align 4
  %41 = icmp eq i8 %13, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  br label %45

45:                                               ; preds = %72, %42
  %46 = phi i8 [ %13, %42 ], [ %48, %72 ]
  %47 = phi i32 [ %40, %42 ], [ %74, %72 ]
  %48 = add i8 %46, -1
  %49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %47) #7
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 4
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %50, i32 0, i32 4
  %60 = load i32, ptr %7, align 4
  %61 = load i8, ptr %43, align 4
  %62 = icmp eq i8 %61, 1
  %63 = and i8 %61, 5
  %64 = icmp eq i8 %63, 5
  %65 = or i1 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, ptr %44, align 4
  %68 = add i32 %67, 47
  br label %69

69:                                               ; preds = %66, %54
  %70 = phi i32 [ %68, %66 ], [ 32, %54 ]
  %71 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.118, ptr noundef %59, i32 noundef %60, i32 noundef %70, i32 noundef %10, i32 noundef %71) #8
  br label %72

72:                                               ; preds = %69, %45
  tail call fastcc void @init_wrauxr(ptr noundef %0, i32 noundef %10, i8 noundef zeroext %49)
  %73 = load i32, ptr %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %7, align 4
  %75 = icmp eq i8 %48, 0
  br i1 %75, label %76, label %45

76:                                               ; preds = %72, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_i2c_long_if(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %12) #7
  %14 = load i32, ptr %10, align 4
  %15 = add i32 %14, 2
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %15) #7
  %17 = lshr i8 %16, 1
  %18 = load i32, ptr %10, align 4
  %19 = add i32 %18, 3
  %20 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %19) #7
  %21 = load i32, ptr %10, align 4
  %22 = add i32 %21, 4
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %22) #7
  %24 = load i32, ptr %10, align 4
  %25 = add i32 %24, 5
  %26 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %25) #7
  %27 = load i32, ptr %10, align 4
  %28 = add i32 %27, 6
  %29 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %28) #7
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 4
  br i1 %33, label %34, label %60

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 4
  %40 = load i32, ptr %10, align 4
  %41 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 1
  %44 = and i8 %42, 5
  %45 = icmp eq i8 %44, 5
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 47
  br label %51

51:                                               ; preds = %47, %34
  %52 = phi i32 [ %50, %47 ], [ 32, %34 ]
  %53 = zext i8 %13 to i32
  %54 = zext i8 %17 to i32
  %55 = zext i8 %20 to i32
  %56 = zext i8 %23 to i32
  %57 = zext i8 %26 to i32
  %58 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.119, ptr noundef %39, i32 noundef %40, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58) #8
  %59 = load ptr, ptr %0, align 4
  br label %60

60:                                               ; preds = %51, %1
  %61 = phi ptr [ %59, %51 ], [ %30, %1 ]
  %62 = load i32, ptr %10, align 4
  %63 = add i32 %62, 7
  store i32 %63, ptr %10, align 4
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %61, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 26
  %67 = load ptr, ptr %66, align 4
  switch i8 %13, label %77 [
    i8 -1, label %68
    i8 -128, label %81
  ]

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dcb_output, ptr %70, i32 0, i32 14
  %74 = load i8, ptr %73, align 4, !range !13
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 -1, i32 -2
  br label %81

77:                                               ; preds = %60
  %78 = zext i8 %13 to i32
  %79 = icmp eq i8 %13, -127
  %80 = select i1 %79, i32 -2, i32 %78
  br label %81

81:                                               ; preds = %77, %72, %68, %60
  %82 = phi i32 [ -1, %68 ], [ %80, %77 ], [ %76, %72 ], [ -1, %60 ]
  %83 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %67, i32 noundef %82) #7
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %83, i32 0, i32 5
  %86 = icmp eq ptr %85, null
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %107, label %88

88:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i8 %23, ptr %2, align 2
  %89 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %20, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %90 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %90, i8 0, i32 16, i1 false), !annotation !8
  %91 = zext i8 %17 to i16
  store i16 %91, ptr %4, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 2, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %91, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %98, align 4
  %99 = call i32 @i2c_transfer(ptr noundef nonnull %85, ptr noundef nonnull %4, i32 noundef 2) #7
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load i8, ptr %3, align 1
  %103 = and i8 %102, %26
  %104 = icmp eq i8 %103, %29
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  br label %111

106:                                              ; preds = %101, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  br label %107

107:                                              ; preds = %106, %81
  %108 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %109 = load i8, ptr %108, align 4
  %110 = or i8 %109, 2
  store i8 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %107, %105
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_gpio_ne(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dcb_gpio_func, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %16) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 4
  %28 = load i32, ptr %14, align 4
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 1
  %32 = and i8 %30, 5
  %33 = icmp eq i8 %32, 5
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 47
  br label %39

39:                                               ; preds = %35, %22
  %40 = phi i32 [ %38, %35 ], [ 32, %22 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.120, ptr noundef %27, i32 noundef %28, i32 noundef %40) #8
  br label %41

41:                                               ; preds = %39, %1
  %42 = load i32, ptr %14, align 4
  %43 = add i32 %42, 2
  store i32 %43, ptr %14, align 4
  %44 = zext i8 %17 to i32
  %45 = and i32 %43, 65535
  %46 = add i32 %43, %44
  %47 = icmp ugt i32 %46, %45
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = trunc i32 %43 to i16
  br label %50

50:                                               ; preds = %63, %48
  %51 = phi i32 [ %64, %63 ], [ %43, %48 ]
  %52 = phi i32 [ %66, %63 ], [ %45, %48 ]
  %53 = phi i16 [ %65, %63 ], [ %49, %48 ]
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 4
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = tail call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %52) #7
  %60 = zext i8 %59 to i32
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %60) #8
  %62 = load i32, ptr %14, align 4
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi i32 [ %51, %50 ], [ %62, %58 ]
  %65 = add i16 %53, 1
  %66 = zext i16 %65 to i32
  %67 = add i32 %64, %44
  %68 = icmp ugt i32 %67, %66
  br i1 %68, label %50, label %69

69:                                               ; preds = %63, %41
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr inbounds %struct.nvkm_subdev, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #8
  br label %76

76:                                               ; preds = %74, %69
  %77 = call zeroext i16 @dcb_gpio_parse(ptr noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %163, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  br label %82

82:                                               ; preds = %158, %79
  %83 = phi i8 [ 1, %79 ], [ %159, %158 ]
  %84 = load i8, ptr %2, align 1
  %85 = icmp eq i8 %84, -1
  br i1 %85, label %158, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %14, align 4
  %88 = and i32 %87, 65535
  %89 = add i32 %87, %44
  %90 = icmp ugt i32 %89, %88
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %88) #7
  %93 = icmp eq i8 %84, %92
  br i1 %93, label %107, label %94

94:                                               ; preds = %91
  %95 = trunc i32 %87 to i16
  br label %96

96:                                               ; preds = %103, %94
  %97 = phi i16 [ %95, %94 ], [ %98, %103 ]
  %98 = add i16 %97, 1
  %99 = zext i16 %98 to i32
  %100 = load i32, ptr %14, align 4
  %101 = add i32 %100, %44
  %102 = icmp ugt i32 %101, %99
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8, ptr %2, align 1
  %105 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %99) #7
  %106 = icmp eq i8 %104, %105
  br i1 %106, label %107, label %96

107:                                              ; preds = %103, %96, %91, %86
  %108 = phi i32 [ %88, %86 ], [ %88, %91 ], [ %99, %96 ], [ %99, %103 ]
  %109 = load ptr, ptr %0, align 4
  %110 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp ugt i32 %111, 4
  br i1 %112, label %113, label %132

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.nvkm_subdev, ptr %109, i32 0, i32 4
  %119 = load i32, ptr %14, align 4
  %120 = load i8, ptr %80, align 4
  %121 = icmp eq i8 %120, 1
  %122 = and i8 %120, 5
  %123 = icmp eq i8 %122, 5
  %124 = or i1 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %113
  %126 = load i32, ptr %81, align 4
  %127 = add i32 %126, 47
  br label %128

128:                                              ; preds = %125, %113
  %129 = phi i32 [ %127, %125 ], [ 32, %113 ]
  %130 = load i8, ptr %2, align 1
  %131 = zext i8 %130 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.122, ptr noundef %118, i32 noundef %119, i32 noundef %129, i32 noundef %131) #8
  br label %132

132:                                              ; preds = %128, %107
  %133 = load i32, ptr %14, align 4
  %134 = add i32 %133, %44
  %135 = icmp eq i32 %134, %108
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load ptr, ptr %0, align 4
  %138 = getelementptr inbounds %struct.nvkm_subdev, ptr %137, i32 0, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = icmp ugt i32 %139, 4
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #8
  br label %143

143:                                              ; preds = %141, %136
  %144 = load i8, ptr %80, align 4
  %145 = icmp eq i8 %144, 1
  %146 = and i8 %144, 5
  %147 = icmp eq i8 %146, 5
  %148 = or i1 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i8, ptr %2, align 1
  call void @nvkm_gpio_reset(ptr noundef %13, i8 noundef zeroext %150) #7
  br label %151

151:                                              ; preds = %149, %143, %132
  %152 = load ptr, ptr %0, align 4
  %153 = getelementptr inbounds %struct.nvkm_subdev, ptr %152, i32 0, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %154, 4
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #8
  br label %158

158:                                              ; preds = %156, %151, %82
  %159 = add i8 %83, 1
  %160 = zext i8 %83 to i32
  %161 = call zeroext i16 @dcb_gpio_parse(ptr noundef %9, i32 noundef 0, i32 noundef %160, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %82

163:                                              ; preds = %158, %76
  %164 = load i32, ptr %14, align 4
  %165 = add i32 %164, %44
  store i32 %165, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgai(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_nvreg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %1, -4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 15
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 79
  br i1 %11, label %12, label %114

12:                                               ; preds = %2
  %13 = icmp sgt i32 %1, -1
  br i1 %13, label %43, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 1
  %18 = and i8 %16, 5
  %19 = icmp eq i8 %18, 5
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 4
  %33 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.7, ptr noundef %32, i32 noundef %34, i32 noundef %37) #8
  br label %38

38:                                               ; preds = %29, %25, %21, %14
  %39 = phi i32 [ %23, %21 ], [ 0, %25 ], [ 0, %29 ], [ 0, %14 ]
  %40 = shl i32 %39, 11
  %41 = add i32 %40, %8
  %42 = and i32 %41, 2147483644
  br label %43

43:                                               ; preds = %38, %12
  %44 = phi i32 [ %42, %38 ], [ %8, %12 ]
  %45 = and i32 %44, 1073741824
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %114, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 1
  %51 = and i8 %49, 5
  %52 = icmp eq i8 %51, 5
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 4
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.8, ptr noundef %68, i32 noundef %70, i32 noundef %73) #8
  br label %74

74:                                               ; preds = %63, %58, %54, %47
  %75 = phi i32 [ %56, %54 ], [ 0, %58 ], [ 0, %63 ], [ 0, %47 ]
  %76 = shl i32 %75, 11
  %77 = add i32 %76, %44
  %78 = and i32 %77, -1073741828
  %79 = and i32 %77, 536870912
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %74
  %82 = load i8, ptr %48, align 4
  %83 = icmp eq i8 %82, 1
  %84 = and i8 %82, 5
  %85 = icmp eq i8 %84, 5
  %86 = or i1 %83, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = icmp eq i32 %89, 2
  %93 = select i1 %92, i32 128, i32 0
  br label %110

94:                                               ; preds = %87
  %95 = load ptr, ptr %0, align 4
  %96 = getelementptr inbounds %struct.nvkm_subdev, ptr %95, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.nvkm_subdev, ptr %95, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_subdev, ptr %95, i32 0, i32 4
  %105 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %103, ptr noundef nonnull @.str.9, ptr noundef %104, i32 noundef %106, i32 noundef %109) #8
  br label %110

110:                                              ; preds = %99, %94, %91, %81
  %111 = phi i32 [ %93, %91 ], [ 0, %94 ], [ 0, %99 ], [ 0, %81 ]
  %112 = add nuw nsw i32 %111, %78
  %113 = and i32 %112, -536870916
  br label %114

114:                                              ; preds = %110, %74, %43, %2
  %115 = phi i32 [ %113, %110 ], [ %78, %74 ], [ %44, %43 ], [ %8, %2 ]
  %116 = and i32 %115, -16777213
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %0, align 4
  %120 = getelementptr inbounds %struct.nvkm_subdev, ptr %119, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, 1
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.nvkm_subdev, ptr %119, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.nvkm_subdev, ptr %119, i32 0, i32 4
  %129 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %132 = load i8, ptr %131, align 4
  %133 = icmp eq i8 %132, 1
  %134 = and i8 %132, 5
  %135 = icmp eq i8 %134, 5
  %136 = or i1 %133, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 47
  br label %141

141:                                              ; preds = %137, %123
  %142 = phi i32 [ %140, %137 ], [ 32, %123 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %127, ptr noundef nonnull @.str.6, ptr noundef %128, i32 noundef %130, i32 noundef %142, i32 noundef %115) #8
  br label %143

143:                                              ; preds = %141, %118, %114
  %144 = tail call i32 @nvkm_devinit_mmio(ptr noundef %7, i32 noundef %115) #7
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_devinit_mmio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @init_io_flag_condition_met(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = tail call fastcc zeroext i16 @init_table_(ptr noundef %0, i16 noundef zeroext 10, ptr noundef nonnull @.str.14)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = zext i8 %1 to i32
  %13 = mul nuw nsw i32 %12, 9
  %14 = add nuw nsw i32 %13, %11
  %15 = tail call zeroext i16 @nvbios_rd16(ptr noundef %7, i32 noundef %14) #7
  %16 = add nuw nsw i32 %14, 2
  %17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %16) #7
  %18 = add nuw nsw i32 %14, 3
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %18) #7
  %20 = add nuw nsw i32 %14, 4
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %20) #7
  %22 = add nuw nsw i32 %14, 5
  %23 = tail call zeroext i16 @nvbios_rd16(ptr noundef %7, i32 noundef %22) #7
  %24 = add nuw nsw i32 %14, 7
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %24) #7
  %26 = add nuw nsw i32 %14, 8
  %27 = tail call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %26) #7
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = and i8 %29, 5
  %32 = icmp eq i8 %31, 5
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %10
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #7
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %40, i32 noundef %38, i16 noundef zeroext %15, i8 noundef zeroext %17) #7
  br label %42

42:                                               ; preds = %34, %10
  %43 = phi i8 [ %41, %34 ], [ 0, %10 ]
  %44 = and i8 %43, %19
  %45 = zext i8 %44 to i32
  %46 = zext i8 %21 to i32
  %47 = lshr i32 %45, %46
  %48 = zext i16 %23 to i32
  %49 = add nuw nsw i32 %47, %48
  %50 = tail call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %49) #7
  %51 = and i8 %50, %25
  %52 = icmp eq i8 %51, %27
  br label %53

53:                                               ; preds = %42, %2
  %54 = phi i1 [ %52, %42 ], [ false, %2 ]
  ret i1 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @init_table_(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.bit_entry, align 2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, i8 0, i32 6, i1 false) #7, !annotation !8
  %10 = call i32 @bit_entry(ptr noundef %9, i8 noundef zeroext 73, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bit_entry, ptr %4, i32 0, i32 2
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr inbounds %struct.bit_entry, ptr %4, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %14 to i32
  br label %38

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.nvkm_bios, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = add i32 %20, 5
  %24 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %23) #7
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = load i32, ptr %19, align 4
  %28 = add i32 %27, 6
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %28) #7
  %30 = zext i8 %29 to i16
  %31 = or i16 %26, %30
  %32 = icmp ugt i16 %31, 1295
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, ptr %19, align 4
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, 75
  br label %38

37:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #7
  br label %101

38:                                               ; preds = %33, %12
  %39 = phi i32 [ %17, %12 ], [ 14, %33 ]
  %40 = phi i16 [ %16, %12 ], [ %36, %33 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #7
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %101, label %42

42:                                               ; preds = %38
  %43 = zext i16 %1 to i32
  %44 = add nuw nsw i32 %43, 2
  %45 = icmp ugt i32 %44, %39
  br i1 %45, label %76, label %46

46:                                               ; preds = %42
  %47 = zext i16 %40 to i32
  %48 = add nuw nsw i32 %47, %43
  %49 = call zeroext i16 @nvbios_rd16(ptr noundef %9, i32 noundef %48) #7
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %126

51:                                               ; preds = %46
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %126

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 4
  %62 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %65 = load i8, ptr %64, align 4
  %66 = icmp eq i8 %65, 1
  %67 = and i8 %65, 5
  %68 = icmp eq i8 %67, 5
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 47
  br label %74

74:                                               ; preds = %70, %56
  %75 = phi i32 [ %73, %70 ], [ 32, %56 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.15, ptr noundef %61, i32 noundef %63, i32 noundef %75, ptr noundef %2) #8
  br label %126

76:                                               ; preds = %42
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp ugt i32 %79, 1
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 4
  %87 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 1
  %92 = and i8 %90, 5
  %93 = icmp eq i8 %92, 5
  %94 = or i1 %91, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, 47
  br label %99

99:                                               ; preds = %95, %81
  %100 = phi i32 [ %98, %95 ], [ 32, %81 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.16, ptr noundef %86, i32 noundef %88, i32 noundef %100, ptr noundef %2) #8
  br label %126

101:                                              ; preds = %38, %37
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.nvkm_subdev, ptr %102, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %104, 1
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.nvkm_subdev, ptr %102, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvkm_subdev, ptr %102, i32 0, i32 4
  %112 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %115 = load i8, ptr %114, align 4
  %116 = icmp eq i8 %115, 1
  %117 = and i8 %115, 5
  %118 = icmp eq i8 %117, 5
  %119 = or i1 %116, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %106
  %121 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 47
  br label %124

124:                                              ; preds = %120, %106
  %125 = phi i32 [ %123, %120 ], [ 32, %106 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.17, ptr noundef %111, i32 noundef %113, i32 noundef %125) #8
  br label %126

126:                                              ; preds = %124, %101, %99, %76, %74, %51, %46
  %127 = phi i16 [ %49, %46 ], [ 0, %74 ], [ 0, %51 ], [ 0, %99 ], [ 0, %76 ], [ 0, %124 ], [ 0, %101 ]
  ret i16 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgai(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dpout_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @init_rdauxr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 1
  %12 = and i8 %10, 5
  %13 = icmp eq i8 %12, 5
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 4
  %26 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.30, ptr noundef %25, i32 noundef %27, i32 noundef %30) #8
  br label %31

31:                                               ; preds = %20, %15, %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  br label %90

32:                                               ; preds = %2
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 26
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dcb_output, ptr %6, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = tail call ptr @nvkm_i2c_aux_find(ptr noundef %37, i32 noundef %40) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %90, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 1
  %47 = and i8 %45, 5
  %48 = icmp eq i8 %47, 5
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 1, ptr %3, align 1
  %51 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef nonnull %41) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %65

54:                                               ; preds = %50
  %55 = call i32 @nvkm_i2c_aux_xfer(ptr noundef nonnull %41, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %56 = icmp eq i32 %55, 0
  %57 = load i8, ptr %3, align 1
  %58 = icmp ne i8 %57, 1
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %63, label %60, !prof !14

60:                                               ; preds = %54
  call void @nvkm_i2c_aux_release(ptr noundef nonnull %41) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %56, label %61, label %65

61:                                               ; preds = %60
  %62 = load i8, ptr %4, align 1
  br label %90

63:                                               ; preds = %54
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  call void @nvkm_i2c_aux_release(ptr noundef nonnull %41) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %64 = load i8, ptr %4, align 1
  br label %90

65:                                               ; preds = %60, %53
  %66 = phi i32 [ %51, %53 ], [ %55, %60 ]
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 4
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 4
  %77 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = load i8, ptr %44, align 4
  %80 = icmp eq i8 %79, 1
  %81 = and i8 %79, 5
  %82 = icmp eq i8 %81, 5
  %83 = or i1 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 47
  br label %88

88:                                               ; preds = %84, %71
  %89 = phi i32 [ %87, %84 ], [ 32, %71 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.29, ptr noundef %76, i32 noundef %78, i32 noundef %89, i32 noundef %66) #8
  br label %90

90:                                               ; preds = %88, %65, %63, %61, %43, %32, %31
  %91 = phi i8 [ %64, %63 ], [ %62, %61 ], [ 0, %88 ], [ 0, %31 ], [ 0, %43 ], [ 0, %32 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i8 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_connEp(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_aux_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_rdi2cr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  switch i8 %1, label %22 [
    i8 -1, label %13
    i8 -128, label %26
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dcb_output, ptr %15, i32 0, i32 14
  %19 = load i8, ptr %18, align 4, !range !13
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 -1, i32 -2
  br label %26

22:                                               ; preds = %4
  %23 = zext i8 %1 to i32
  %24 = icmp eq i8 %1, -127
  %25 = select i1 %24, i32 -2, i32 %23
  br label %26

26:                                               ; preds = %22, %17, %13, %4
  %27 = phi i32 [ -1, %13 ], [ %25, %22 ], [ %21, %17 ], [ -1, %4 ]
  %28 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %12, i32 noundef %27) #7
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %28, i32 0, i32 5
  %31 = icmp eq ptr %30, null
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %54, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 1
  %37 = and i8 %35, 5
  %38 = icmp eq i8 %37, 5
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %3, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  %41 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %41, i8 0, i32 16, i1 false) #7, !annotation !8
  %42 = zext i8 %2 to i16
  store i16 %42, ptr %7, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %41, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %48, align 4
  %49 = call i32 @i2c_transfer(ptr noundef nonnull %30, ptr noundef nonnull %7, i32 noundef 2) #7
  %50 = icmp eq i32 %49, 2
  %51 = load i8, ptr %6, align 1
  %52 = zext i8 %51 to i32
  %53 = select i1 %50, i32 %52, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %54

54:                                               ; preds = %40, %33, %26
  %55 = phi i32 [ %53, %40 ], [ -19, %33 ], [ -19, %26 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_tmds_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [13 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %3, i8 0, i32 48, i1 false)
  %4 = getelementptr inbounds [13 x i32], ptr %3, i32 0, i32 2
  store i32 8, ptr %4, align 4
  %5 = getelementptr inbounds [13 x i32], ptr %3, i32 0, i32 4
  store i32 8192, ptr %5, align 4
  %6 = getelementptr inbounds [13 x i32], ptr %3, i32 0, i32 8
  store i32 8200, ptr %6, align 4
  %7 = getelementptr inbounds [13 x i32], ptr %3, i32 0, i32 12
  store i32 8192, ptr %7, align 4
  %8 = zext i8 %1 to i32
  %9 = icmp slt i8 %1, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 9
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr [13 x i32], ptr %3, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i8 %1, -127
  %21 = xor i32 %19, 8
  %22 = select i1 %20, i32 %21, i32 %19
  %23 = add i32 %22, 6817968
  br label %77

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = and i8 %26, 5
  %29 = icmp eq i8 %28, 5
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %77, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 4
  %42 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.48, ptr noundef %41, i32 noundef %43, i32 noundef %46) #8
  br label %77

47:                                               ; preds = %2
  %48 = icmp ult i8 %1, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = getelementptr [4 x i32], ptr @__const.init_tmds_reg.pramdac_table, i32 0, i32 %8
  %51 = load i32, ptr %50, align 4
  br label %77

52:                                               ; preds = %47
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 4
  %63 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = icmp eq i8 %66, 1
  %68 = and i8 %66, 5
  %69 = icmp eq i8 %68, 5
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 47
  br label %75

75:                                               ; preds = %71, %57
  %76 = phi i32 [ %74, %71 ], [ 32, %57 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.49, ptr noundef %62, i32 noundef %64, i32 noundef %76, i32 noundef %8) #8
  br label %77

77:                                               ; preds = %75, %52, %49, %36, %31, %24, %14
  %78 = phi i32 [ %23, %14 ], [ %51, %49 ], [ 0, %52 ], [ 0, %75 ], [ 0, %31 ], [ 0, %36 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #7
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @init_condition_met(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = tail call fastcc zeroext i16 @init_table_(ptr noundef %0, i16 noundef zeroext 6, ptr noundef nonnull @.str.58)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = zext i8 %1 to i32
  %13 = mul nuw nsw i32 %12, 12
  %14 = add nuw nsw i32 %13, %11
  %15 = tail call i32 @nvbios_rd32(ptr noundef %7, i32 noundef %14) #7
  %16 = add nuw nsw i32 %14, 4
  %17 = tail call i32 @nvbios_rd32(ptr noundef %7, i32 noundef %16) #7
  %18 = add nuw nsw i32 %14, 8
  %19 = tail call i32 @nvbios_rd32(ptr noundef %7, i32 noundef %18) #7
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %45

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  %30 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 1
  %35 = and i8 %33, 5
  %36 = icmp eq i8 %35, 5
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 47
  br label %42

42:                                               ; preds = %38, %24
  %43 = phi i32 [ %41, %38 ], [ 32, %24 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.59, ptr noundef %29, i32 noundef %31, i32 noundef %43, i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %19) #8
  %44 = load ptr, ptr %0, align 4
  br label %45

45:                                               ; preds = %42, %10
  %46 = phi ptr [ %44, %42 ], [ %20, %10 ]
  %47 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call fastcc i32 @init_nvreg(ptr noundef %0, i32 noundef %15) #7
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 1
  %55 = and i8 %53, 5
  %56 = icmp eq i8 %55, 5
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %49
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %63

63:                                               ; preds = %58, %51, %45
  %64 = phi i32 [ %62, %58 ], [ 0, %51 ], [ 0, %45 ]
  %65 = and i32 %64, %17
  %66 = icmp eq i32 %65, %19
  br label %67

67:                                               ; preds = %63, %2
  %68 = phi i1 [ %66, %63 ], [ false, %2 ]
  ret i1 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_devinit_meminit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @init_configure_mem_clk(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %1
  %11 = add i32 %8, 5
  %12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %11) #7
  %13 = load i32, ptr %7, align 4
  %14 = add i32 %13, 6
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %6, i32 noundef %14) #7
  %16 = icmp ugt i8 %12, 2
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %18, 24
  %20 = tail call zeroext i16 @nvbios_rd16(ptr noundef %6, i32 noundef %19) #7
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 1
  %26 = and i8 %24, 5
  %27 = icmp eq i8 %26, 5
  %28 = or i1 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0) #7
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i8 @nvkm_rdvgai(ptr noundef %35, i32 noundef %33, i16 noundef zeroext 980, i8 noundef zeroext 60) #7
  %37 = lshr i8 %36, 4
  br label %38

38:                                               ; preds = %29, %22
  %39 = phi i8 [ %37, %29 ], [ 0, %22 ]
  %40 = zext i8 %39 to i16
  %41 = mul nuw nsw i16 %40, 66
  %42 = add i16 %41, %20
  br label %43

43:                                               ; preds = %38, %17, %10, %1
  %44 = phi i16 [ %42, %38 ], [ 0, %17 ], [ 0, %10 ], [ 0, %1 ]
  ret i16 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdport(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrport(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpio_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_wrauxr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %2, ptr %5, align 1
  %6 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  %13 = and i8 %11, 5
  %14 = icmp eq i8 %13, 5
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %82

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 4
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.30, ptr noundef %26, i32 noundef %28, i32 noundef %31) #8
  br label %82

32:                                               ; preds = %3
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 26
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = tail call ptr @nvkm_i2c_aux_find(ptr noundef %37, i32 noundef %40) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %82, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 6
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 1
  %47 = and i8 %45, 5
  %48 = icmp eq i8 %47, 5
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  %51 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef nonnull %41) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %57

54:                                               ; preds = %50
  %55 = call i32 @nvkm_i2c_aux_xfer(ptr noundef nonnull %41, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call void @nvkm_i2c_aux_release(ptr noundef nonnull %41) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %82, label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ %51, %53 ], [ %55, %54 ]
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 4
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 4
  %69 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = load i8, ptr %44, align 4
  %72 = icmp eq i8 %71, 1
  %73 = and i8 %71, 5
  %74 = icmp eq i8 %73, 5
  %75 = or i1 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.nvbios_init, ptr %0, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 47
  br label %80

80:                                               ; preds = %76, %63
  %81 = phi i32 [ %79, %76 ], [ 32, %63 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.116, ptr noundef %68, i32 noundef %70, i32 noundef %81, i32 noundef %58) #8
  br label %82

82:                                               ; preds = %80, %57, %54, %43, %32, %21, %16, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_parse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2151533631}
!10 = !{i64 3992538}
!11 = !{i64 3992956}
!12 = !{i64 2151532409}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 1, i32 2000}
