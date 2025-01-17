.class public Lcom/letv/leui/widget/LeTextClock;
.super Landroid/widget/TextClock;
.source "LeTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final TENTH_PADDING_TYPE_END:I = 0x2

.field public static final TENTH_PADDING_TYPE_NONE:I = 0x0

.field public static final TENTH_PADDING_TYPE_START:I = 0x1


# instance fields
.field private mPaddingEndNormal:I

.field private mPaddingEndTenth:I

.field private mPaddingStartNormal:I

.field private mPaddingStartTenth:I

.field private mTenthPaddingType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    return-void
.end method


# virtual methods
.method public setPaddingEndNormal(I)V
    .locals 0
    .param p1, "paddingEndNormal"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingEndNormal:I

    return-void
.end method

.method public setPaddingEndTenth(I)V
    .locals 0
    .param p1, "paddingEndTenth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingEndTenth:I

    return-void
.end method

.method public setPaddingStartNormal(I)V
    .locals 0
    .param p1, "paddingStartNormal"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingStartNormal:I

    return-void
.end method

.method public setPaddingStartTenth(I)V
    .locals 0
    .param p1, "paddingStartTenth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingStartTenth:I

    return-void
.end method

.method public setTenthPaddingType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "minute":I
    iget v4, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextClock;->is24HourModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "hour":I
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingStartTenth:I

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .end local v1    # "hour":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .restart local v3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .restart local v1    # "hour":I
    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingStartNormal:I

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .end local v1    # "hour":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget v4, p0, Lcom/letv/leui/widget/LeTextClock;->mTenthPaddingType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .restart local v3    # "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingEndTenth:I

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LeTextClock;->mPaddingEndNormal:I

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1
.end method
