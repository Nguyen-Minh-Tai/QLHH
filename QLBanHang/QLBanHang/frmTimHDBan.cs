using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using QLBanHang.Class;
namespace QLBanHang
{
    public partial class frmTimHDBan : Form
    {
        public frmTimHDBan()
        {
            InitializeComponent();
        }
        DataTable tblHDBan;

        private void frmTimHDBan_Load(object sender, EventArgs e)
        {
            ResetValues();
            dgvTimHDBan.DataSource = null;
        }
        private void ResetValues()
        {
            foreach (Control Ctl in this.Controls)
                if (Ctl is TextBox)
                    Ctl.Text = "";
            txtMaHoaDon.Focus();
        }

        private void btnTiemKiem_Click(object sender, EventArgs e)
        {
            string sql;
            if ((txtMaHoaDon.Text == "") && (txtThang.Text == "") && (txtNam.Text == "") &&
               (txtMaNhanVien.Text == "") && (txtTenKhachHang.Text == "") &&
               (txtTongTien.Text == ""))
            {
                MessageBox.Show("Hãy nhập một điều kiện tìm kiếm!!!", "Yêu cầu ...", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            sql = "SELECT * FROM tblHDBan WHERE 1=1";
            if (txtMaHoaDon.Text != "")
                sql = sql + " AND MaHDBan Like N'%" + txtMaHoaDon.Text + "%'";
            if (txtThang.Text != "")
                sql = sql + " AND MONTH(NgayBan) =" + txtThang.Text;
            if (txtNam.Text != "")
                sql = sql + " AND YEAR(NgayBan) =" + txtNam.Text;
            if (txtMaNhanVien.Text != "")
                sql = sql + " AND MaNhanVien Like N'%" + txtMaNhanVien.Text + "%'";
            if (txtTenKhachHang.Text != "")
                sql = sql + " AND MaKhach Like N'%" + txtTenKhachHang.Text + "%'";
            if (txtTongTien.Text != "")
                sql = sql + " AND TongTien <=" + txtTongTien.Text;
            tblHDBan = Functions.GetDataToTable(sql);
            if (tblHDBan.Rows.Count == 0)
            {
                MessageBox.Show("Không có bản ghi thỏa mãn điều kiện!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
                MessageBox.Show("Có " + tblHDBan.Rows.Count + " bản ghi thỏa mãn điều kiện!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            dgvTimHDBan.DataSource = tblHDBan;
            LoadDataGridView();
        }

        private void LoadDataGridView()
        {
            dgvTimHDBan.Columns[0].HeaderText = "Mã HĐB";
            dgvTimHDBan.Columns[1].HeaderText = "Mã nhân viên";
            dgvTimHDBan.Columns[2].HeaderText = "Ngày bán";
            dgvTimHDBan.Columns[3].HeaderText = "Mã khách";
            dgvTimHDBan.Columns[4].HeaderText = "Tổng tiền";
            dgvTimHDBan.Columns[0].Width = 150;
            dgvTimHDBan.Columns[1].Width = 100;
            dgvTimHDBan.Columns[2].Width = 80;
            dgvTimHDBan.Columns[3].Width = 80;
            dgvTimHDBan.Columns[4].Width = 80;
            dgvTimHDBan.AllowUserToAddRows = false;
            dgvTimHDBan.EditMode = DataGridViewEditMode.EditProgrammatically;
        }

        private void btnTimLai_Click(object sender, EventArgs e)
        {
            ResetValues();
            dgvTimHDBan.DataSource = null;
        }

        private void txtTongTien_KeyPress(object sender, KeyPressEventArgs e)
        {
                        if (((e.KeyChar >= '0') && (e.KeyChar <= '9')) || (Convert.ToInt32(e.KeyChar) == 8))
                e.Handled = false;
            else
                e.Handled = true;
        }

        private void btnĐóng_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
