//
//  ListViewController.swift
//  DemoApp
//
//  Created by Yusa Dogru on 25.11.2021.
//

import UIKit

final class ListViewController: UIViewController {

    // MARK: - Views
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(cellWithClass: ItemCell.self)
        tableView.backgroundColor = .clear
        tableView.rowHeight = UITableView.automaticDimension
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: tabBarController?.tabBar.bottomInset ?? 0, right: 0)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    // MARK: - Properties
    private lazy var items: [String] = ["Genesis Meyers", "Mary Oconnor", "Azul Whitehead", "Catherine Matthews", "Catherine Matthews", "Albert Carlson", "Kayden Mccullough", "Armani Doyle", "Tate Erickson", "Yuşa Doğru", "Mary Daniels", "Damarion Mathis", "Reynaldo Huffman", "Jadyn Simon", "Abbigail Maldonado", "Titus Rivera", "Kale Holden", "Eva Park", "Rihanna Francis", "Jordon Mejia", "Genesis Meyers", "Mary Oconnor", "Azul Whitehead", "Catherine Matthews", "Catherine Matthews", "Albert Carlson", "Kayden Mccullough", "Armani Doyle", "Tate Erickson",]

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Messages"
        
        setupUI()
        setupConstraint()
    }

    // MARK: - UI
    private func setupUI() {
        view.backgroundColor = UIColor.background
    }

    private func setupConstraint() {
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

// MARK: - UITableViewDataSource
extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withClass: ItemCell.self, for: indexPath)
        cell.item = (title: items[indexPath.row], index: indexPath.row)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}



// MARK: - ItemCell
final class ItemCell: UITableViewCell {

    // MARK: - Views
    private lazy var labelTitle: UILabel = {
        let label  = UILabel()
        label.textColor = UIColor.defaultTint
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Properties
    var item: (title: String, index: Int)? {
        didSet {
            guard let item = item else { return }
            labelTitle.text = item.title

            if item.index % 2 == 0 {
                contentView.backgroundColor = UIColor.cell_background?.withAlphaComponent(0.6)
            } else {
                contentView.backgroundColor = UIColor.background
            }
        }
    }

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none

        setupUI()
        setupConstraint()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UI
    private func setupUI() {

    }

    private func setupConstraint() {
        contentView.addSubview(labelTitle)

        NSLayoutConstraint.activate([
            labelTitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -14),
            labelTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            labelTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            labelTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 16),
        ])
    }
}


