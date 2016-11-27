.class public Lcom/letv/leui/text/LeTextPaint;
.super Landroid/text/TextPaint;
.source "LeTextPaint.java"


# instance fields
.field public linkSelectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method
