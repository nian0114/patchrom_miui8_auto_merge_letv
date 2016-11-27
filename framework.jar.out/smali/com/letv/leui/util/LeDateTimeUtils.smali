.class public Lcom/letv/leui/util/LeDateTimeUtils;
.super Ljava/lang/Object;
.source "LeDateTimeUtils.java"


# static fields
.field public static final FORMAT_TYPE_DETAIL:I = 0x2

.field public static final FORMAT_TYPE_GROUP:I = 0x0

.field public static final FORMAT_TYPE_LIST:I = 0x1

.field private static FormatResultLast:Ljava/lang/String;

.field private static FormatTypeLast:I

.field private static NowMillisLast:J

.field private static NowTimeLast:Landroid/text/format/Time;

.field private static ThenTimeLast:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/letv/leui/util/LeDateTimeUtils;->FormatTypeLast:I

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "type"    # I

    .prologue
    .line 76
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 77
    .local v18, "then":Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 78
    const/4 v12, 0x0

    .line 79
    .local v12, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 80
    .local v13, "nowmillis":Ljava/lang/Long;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 81
    .local v4, "is24":Z
    sget v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatTypeLast:I

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v16, 0x1

    .line 82
    .local v16, "sameType":Z
    :goto_0
    sput p3, Lcom/letv/leui/util/LeDateTimeUtils;->FormatTypeLast:I

    .line 84
    const/4 v15, 0x0

    .line 85
    .local v15, "sameNowDay":Z
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v20, :cond_2

    .line 86
    const/4 v15, 0x0

    .line 95
    :goto_1
    if-nez v15, :cond_4

    .line 96
    new-instance v12, Landroid/text/format/Time;

    .end local v12    # "now":Landroid/text/format/Time;
    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 97
    .restart local v12    # "now":Landroid/text/format/Time;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 99
    sput-object v12, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 100
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3c

    mul-int/lit8 v22, v22, 0x3c

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x3c

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    add-int v22, v22, v23

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v23, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    sput-wide v20, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    .line 105
    :goto_2
    const/16 v17, 0x0

    .line 106
    .local v17, "sameWhenDay":Z
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v20, :cond_0

    .line 107
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v17, 0x1

    .line 110
    :cond_0
    :goto_3
    sput-object v18, Lcom/letv/leui/util/LeDateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 111
    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->weekDay:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .line 112
    .local v19, "weekStart":I
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    iget v0, v12, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    const/4 v7, 0x1

    .line 113
    .local v7, "isThisMonth":Z
    :goto_4
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    const/4 v9, 0x1

    .line 114
    .local v9, "isThisYear":Z
    :goto_5
    if-eqz v9, :cond_8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    .line 115
    .local v10, "isToday":Z
    :goto_6
    if-eqz v9, :cond_9

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/4 v11, 0x1

    .line 116
    .local v11, "isYesterday":Z
    :goto_7
    if-eqz v9, :cond_a

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    const/4 v8, 0x1

    .line 117
    .local v8, "isThisWeek":Z
    :goto_8
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x64

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    const/4 v6, 0x1

    .line 118
    .local v6, "isThisCentury":Z
    :goto_9
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x64

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    const/4 v5, 0x1

    .line 119
    .local v5, "isCenturyAgo":Z
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 120
    .local v14, "resources":Landroid/content/res/Resources;
    packed-switch p3, :pswitch_data_0

    .line 263
    const/16 v20, 0x0

    :goto_b
    return-object v20

    .line 81
    .end local v5    # "isCenturyAgo":Z
    .end local v6    # "isThisCentury":Z
    .end local v7    # "isThisMonth":Z
    .end local v8    # "isThisWeek":Z
    .end local v9    # "isThisYear":Z
    .end local v10    # "isToday":Z
    .end local v11    # "isYesterday":Z
    .end local v14    # "resources":Landroid/content/res/Resources;
    .end local v15    # "sameNowDay":Z
    .end local v16    # "sameType":Z
    .end local v17    # "sameWhenDay":Z
    .end local v19    # "weekStart":I
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 89
    .restart local v15    # "sameNowDay":Z
    .restart local v16    # "sameType":Z
    :cond_2
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-wide v22, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    cmp-long v20, v20, v22

    if-ltz v20, :cond_3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-wide v22, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    const-wide/32 v24, 0x5265c00

    add-long v22, v22, v24

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 90
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 92
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 102
    :cond_4
    sget-object v12, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 107
    .restart local v17    # "sameWhenDay":Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 112
    .restart local v19    # "weekStart":I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 113
    .restart local v7    # "isThisMonth":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 114
    .restart local v9    # "isThisYear":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 115
    .restart local v10    # "isToday":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 116
    .restart local v11    # "isYesterday":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_8

    .line 117
    .restart local v8    # "isThisWeek":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_9

    .line 118
    .restart local v6    # "isThisCentury":Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_a

    .line 122
    .restart local v5    # "isCenturyAgo":Z
    .restart local v14    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    if-eqz v10, :cond_d

    .line 123
    const v20, 0x10405f7

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_b

    .line 124
    :cond_d
    if-eqz v11, :cond_e

    .line 125
    const v20, 0x10405f8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_b

    .line 126
    :cond_e
    if-eqz v8, :cond_10

    .line 127
    if-eqz v17, :cond_f

    if-eqz v16, :cond_f

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 128
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_b

    .line 130
    :cond_f
    const v20, 0x10405f9

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 131
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 132
    :cond_10
    if-eqz v7, :cond_12

    .line 134
    if-eqz v17, :cond_11

    if-eqz v16, :cond_11

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 135
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 137
    :cond_11
    const v20, 0x10405fa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 138
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 139
    :cond_12
    if-eqz v9, :cond_14

    .line 141
    if-eqz v17, :cond_13

    if-eqz v16, :cond_13

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_13

    .line 142
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 144
    :cond_13
    const v20, 0x10405fb

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 145
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 146
    :cond_14
    if-eqz v6, :cond_16

    .line 148
    if-eqz v17, :cond_15

    if-eqz v16, :cond_15

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    .line 149
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 151
    :cond_15
    const v20, 0x10405fc

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 152
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 153
    :cond_16
    if-eqz v5, :cond_18

    .line 155
    if-eqz v17, :cond_17

    if-eqz v16, :cond_17

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_17

    .line 156
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 158
    :cond_17
    const v20, 0x10405fd

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 159
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 161
    :cond_18
    const v20, 0x10405fe

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 162
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 166
    :pswitch_1
    if-eqz v10, :cond_1a

    .line 167
    if-eqz v4, :cond_19

    .line 168
    const v20, 0x10405ff

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 170
    :cond_19
    const v20, 0x1040600

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 172
    :cond_1a
    if-eqz v11, :cond_1c

    .line 174
    if-eqz v17, :cond_1b

    if-eqz v16, :cond_1b

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1b

    .line 175
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 177
    :cond_1b
    const v20, 0x1040601

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 178
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 179
    :cond_1c
    if-eqz v8, :cond_1e

    .line 181
    if-eqz v17, :cond_1d

    if-eqz v16, :cond_1d

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1d

    .line 182
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 184
    :cond_1d
    const v20, 0x1040602

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 185
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 186
    :cond_1e
    if-eqz v9, :cond_20

    .line 188
    if-eqz v17, :cond_1f

    if-eqz v16, :cond_1f

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1f

    .line 189
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 191
    :cond_1f
    const v20, 0x1040603

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 192
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 193
    :cond_20
    if-eqz v6, :cond_22

    .line 195
    if-eqz v17, :cond_21

    if-eqz v16, :cond_21

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_21

    .line 196
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 198
    :cond_21
    const v20, 0x1040604

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 199
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 200
    :cond_22
    if-eqz v5, :cond_24

    .line 202
    if-eqz v17, :cond_23

    if-eqz v16, :cond_23

    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_23

    .line 203
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 205
    :cond_23
    const v20, 0x1040605

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 206
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 208
    :cond_24
    const v20, 0x1040606

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 209
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 213
    :pswitch_2
    if-eqz v10, :cond_26

    .line 214
    if-eqz v4, :cond_25

    .line 215
    const v20, 0x1040607

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 217
    :cond_25
    const v20, 0x1040608

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 219
    :cond_26
    if-eqz v11, :cond_28

    .line 220
    if-eqz v4, :cond_27

    .line 221
    const v20, 0x1040609

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 223
    :cond_27
    const v20, 0x104060a

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 225
    :cond_28
    if-eqz v8, :cond_2a

    .line 226
    if-eqz v4, :cond_29

    .line 227
    const v20, 0x104060b

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 231
    :goto_c
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 229
    :cond_29
    const v20, 0x104060c

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_c

    .line 232
    :cond_2a
    if-eqz v9, :cond_2c

    .line 233
    if-eqz v4, :cond_2b

    .line 234
    const v20, 0x104060d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 238
    :goto_d
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 236
    :cond_2b
    const v20, 0x104060e

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_d

    .line 239
    :cond_2c
    if-eqz v6, :cond_2e

    .line 240
    if-eqz v4, :cond_2d

    .line 241
    const v20, 0x104060f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 245
    :goto_e
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 243
    :cond_2d
    const v20, 0x1040610

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_e

    .line 246
    :cond_2e
    if-eqz v5, :cond_30

    .line 247
    if-eqz v4, :cond_2f

    .line 248
    const v20, 0x1040611

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 252
    :goto_f
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 250
    :cond_2f
    const v20, 0x1040612

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_f

    .line 254
    :cond_30
    if-eqz v4, :cond_31

    .line 255
    const v20, 0x1040613

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 259
    :goto_10
    sget-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_b

    .line 257
    :cond_31
    const v20, 0x1040614

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/letv/leui/util/LeDateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_10

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static formatTimeStampStringToArray(Landroid/content/Context;JZZ)[Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "isDateSimple"    # Z
    .param p4, "isTimeSimple"    # Z

    .prologue
    .line 277
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 278
    .local v11, "then":Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 279
    const/4 v7, 0x0

    .line 280
    .local v7, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 281
    .local v8, "nowmillis":Ljava/lang/Long;
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    .line 282
    .local v2, "dateAndTimeArr":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 284
    .local v3, "is24":Z
    const/4 v10, 0x0

    .line 285
    .local v10, "sameNowDay":Z
    sget-object v12, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v12, :cond_0

    .line 286
    const/4 v10, 0x0

    .line 295
    :goto_0
    if-nez v10, :cond_2

    .line 296
    new-instance v7, Landroid/text/format/Time;

    .end local v7    # "now":Landroid/text/format/Time;
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 297
    .restart local v7    # "now":Landroid/text/format/Time;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 299
    sput-object v7, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 300
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget v14, v7, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    iget v15, v7, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    iget v15, v7, Landroid/text/format/Time;->second:I

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    sput-wide v12, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    .line 305
    :goto_1
    sput-object v11, Lcom/letv/leui/util/LeDateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 307
    iget v12, v7, Landroid/text/format/Time;->year:I

    iget v13, v11, Landroid/text/format/Time;->year:I

    if-ne v12, v13, :cond_3

    iget v12, v11, Landroid/text/format/Time;->yearDay:I

    iget v13, v7, Landroid/text/format/Time;->yearDay:I

    if-gt v12, v13, :cond_3

    const/4 v4, 0x1

    .line 308
    .local v4, "isThisYear":Z
    :goto_2
    if-eqz v4, :cond_4

    iget v12, v11, Landroid/text/format/Time;->yearDay:I

    iget v13, v7, Landroid/text/format/Time;->yearDay:I

    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    .line 309
    .local v5, "isToday":Z
    :goto_3
    if-eqz v4, :cond_5

    iget v12, v11, Landroid/text/format/Time;->yearDay:I

    iget v13, v7, Landroid/text/format/Time;->yearDay:I

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_5

    const/4 v6, 0x1

    .line 311
    .local v6, "isYesterday":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 313
    .local v9, "resources":Landroid/content/res/Resources;
    if-eqz p4, :cond_7

    .line 314
    if-eqz v3, :cond_6

    .line 315
    const/4 v12, 0x1

    const v13, 0x1040617

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    .line 326
    :goto_5
    if-eqz v5, :cond_9

    .line 327
    const/4 v12, 0x0

    const v13, 0x104061b

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    .line 337
    :goto_6
    return-object v2

    .line 289
    .end local v4    # "isThisYear":Z
    .end local v5    # "isToday":Z
    .end local v6    # "isYesterday":Z
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-wide v14, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-wide v14, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 290
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 292
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 302
    :cond_2
    sget-object v7, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto :goto_1

    .line 307
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 308
    .restart local v4    # "isThisYear":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 309
    .restart local v5    # "isToday":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 317
    .restart local v6    # "isYesterday":Z
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :cond_6
    const/4 v12, 0x1

    const v13, 0x1040618

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_5

    .line 320
    :cond_7
    if-eqz v3, :cond_8

    .line 321
    const/4 v12, 0x1

    const v13, 0x1040619

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_5

    .line 323
    :cond_8
    const/4 v12, 0x1

    const v13, 0x104061a

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_5

    .line 328
    :cond_9
    if-eqz v6, :cond_a

    .line 329
    const/4 v12, 0x0

    const v13, 0x104061c

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_6

    .line 331
    :cond_a
    if-eqz p3, :cond_b

    .line 332
    const/4 v12, 0x0

    const v13, 0x1040615

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_6

    .line 334
    :cond_b
    const/4 v12, 0x0

    const v13, 0x1040616

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto/16 :goto_6
.end method

.method public static getFormaTimeForLetvSports(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 390
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 391
    .local v11, "then":Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 392
    const/4 v7, 0x0

    .line 393
    .local v7, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 394
    .local v8, "nowmillis":Ljava/lang/Long;
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    .line 396
    .local v2, "dateAndTimeArr":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 397
    .local v10, "sameNowDay":Z
    sget-object v12, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v12, :cond_0

    .line 398
    const/4 v10, 0x0

    .line 407
    :goto_0
    if-nez v10, :cond_2

    .line 408
    new-instance v7, Landroid/text/format/Time;

    .end local v7    # "now":Landroid/text/format/Time;
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 409
    .restart local v7    # "now":Landroid/text/format/Time;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 411
    sput-object v7, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 412
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget v14, v7, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    iget v15, v7, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    iget v15, v7, Landroid/text/format/Time;->second:I

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    sput-wide v12, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    .line 417
    :goto_1
    sput-object v11, Lcom/letv/leui/util/LeDateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 419
    iget v12, v7, Landroid/text/format/Time;->year:I

    iget v13, v11, Landroid/text/format/Time;->year:I

    if-ne v12, v13, :cond_3

    const/4 v3, 0x1

    .line 420
    .local v3, "isThisYear":Z
    :goto_2
    if-eqz v3, :cond_4

    iget v12, v11, Landroid/text/format/Time;->yearDay:I

    iget v13, v7, Landroid/text/format/Time;->yearDay:I

    if-ne v12, v13, :cond_4

    const/4 v4, 0x1

    .line 421
    .local v4, "isToday":Z
    :goto_3
    if-eqz v3, :cond_5

    iget v12, v11, Landroid/text/format/Time;->yearDay:I

    iget v13, v7, Landroid/text/format/Time;->yearDay:I

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_5

    const/4 v6, 0x1

    .line 422
    .local v6, "isYesterday":Z
    :goto_4
    if-eqz v3, :cond_6

    iget v12, v11, Landroid/text/format/Time;->yearDay:I

    iget v13, v7, Landroid/text/format/Time;->yearDay:I

    add-int/lit8 v13, v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v5, 0x1

    .line 424
    .local v5, "isTomorrow":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 426
    .local v9, "resources":Landroid/content/res/Resources;
    const/4 v12, 0x0

    const v13, 0x104061e

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    .line 427
    if-eqz v4, :cond_7

    .line 428
    const/4 v12, 0x1

    const v13, 0x104061b

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    .line 436
    :goto_6
    return-object v2

    .line 401
    .end local v3    # "isThisYear":Z
    .end local v4    # "isToday":Z
    .end local v5    # "isTomorrow":Z
    .end local v6    # "isYesterday":Z
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-wide v14, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-wide v14, Lcom/letv/leui/util/LeDateTimeUtils;->NowMillisLast:J

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 402
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 404
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 414
    :cond_2
    sget-object v7, Lcom/letv/leui/util/LeDateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto :goto_1

    .line 419
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 420
    .restart local v3    # "isThisYear":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 421
    .restart local v4    # "isToday":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 422
    .restart local v6    # "isYesterday":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 429
    .restart local v5    # "isTomorrow":Z
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :cond_7
    if-eqz v6, :cond_8

    .line 430
    const/4 v12, 0x1

    const v13, 0x104061c

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_6

    .line 431
    :cond_8
    if-eqz v5, :cond_9

    .line 432
    const/4 v12, 0x1

    const v13, 0x104061d

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_6

    .line 434
    :cond_9
    const/4 v12, 0x1

    const v13, 0x104061f

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_6
.end method

.method public static getFormatTimeForCalendar(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 448
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/String;

    .line 449
    .local v0, "dateAndTimeArr":[Ljava/lang/String;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 450
    .local v3, "t":Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 452
    iget v4, v3, Landroid/text/format/Time;->year:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 453
    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "leui_buddhist_calendar"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 455
    .local v1, "isBuddhist":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 456
    .local v2, "resources":Landroid/content/res/Resources;
    if-ne v1, v7, :cond_0

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x104073c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v5, 0x21f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 461
    .end local v1    # "isBuddhist":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    iget v4, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 462
    const/4 v4, 0x2

    iget v5, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 463
    const/4 v4, 0x3

    iget v5, v3, Landroid/text/format/Time;->hour:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 464
    const/4 v4, 0x4

    iget v5, v3, Landroid/text/format/Time;->minute:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 465
    const/4 v4, 0x5

    iget v5, v3, Landroid/text/format/Time;->second:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 466
    return-object v0
.end method

.method public static getPassTimeDuration(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 349
    cmp-long v19, p1, p3

    if-lez v19, :cond_1

    .line 350
    const-string v18, "Input parameters are invalid!"

    .line 385
    :cond_0
    :goto_0
    return-object v18

    .line 353
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v15, "timeDurationStr":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 356
    .local v11, "resources":Landroid/content/res/Resources;
    sub-long v6, p3, p1

    .line 357
    .local v6, "diff":J
    const-wide/32 v20, 0x5265c00

    div-long v4, v6, v20

    .line 358
    .local v4, "days":J
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    sub-long v20, v6, v20

    const-wide/32 v22, 0x36ee80

    div-long v8, v20, v22

    .line 359
    .local v8, "hours":J
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    sub-long v20, v6, v20

    const-wide/32 v22, 0x36ee80

    mul-long v22, v22, v8

    sub-long v20, v20, v22

    const-wide/32 v22, 0xea60

    div-long v12, v20, v22

    .line 360
    .local v12, "minutes":J
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    sub-long v20, v6, v20

    const-wide/32 v22, 0x36ee80

    mul-long v22, v22, v8

    sub-long v20, v20, v22

    const-wide/32 v22, 0xea60

    mul-long v22, v22, v12

    sub-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v16, v20, v22

    .line 362
    .local v16, "seconds":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "dayStr":Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "hourStr":Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 365
    .local v10, "minuteStr":Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 367
    .local v14, "secondStr":Ljava/lang/String;
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-lez v19, :cond_2

    .line 368
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x1140012

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_3

    .line 371
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x1140013

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-lez v19, :cond_4

    .line 374
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x1140014

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_5

    .line 377
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x1140015

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 381
    .local v18, "timeDurationString":Ljava/lang/String;
    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 382
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 385
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_0

    const-string v18, ""

    goto/16 :goto_0
.end method

.method public static getYearForCalendar(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 476
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 477
    .local v2, "t":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 478
    iget v4, v2, Landroid/text/format/Time;->year:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "year":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "leui_buddhist_calendar"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 481
    .local v0, "isBuddhist":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 482
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x104073c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v5, 0x21f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    .end local v0    # "isBuddhist":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-object v3
.end method
