.class public Lcom/letv/leui/text/LeSelection;
.super Ljava/lang/Object;
.source "LeSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/text/LeSelection$1;,
        Lcom/letv/leui/text/LeSelection$URL;
    }
.end annotation


# static fields
.field public static final URL_SPAN:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/leui/text/LeSelection$URL;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/letv/leui/text/LeSelection$URL;-><init>(Lcom/letv/leui/text/LeSelection$1;)V

    sput-object v0, Lcom/letv/leui/text/LeSelection;->URL_SPAN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getURLSpanPos(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Lcom/letv/leui/text/LeSelection;->URL_SPAN:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/letv/leui/text/LeSelection;->removeURLSpanPos(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final removeURLSpanPos(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spannable;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Lcom/letv/leui/text/LeSelection;->URL_SPAN:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;IIZ)V
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .param p3, "isUrl"    # Z

    .prologue
    const/16 v4, 0x222

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "ostart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "oend":I
    if-ne v1, p1, :cond_0

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v2, p1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-eqz p3, :cond_2

    sget-object v2, Lcom/letv/leui/text/LeSelection;->URL_SPAN:Ljava/lang/Object;

    invoke-interface {p0, v2, p1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Lcom/letv/leui/text/LeSelection;->removeURLSpanPos(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
