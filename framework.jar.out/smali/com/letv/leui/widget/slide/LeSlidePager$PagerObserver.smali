.class Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;Lcom/letv/leui/widget/slide/LeSlidePager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;
    .param p2, "x1"    # Lcom/letv/leui/widget/slide/LeSlidePager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->dataSetChanged()V

    return-void
.end method
