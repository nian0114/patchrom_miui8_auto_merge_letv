.class Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridTemp"
.end annotation


# instance fields
.field box_border:Lcom/letv/leui/widget/LeCheckBox;

.field divideline:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field layout:Landroid/widget/LinearLayout;

.field leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field tailImg:Landroid/widget/TextView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->this$1:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;Lcom/letv/leui/widget/LeBottomSheet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
    .param p2, "x1"    # Lcom/letv/leui/widget/LeBottomSheet$1;

    .prologue
    .line 1394
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;-><init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)V

    return-void
.end method
