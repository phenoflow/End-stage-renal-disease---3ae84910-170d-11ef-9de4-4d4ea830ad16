# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"SP08J00","system":"readv2"},{"code":"7B00200","system":"readv2"},{"code":"SP08R00","system":"readv2"},{"code":"TB00111","system":"readv2"},{"code":"K0B5.00","system":"readv2"},{"code":"7B00212","system":"readv2"},{"code":"SP08E00","system":"readv2"},{"code":"7B00z00","system":"readv2"},{"code":"SP08300","system":"readv2"},{"code":"7B0F.00","system":"readv2"},{"code":"SP08W00","system":"readv2"},{"code":"7B0Fy00","system":"readv2"},{"code":"SP08F00","system":"readv2"},{"code":"TB00100","system":"readv2"},{"code":"SP08H00","system":"readv2"},{"code":"7B00.00","system":"readv2"},{"code":"SP08V00","system":"readv2"},{"code":"SP08T00","system":"readv2"},{"code":"7B00100","system":"readv2"},{"code":"SP08G00","system":"readv2"},{"code":"Kyu1C00","system":"readv2"},{"code":"7B0Fz00","system":"readv2"},{"code":"SP08N00","system":"readv2"},{"code":"7B00y00","system":"readv2"},{"code":"SP08D00","system":"readv2"},{"code":"N16.5","system":"readv2"},{"code":"Z94.0","system":"readv2"},{"code":"T86.1","system":"readv2"},{"code":"M01.9","system":"readv2"},{"code":"M17.9","system":"readv2"},{"code":"M17.2","system":"readv2"},{"code":"M01.8","system":"readv2"},{"code":"M17.8","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('end-stage-renal-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["end-stage-renal-disease-posttransplantation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["end-stage-renal-disease-posttransplantation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["end-stage-renal-disease-posttransplantation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
