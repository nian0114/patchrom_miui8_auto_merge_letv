.class public Lcom/letv/leui/widget/ScreenRecordingView;
.super Landroid/view/View;
.source "ScreenRecordingView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;
    }
.end annotation


# static fields
.field public static final RECORD_DB_KEY:Ljava/lang/String; = "record_db_key"

.field public static final RECORD_NAME:Ljava/lang/String; = "record_name;"

.field public static final RECORD_TIME_KEY:Ljava/lang/String; = "record_time_key"


# instance fields
.field activeDotColor:I

.field private activeLinePaint:Landroid/graphics/Paint;

.field bgColor:I

.field private bgLinePaint:Landroid/graphics/Paint;

.field private curPoint:Landroid/graphics/PointF;

.field private height:I

.field private holders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private maxDbNum:I

.field private midY:F

.field private recordTimeMillis:J

.field waveCount:I

.field waveIndex:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ScreenRecordingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/ScreenRecordingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->maxDbNum:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->recordTimeMillis:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->curPoint:Landroid/graphics/PointF;

    iput v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeDotColor:I

    iput v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->waveCount:I

    iput v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->waveIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeDotColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeDotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private drawWaveLine(Landroid/graphics/Canvas;IJ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # I
    .param p3, "curMills"    # J

    .prologue
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .local v11, "saveCount":I
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/ScreenRecordingView;->getAvgDB(J)F

    move-result v8

    .local v8, "avgDb":F
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    iget v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x47000000    # 32768.0f

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    add-float v13, v2, v3

    .local v13, "startYDown":F
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    iget v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x47000000    # 32768.0f

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float v14, v2, v3

    .local v14, "startYUp":F
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr v2, v3

    cmpl-float v2, v13, v2

    if-lez v2, :cond_2

    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v2, v3

    cmpg-float v2, v14, v2

    if-gez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v2, v13, v14

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v9, v2

    .local v9, "count":I
    const/4 v2, 0x1

    if-ge v9, v2, :cond_4

    const/4 v9, 0x1

    :cond_1
    :goto_3
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x2

    div-int/lit8 v3, v9, 0x2

    mul-int/lit8 v3, v3, 0x9

    sub-int v12, v2, v3

    .local v12, "startTempY":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v9, :cond_5

    move/from16 v0, p2

    int-to-float v3, v0

    int-to-float v4, v12

    move/from16 v0, p2

    int-to-float v5, v0

    add-int/lit8 v2, v12, 0x5

    int-to-float v6, v2

    iget-object v7, p0, Lcom/letv/leui/widget/ScreenRecordingView;->activeLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v12    # "startTempY":I
    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    const/high16 v3, 0x40400000    # 3.0f

    add-float v13, v2, v3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    const/high16 v3, 0x40400000    # 3.0f

    sub-float v14, v2, v3

    goto :goto_2

    .restart local v9    # "count":I
    :cond_4
    rem-int/lit8 v2, v9, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .restart local v10    # "i":I
    .restart local v12    # "startTempY":I
    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->waveIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->waveIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method private getTimeMillsByLength(F)I
    .locals 2
    .param p1, "lengthPx"    # F

    .prologue
    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x422c0000    # 43.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getAvgDB(J)F
    .locals 9
    .param p1, "curMills"    # J

    .prologue
    const/4 v2, 0x0

    .local v2, "totalDb":F
    const/4 v1, 0x0

    .local v1, "totalCount":I
    iget-object v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;

    iget-wide v4, v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;->timeMillis:J

    sub-long v4, p1, v4

    const/high16 v3, 0x41100000    # 9.0f

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/ScreenRecordingView;->getTimeMillsByLength(F)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;

    iget-wide v4, v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;->timeMillis:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;

    iget v3, v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;->db:F

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .end local v2    # "totalDb":F
    :goto_1
    return v2

    .restart local v2    # "totalDb":F
    :cond_2
    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/high16 v12, 0x41100000    # 9.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/ScreenRecordingView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->width:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ScreenRecordingView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->height:I

    iget-wide v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->recordTimeMillis:J

    invoke-direct {p0, v12}, Lcom/letv/leui/widget/ScreenRecordingView;->getTimeMillsByLength(F)I

    move-result v3

    int-to-long v4, v3

    div-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/ScreenRecordingView;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->waveCount:I

    iget v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->height:I

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->midY:F

    iget v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-wide v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->recordTimeMillis:J

    invoke-direct {p0, v12}, Lcom/letv/leui/widget/ScreenRecordingView;->getTimeMillsByLength(F)I

    move-result v3

    int-to-long v4, v3

    rem-long/2addr v0, v4

    long-to-float v7, v0

    .local v7, "dotOffsetTime":F
    invoke-direct {p0, v12}, Lcom/letv/leui/widget/ScreenRecordingView;->getTimeMillsByLength(F)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v7, v0

    mul-float v6, v0, v12

    .local v6, "dotOffest":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float v0, v6

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->waveIndex:I

    const/4 v9, 0x0

    .local v9, "times":I
    iget v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->width:I

    add-int/lit8 v8, v0, 0xa

    .local v8, "i":I
    :goto_0
    const/16 v0, -0xa

    if-lt v8, v0, :cond_0

    int-to-float v1, v8

    int-to-float v3, v8

    iget v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->height:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/ScreenRecordingView;->bgLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v8, -0x4

    iget-wide v4, p0, Lcom/letv/leui/widget/ScreenRecordingView;->recordTimeMillis:J

    invoke-direct {p0, v12}, Lcom/letv/leui/widget/ScreenRecordingView;->getTimeMillsByLength(F)I

    move-result v1

    int-to-long v10, v1

    div-long/2addr v4, v10

    int-to-long v10, v9

    sub-long/2addr v4, v10

    invoke-direct {p0, v12}, Lcom/letv/leui/widget/ScreenRecordingView;->getTimeMillsByLength(F)I

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v4, v10

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/letv/leui/widget/ScreenRecordingView;->drawWaveLine(Landroid/graphics/Canvas;IJ)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x9

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .prologue
    return-void
.end method

.method public startRecording()V
    .locals 0

    .prologue
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateRecordUI(JF)V
    .locals 7
    .param p1, "recordTimeMillis"    # J
    .param p3, "db"    # F

    .prologue
    const/4 v6, 0x0

    iput-wide p1, p0, Lcom/letv/leui/widget/ScreenRecordingView;->recordTimeMillis:J

    cmpl-float v2, p3, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    new-instance v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;

    const-wide/16 v4, 0x32

    sub-long v4, p1, v4

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;-><init>(Lcom/letv/leui/widget/ScreenRecordingView;JF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    new-instance v3, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;-><init>(Lcom/letv/leui/widget/ScreenRecordingView;JF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/ScreenRecordingView;->maxDbNum:I

    sub-int v0, v2, v3

    .local v0, "exrtaNum":I
    if-lez v0, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/ScreenRecordingView;->holders:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "exrtaNum":I
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/ScreenRecordingView;->invalidate()V

    return-void
.end method

.method public updateRecordUI(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const-string v1, "record_time_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "recordTimeMillis":J
    const-string v1, "record_db_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .local v0, "db":F
    invoke-virtual {p0, v2, v3, v0}, Lcom/letv/leui/widget/ScreenRecordingView;->updateRecordUI(JF)V

    return-void
.end method
