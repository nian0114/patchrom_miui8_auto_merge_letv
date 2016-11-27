.class Lcom/letv/leui/util/LinkSpec;
.super Ljava/lang/Object;
.source "LeLinkify.java"


# instance fields
.field color:I

.field end:I

.field start:I

.field text:Ljava/lang/String;

.field type:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/util/LinkSpec;->color:I

    return-void
.end method
