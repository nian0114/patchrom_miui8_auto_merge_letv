.class public Lcom/letv/leui/text/LeTextPaint;
.super Landroid/text/TextPaint;
.source "LeTextPaint.java"


# instance fields
.field public linkSelectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 39
    return-void
.end method
