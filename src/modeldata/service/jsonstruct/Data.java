package modeldata.service.jsonstruct;

import java.util.List;

public class Data {

	private List<ColDataset> cols;
    private List<CDataset> rows;
 
    public void setColsDataset(List<ColDataset> dataset) {
        this.cols = dataset;
    }

    public List<ColDataset> getColsDataset() {
        return cols;
    }

    public void setRowsDataset(List<CDataset> dataset) {
        this.rows = dataset;
    }

    public List<CDataset> getRowsDataset() {
        return rows;
    }
    
}
